unit AddLinkThread;

interface

uses
  Classes, SysUtils, IdHTTP, inifiles, Forms, IdComponent,
  IdTCPConnection, IdTCPClient, IdBaseComponent;

type
  AddLinkThr = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses MainForm, PopupForm;

{ AddLink }

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

procedure PostLink(name, link, discription: string);
var
  post: tstringlist;
  result: string;
  DataPost1, DataPost2, DataPost3: string;
  IdHTTP_: TIdHTTP;
begin
  post:= tstringlist.Create;
  IdHTTP_:= TIdHTTP.Create();
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
  result:= IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/link-add.php');
  DataPost1:= Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  DataPost2:= Copy(result, Pos('name="closedpostboxesnonce" value="', result) + Length('name="closedpostboxesnonce" value="'), 10);
  DataPost3:= Copy(result, Pos('name="meta-box-order-nonce" value="', result) + Length('name="meta-box-order-nonce" value="'), 10);
  try
    // Параметры
    post.Add('_wpnonce=' + DataPost1);
    post.Add('_wp_http_referer=/wp-admin/link-add.php');
    post.Add('closedpostboxesnonce=' + DataPost2);
    post.Add('meta-box-order-nonce=' + DataPost3);
    post.Add('link_name=' + name);
    post.Add('link_url=' + link);
    post.Add('link_description=' + discription);
    post.Add('friendship=');
    post.Add('geographical=');
    post.Add('family=');
    post.Add('link_rating=0');
    post.Add('action=add');
    // Отправляем данные
    result := IdHTTP_.post(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/link.php', post);
    // Результат
    if Pos('Link added', result) > 0 then
    begin
      FormSpamera.MemoStatusEvents.Lines.Add('Ссылка добавлена!');
    end
    else
    begin
      FormSpamera.MemoStatusEvents.Lines.Add('Ссылка не добавилась!');
      FormSpamera.EditErrorDomenKoilvio.Text:= IntToStr(StrToInt(FormSpamera.EditErrorDomenKoilvio.Text) + 1);
      ErrorPOST:= ErrorPOST + 1;
    end;
  except
    post.Free;
    IdHTTP_.Free;
  end;
  FormSpamera.MemoHtmlPage.Text := result;
end;

procedure AddLinkThr.Execute;
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
          begin
          PostLink(FormSpamera.EditSpamName.Text, FormSpamera.EditSpamURL.Text, FormSpamera.EditSpamDiscription.Text);
          end;
      sleep(Zadergka);
      FormPopup.PanelkaRefresher;
      if Terminated = True then
        break;
    end;
    FormSpamera.Caption:= 'Admin WP';
    FormSpamera.TI.Hint:= 'Admin WP';
    FormSpamera.ButtonStartPostDo.Caption:= 'Start / Пуск';
    FormSpamera.ButtonStartPostDo.Hint:= 'Нажмите для старта процесса добавления ссылок.';
    FormSpamera.ButtonStartPostDo.Tag:= 0;
  end;
end;

end.
