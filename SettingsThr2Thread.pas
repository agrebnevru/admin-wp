unit SettingsThr2Thread;

interface

uses
  Classes, SysUtils, idHTTP, inifiles, Forms, IdComponent,
  IdTCPConnection, IdTCPClient, IdBaseComponent;

type
  SettingsThr2 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses MainForm, PopupForm;

{ SettingsThr2 }

function Authoriz(url, log, pass: string): Boolean;
var
  post: tstringlist;
  html: string;
  IdHTTP_: TIdHTTP;
begin
  result:= false;
  FormSpamera.MemoStatusEvents.Lines.Add('Работаем с ' + url);
  FormSpamera.Caption:= 'Admin WP - [' + url + ']';
  post:= TStringList.Create;
  IdHTTP_ := TIdHTTP.Create();
  IdHTTP_.AllowCookies:= true;
  IdHTTP_.CookieManager:= FormSpamera.IdCM;
  IdHTTP_.HandleRedirects:= true;
  IdHTTP_.HTTPOptions:= [hoInProcessAuth,hoKeepOrigProtocol,hoForceEncodeParams];
  IdHTTP_.ProxyParams.BasicAuthentication:= false;
  IdHTTP_.ProxyParams.ProxyPort:= 0;
  IdHTTP_.Request.Accept:= 'text/html, */*';
  IdHTTP_.Request.BasicAuthentication:= false;
  IdHTTP_.Request.ContentLength:= -1;
  IdHTTP_.Request.UserAgent:= 'Mozilla/3.0 (programm; WP Admin)';
  try
    // Параметры
    post.Add('log=' + log);
    post.Add('pwd=' + pass);
    post.Add('wp-submit=Log In');
    post.Add('redirect_to=' + url + '/wp-admin/');
    post.Add('testcookie=1');
    // Отправляем данные
    html := IdHTTP_.post(url + '/wp-login.php', post);
    // Результат
    if Pos('action=logout', html) > 0 then
    begin
      FormSpamera.MemoStatusEvents.Lines.Add('Авторизация прошла успешно!');
      result := true;
    end
    else
    begin
      FormSpamera.MemoStatusEvents.Lines.Add('Авторизация отклонена!');
      result := false;
      FormSpamera.EditErrorDomenKoilvio.Text := IntToStr(StrToInt(FormSpamera.EditErrorDomenKoilvio.Text) + 1);
      ErrorAuthoriz := ErrorAuthoriz + 1;
    end;
  except
    post.Free;
    IdHTTP_.Free;
  end;
  FormSpamera.MemoHtmlPage.Text := html;
end;

procedure PostSettings2;
var
  post: tstringlist;
  result: string;
  DataPost1, DataPost2, DataPost3: string;
  IdHTTP_: TIdHTTP;
begin
  FormSpamera.MemoStatusEvents.Lines.Add('Задаем настройки (Discussion).');
  post := tstringlist.Create;
  IdHTTP_ := TIdHTTP.Create();
  IdHTTP_.AllowCookies:= true;
  IdHTTP_.CookieManager:= FormSpamera.IdCM;
  IdHTTP_.HandleRedirects:= true;
  IdHTTP_.HTTPOptions:= [hoInProcessAuth,hoKeepOrigProtocol,hoForceEncodeParams];
  IdHTTP_.ProxyParams.BasicAuthentication:= false;
  IdHTTP_.ProxyParams.ProxyPort:= 0;
  IdHTTP_.Request.Accept:= 'text/html, */*';
  IdHTTP_.Request.BasicAuthentication:= false;
  IdHTTP_.Request.ContentLength:= -1;
  IdHTTP_.Request.UserAgent:= 'Mozilla/3.0 (programm; WP Admin)';
  result := IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/options-permalink.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  try
    // Параметры
    post.Add('_wpnonce=' + DataPost1);
    post.Add('_wp_http_referer=/wp-admin/options-permalink.php');
    if FormSpamera.RadioButton1.Checked then
      post.Add('selection=');
    if FormSpamera.RadioButton2.Checked then
      post.Add('selection=/%year%/%monthnum%/%day%/%postname%/');
    if FormSpamera.RadioButton3.Checked then
      post.Add('selection=/%year%/%monthnum%/%postname%/');
    if FormSpamera.RadioButton4.Checked then
      post.Add('selection=/archives/%post_id%');
    if FormSpamera.RadioButton5.Checked then
      post.Add('selection=custom');
    post.Add('permalink_structure=' + FormSpamera.Edit4.Text);
    post.Add('category_base=' + FormSpamera.Edit5.Text);
    post.Add('tag_base=' + FormSpamera.Edit6.Text);
    // Отправляем данные
    result := IdHTTP_.post(FormSpamera.EditAutoBlogURL.Text +
        '/wp-admin/options-permalink.php', post);
    // Результат
    if Pos('You should update your .htaccess now', result) > 0 then
    begin
      FormSpamera.MemoStatusEvents.Lines.Add('Настройки изменены!');
    end
    else
    begin
      FormSpamera.MemoStatusEvents.Lines.Add('Настройки не изменены!');
      FormSpamera.EditErrorDomenKoilvio.Text := IntToStr(StrToInt(FormSpamera.EditErrorDomenKoilvio.Text) + 1);
      ErrorPOST := ErrorPOST + 1;
    end;
  except
    post.Free;
    IdHTTP_.Free;
  end;
  FormSpamera.MemoHtmlPage.Text := result;
end;

procedure SettingsThr2.Execute;
var
  i: Integer;
begin
  { Place thread code here }
  for i := 1 to StrToInt(FormSpamera.EditDomenovKolvo.Text) do
  begin
    if FormSpamera.CLBDomenNeddList.Checked[i - 1] then
    begin
      DomenTaken := i;
      inifile := tinifile.Create(extractfilepath(application.ExeName) + '/db/site/blog' + IntToStr(i) + '.ini');
      FormSpamera.EditAutoBlogURL.Text := inifile.ReadString('General config', 'Domen', '');
      FormSpamera.EditAutoBlogLogin.Text := inifile.ReadString('General config', 'Login', '');
      FormSpamera.EditAutoBlogPassword.Text := inifile.ReadString('General config', 'Password', '');
      inifile.Free;
      sleep(100);

      if (Length(FormSpamera.EditAutoBlogURL.Text) > 1) AND
        (Length(FormSpamera.EditAutoBlogLogin.Text) > 1) AND
        (Length(FormSpamera.EditAutoBlogPassword.Text) > 1) then
        if Authoriz(FormSpamera.EditAutoBlogURL.Text, FormSpamera.EditAutoBlogLogin.Text, FormSpamera.EditAutoBlogPassword.Text) then
          PostSettings2;
      sleep(Zadergka);
      FormPopup.PanelkaRefresher;
      if Terminated = True then
        break;
    end;
    FormSpamera.Caption:= 'Admin WP';
    FormSpamera.TI.Hint:= 'Admin WP';
    FormSpamera.ButtonStartSettings2Do.Caption:= 'Start / Пуск';
    FormSpamera.ButtonStartSettings2Do.Hint:= 'Нажмите для старта процесса установки настроек(Permalinks).';
    FormSpamera.ButtonStartSettings2Do.Tag:= 0;
  end;
end;

end.
