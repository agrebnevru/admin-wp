unit DeletPartThread;

interface

uses
  Classes, SysUtils, idHTTP, inifiles, Forms, IdComponent,
  IdTCPConnection, IdTCPClient, StrUtils, IdBaseComponent;

type
  DeletPart = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses MainForm, PopupForm;

{ DeletPart }

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

function TakeIdArray(LinkOnPage, StrStart, StrEnd: string): tstringlist;
var
  t, h, plus, posuzeser, chpok, theend: Integer;
  str, vremennaja: string;
  returner: tstringlist;
  IdHTTP_: TIdHTTP;
begin
  returner:= tstringlist.Create;
  t := 0;
  plus := 1;
  str := IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + LinkOnPage);
  while (t >= 0) AND (t<10) do
  begin
    posuzeser := PosEx(StrStart, str, plus);
    if posuzeser > 0 then
    begin
      theend := PosEx(StrEnd, str, posuzeser);
      vremennaja:= Copy(str, posuzeser + Length(StrStart), theend - posuzeser - Length(StrStart));
      returner.add(vremennaja);
      plus := plus + posuzeser - chpok;
      chpok := posuzeser;
      t := t + 1;
    end
    else
    begin
      t := -1;
    end;
  end;
result:= returner;
IdHTTP_.Free;
end;

procedure Delete;
var
  post, Idshniki: tstringlist;
  result, link: string;
  DataPost1: string;
  i, h, k, n: Integer;
  IdHTTP_: TIdHTTP;
