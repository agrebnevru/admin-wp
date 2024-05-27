unit SettingsThrThread;

interface

uses
  Classes, SysUtils, idHTTP, inifiles, Forms, IdComponent,
  IdTCPConnection, IdTCPClient, IdBaseComponent;

type
  SettingsThr = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses MainForm, PopupForm;

{ SettingsThr }

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

procedure PostSettings;
var
  post: tstringlist;
  result: string;
  DataPost1: string;
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
  result := IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/options-discussion.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  try
    // Параметры
    post.Add('option_page=discussion');
    post.Add('action=update');
    post.Add('_wpnonce=' + DataPost1);
    post.Add('_wp_http_referer=/wp-admin/options-discussion.php');
    // Default article settings
    if FormSpamera.CheckBox1.Checked then
      post.Add('default_pingback_flag=1');
    if FormSpamera.CheckBox2.Checked then
      post.Add('default_ping_status=open');
    if FormSpamera.CheckBox3.Checked then
      post.Add('default_comment_status=open');
    // Other comment settings
    if FormSpamera.CheckBox4.Checked then
      post.Add('require_name_email=1');
    if FormSpamera.CheckBox5.Checked then
      post.Add('comment_registration=1');
    if FormSpamera.CheckBox6.Checked then
      post.Add('close_comments_for_old_posts=1');
    post.Add('close_comments_days_old=' + FormSpamera.Edit1.Text);
    if FormSpamera.CheckBox7.Checked then
      post.Add('close_comments_for_old_posts=1');
    post.Add('thread_comments_depth=' + FormSpamera.ComboBox1.Text);
    if FormSpamera.CheckBox8.Checked then
      post.Add('page_comments=1');
    post.Add('comments_per_page=' + FormSpamera.Edit2.Text);
    post.Add('default_comments_page=' + FormSpamera.ComboBox2.Text);
    post.Add('comment_order=' + FormSpamera.ComboBox3.Text);
    // E-mail me whenever
    if FormSpamera.CheckBox9.Checked then
      post.Add('comments_notify=1');
    if FormSpamera.CheckBox10.Checked then
      post.Add('moderation_notify=1');
    // Before a comment appears
    if FormSpamera.CheckBox11.Checked then
      post.Add('comment_moderation=1');
    if FormSpamera.CheckBox12.Checked then
      post.Add('comment_whitelist=1');
    // Comment Moderation
    post.Add('comment_max_links=' + FormSpamera.Edit3.Text);
    post.Add('moderation_keys=' + FormSpamera.Memo1.Text);
    // Comment Blacklist
    post.Add('blacklist_keys=' + FormSpamera.Memo2.Text);
    // Avatars
    // Avatar Display
    if FormSpamera.RadioGroup1.ItemIndex = 0 then
      post.Add('show_avatars=0');
    if FormSpamera.RadioGroup1.ItemIndex = 1 then
      post.Add('show_avatars=1');
    // Maximum Rating
    if FormSpamera.RadioGroup2.ItemIndex = 0 then
      post.Add('avatar_rating=G');
    if FormSpamera.RadioGroup2.ItemIndex = 1 then
      post.Add('avatar_rating=PG');
    if FormSpamera.RadioGroup2.ItemIndex = 2 then
      post.Add('avatar_rating=R');
    if FormSpamera.RadioGroup2.ItemIndex = 3 then
      post.Add('avatar_rating=X');
    // Default Avatar
    if FormSpamera.RadioGroup3.ItemIndex = 0 then
      post.Add('avatar_default=mystery');
    if FormSpamera.RadioGroup3.ItemIndex = 1 then
      post.Add('avatar_default=blank');
    if FormSpamera.RadioGroup3.ItemIndex = 2 then
      post.Add('avatar_default=gravatar_default');
    if FormSpamera.RadioGroup3.ItemIndex = 3 then
      post.Add('avatar_default=identicon');
    if FormSpamera.RadioGroup3.ItemIndex = 4 then
      post.Add('avatar_default=wavatar');
    if FormSpamera.RadioGroup3.ItemIndex = 5 then
      post.Add('avatar_default=monsterid');
    // Отправляем данные
    result := IdHTTP_.post(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/options.php',
      post);
    // Результат
    if Pos('Settings saved', result) > 0 then
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

procedure SettingsThr.Execute;
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
          PostSettings;
      sleep(Zadergka);
      FormPopup.PanelkaRefresher;
      if Terminated = True then
        break;
    end;
    FormSpamera.Caption:= 'Admin WP';
    FormSpamera.TI.Hint:= 'Admin WP';
    FormSpamera.ButtonStartSettingsDo.Caption:= 'Start / Пуск';
    FormSpamera.ButtonStartSettingsDo.Hint:= 'Нажмите для старта процесса установки настроек(Discussion).';
    FormSpamera.ButtonStartSettingsDo.Tag:= 0;
  end;
end;

end.