begin
  FormSpamera.MemoStatusEvents.Lines.Add('Активна функция удаления.');
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

  // Удаление со страницы Posts
  if FormSpamera.CBDeletePosts.Checked then
  begin
  FormSpamera.MemoStatusEvents.Lines.Add('Удаление со страницы Posts.');
  result := IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/edit.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/edit.php', '<input type="checkbox" name="post[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    link:= '';
    link:= FormSpamera.EditAutoBlogURL.Text + '/wp-admin/edit.php?';
      try
        Idshniki := TakeIdArray('/wp-admin/edit.php', '<input type="checkbox" name="post[]" value="', '" /></th>');
        link:= link + 's=&';
        link:= link + 'post_status=all&';
        link:= link + 'mode=list&';
        link:= link + 'action=trash&';
        link:= link + 'doaction=Apply&';
        link:= link + '_wpnonce=' + DataPost1 + '&';
        link:= link + '_wp_http_referer=/wp-admin/edit.php&';
        link:= link + 'm=0&';
        link:= link + 'cat=0';
        for k := 0 to Idshniki.Count - 1 do
          link:= link + 'post[]=' + Idshniki[k] + '&';
        link:= link + 'action2=-1';
        // Отправляем данные
        result := IdHTTP_.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

  // Удаление со страницы Media
  if FormSpamera.CBDeleteMedia.Checked then
  begin
  FormSpamera.MemoStatusEvents.Lines.Add('Удаление со страницы Media.');
  result := IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/upload.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/upload.php', '<input type="checkbox" name="media[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    link:= '';
    link:= FormSpamera.EditAutoBlogURL.Text + '/wp-admin/upload.php?';
      try
        Idshniki := TakeIdArray('/wp-admin/upload.php', '<input type="checkbox" name="media[]" value="', '" /></th>');
        link:= link + 'action=delete&';
        link:= link + 'doaction=Apply&';
        link:= link + '_wpnonce=' + DataPost1 + '&';
        link:= link + '_wp_http_referer=/wp-admin/upload.php&';
        link:= link + 'action2=-1&';
        link:= link + 'affected=';
        link:= link + '_ajax_nonce=' + Copy(result, Pos('name="_ajax_nonce" value=', result) + Length('name="_ajax_nonce" value='), 10);;
        link:= link + 'ps=';
        link:= link + 'find-posts-what=posts';
        for k := 0 to Idshniki.Count - 1 do
          link:= link + 'media[]=' + Idshniki[k] + '&';
        // Отправляем данные
        result := IdHTTP_.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

  // Удаление со страницы Links
  if FormSpamera.CBDeleteLinks.Checked then
  begin
  FormSpamera.MemoStatusEvents.Lines.Add('Удаление со страницы Links.');
  result := IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/link-manager.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/link-manager.php', '<input type="checkbox" name="linkcheck[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    link:= '';
    link:= FormSpamera.EditAutoBlogURL.Text + '/wp-admin/link-manager.php?';
      try
        Idshniki := TakeIdArray('/wp-admin/link-manager.php', '<input type="checkbox" name="linkcheck[]" value="', '" /></th>');
        link:= link + 'action=delete&';
        link:= link + 'doaction=Apply&';
        link:= link + 'cat_id=all&';
        link:= link + 'order_by=order_name&';
        link:= link + '_wpnonce=' + DataPost1 + '&';
        link:= link + '_wp_http_referer=/wp-admin/link-manager.php&';
        for k := 0 to Idshniki.Count - 1 do
          link:= link + 'linkcheck[]=' + Idshniki[k] + '&';
        link:= link + 'action2=';
        // Отправляем данные
        result := IdHTTP_.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

  // Удаление со страницы Pages
  if FormSpamera.CBDeletePages.Checked then
  begin
  FormSpamera.MemoStatusEvents.Lines.Add('Удаление со страницы Pages.');
  result := IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/edit-pages.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/edit-pages.php', '<input type="checkbox" name="post[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    link:= '';
    link:= FormSpamera.EditAutoBlogURL.Text + '/wp-admin/edit-pages.php?';
      try
        Idshniki := TakeIdArray('/wp-admin/edit-pages.php', '<input type="checkbox" name="post[]" value="', '" /></th>');
        link:= link + 's=&';
        link:= link + 'post_status=all&';
        link:= link + 'action=trash&';
        link:= link + 'doaction=Apply&';
        link:= link + '_wpnonce=' + DataPost1 + '&';
        link:= link + '_wp_http_referer=/wp-admin/edit-pages.php&';
        for k := 0 to Idshniki.Count - 1 do
          link:= link + 'post[]=' + Idshniki[k] + '&';
        link:= link + 'action2=-1';
        // Отправляем данные
        result := IdHTTP_.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

  // Удаление со страницы Comments
  if FormSpamera.CBDeleteComments.Checked then
  begin
  FormSpamera.MemoStatusEvents.Lines.Add('Удаление со страницы Comments.');
  result := IdHTTP_.get(FormSpamera.EditAutoBlogURL.Text + '/wp-admin/edit-comments.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/edit-comments.php', '<input type="checkbox" name="delete_comments[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    link:= '';
    link:= FormSpamera.EditAutoBlogURL.Text + '/wp-admin/edit-comments.php?';
      try
        Idshniki := TakeIdArray('/wp-admin/edit-comments.php', '<input type="checkbox" name="delete_comments[]" value="', '" /></th>');
        link:= link + 's=&';
        link:= link + 'mode=detail&';
        link:= link + 'comment_status=all&';
        link:= link + 'pagegen_timestamp=' + Copy(result, Pos('<input type="hidden" name="pagegen_timestamp" value="', result) + Length('<input type="hidden" name="pagegen_timestamp" value="'), 19);
        link:= link + 'action=trash&';
        link:= link + 'doaction=Apply&';
        link:= link + '_wpnonce=' + DataPost1 + '&';
        link:= link + '_wp_http_referer=/wp-admin/edit-comments.php&';
        link:= link + 'comment_type=all&';
        for k := 0 to Idshniki.Count - 1 do
          link:= link + 'delete_comments[]=' + Idshniki[k] + '&';
        link:= link + 'action2=-1';
        // Отправляем данные
        result := IdHTTP_.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;
IdHTTP_.Free;
end;

procedure DeletPart.Execute;
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
          Delete;
      sleep(Zadergka);
      FormPopup.PanelkaRefresher;
      if Terminated = True then
        break;
    end;
    FormSpamera.Caption:= 'Admin WP';
    FormSpamera.TI.Hint:= 'Admin WP';
    FormSpamera.ButtonStartDeleteDo.Caption:= 'Start / Пуск';
    FormSpamera.ButtonStartDeleteDo.Hint:= 'Нажмите для старта процесса удаления содержимого разделов.';
    FormSpamera.ButtonStartDeleteDo.Tag:= 0;
  end;
end;

end.
