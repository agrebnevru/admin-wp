unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, IdTCPConnection, IdTCPClient,
  IdHTTP, IdBaseComponent, IdCookieManager,
  Menus, inifiles, ImgList, CheckLst, ComCtrls, XPMan, RegistrationThread,
  StrUtils, CheckNewVerThread, Shellapi, registry, AddLinkThread,
  DeletPartThread, SettingsThrThread, SettingsThr2Thread, ToolWin, IdComponent;

type
  TWPAction = (awLogin, awLoginAndPost);

  TWPLoginThread = class(TThread)
  end;

type
  TFormSpamera = class(TForm)
    IdCM: TIdCookieManager;
    TI: TTrayIcon;
    PMTray: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    MainMenu: TMainMenu;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ILIcons: TImageList;
    N6: TMenuItem;
    N11: TMenuItem;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox5: TGroupBox;
    Label17: TLabel;
    MemoErrorDomen: TMemo;
    EditErrorDomenKoilvio: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditSiteLink: TEdit;
    EditSiteLogin: TEdit;
    EditSitePassword: TEdit;
    ButtonCheckAuthorize: TButton;
    GroupBox7: TGroupBox;
    CLBDomenNeddList: TCheckListBox;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    EditReferelLink: TEdit;
    MemoHtmlPage: TMemo;
    GroupBox9: TGroupBox;
    AddNameLink: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    AddLinkURL: TEdit;
    AddDiscription: TEdit;
    Label6: TLabel;
    ButtonPost: TButton;
    ILPage: TImageList;
    CBAll: TCheckBox;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditAutoBlogURL: TEdit;
    EditAutoBlogLogin: TEdit;
    EditAutoBlogPassword: TEdit;
    EditDomenovKolvo: TEdit;
    GroupBox8: TGroupBox;
    MemoStatusEvents: TMemo;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EditSpamName: TEdit;
    EditSpamURL: TEdit;
    EditSpamDiscription: TEdit;
    PanelStartAndPB: TPanel;
    PBMainFormDomenDo: TProgressBar;
    GroupBox10: TGroupBox;
    XPManifest: TXPManifest;
    TabSheet6: TTabSheet;
    GroupBox17: TGroupBox;
    ScrollBox1: TScrollBox;
    GroupBox18: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Edit4: TEdit;
    Button1: TButton;
    GroupBox19: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    ScrollBox2: TScrollBox;
    GroupBox11: TGroupBox;
    Label11: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox13: TGroupBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    GroupBox12: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    GroupBox14: TGroupBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    GroupBox15: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Edit3: TEdit;
    Memo1: TMemo;
    GroupBox16: TGroupBox;
    Label32: TLabel;
    Memo2: TMemo;
    Label33: TLabel;
    Label34: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    N12: TMenuItem;
    N13: TMenuItem;
    Label42: TLabel;
    PanelTop: TPanel;
    LabelProgrammName: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    N14: TMenuItem;
    TimerCheckRegOnStart: TTimer;
    LabelInformer: TLabel;
    TimerInformera: TTimer;
    RE1: TMenuItem;
    TabSheet7: TTabSheet;
    GroupBox6: TGroupBox;
    GroupBox21: TGroupBox;
    CBDeletePosts: TCheckBox;
    CBDeleteMedia: TCheckBox;
    CBDeleteLinks: TCheckBox;
    CBDeletePages: TCheckBox;
    CBDeleteComments: TCheckBox;
    Label18: TLabel;
    LabelNewVerIsset: TLabel;
    TimerStartCheckNewVer: TTimer;
    PanelButtom: TPanel;
    LabelCopy: TLabel;
    IdHTTP1: TIdHTTP;
    EditDomenovCheckedKolvo: TEdit;
    ILBigIcons: TImageList;
    ButtonStartPostDo: TButton;
    ButtonStartDeleteDo: TButton;
    ButtonStartSettingsDo: TButton;
    ButtonStartSettings2Do: TButton;
    Label19: TLabel;
    procedure ButtonCheckAuthorizeClick(Sender: TObject);
    procedure ButtonPostClick(Sender: TObject);
    procedure IdHTTP1Redirect(Sender: TObject; var dest: string;
      var NumRedirect: Integer; var Handled: Boolean;
      var VMethod: string);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure TIDblClick(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure ButtonStartPostDoClick(Sender: TObject);
    procedure EditErrorDomenKoilvioChange(Sender: TObject);
    procedure PMTrayPopup(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure DomenListRefresh;
    procedure CBAllClick(Sender: TObject);
    procedure ButtonStartSettingsDoClick(Sender: TObject);
    procedure ButtonStartSettings2DoClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    function GetVerProg: string;
    procedure TimerCheckRegOnStartTimer(Sender: TObject);
    procedure TimerInformeraTimer(Sender: TObject);
    procedure RE1Click(Sender: TObject);
    procedure ButtonStartDeleteDoClick(Sender: TObject);
    procedure TimerStartCheckNewVerTimer(Sender: TObject);
    procedure EditSiteLinkChange(Sender: TObject);
    procedure EditSiteLoginChange(Sender: TObject);
    procedure EditSitePasswordChange(Sender: TObject);
    procedure LabelCopyClick(Sender: TObject);
    procedure CLBDomenNeddListClickCheck(Sender: TObject);
    procedure RefreshKolChecked;
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    co1: ThreadCheckNewVer;
    co2: Registration;
    co3: AddLinkThr;
    co4: DeletPart;
    co5: SettingsThr;
    co6: SettingsThr2;
    procedure SaveProgPosition;
    procedure LoadProgPosition;
    procedure LoadSettings;
    procedure SaveSettings;
    function Authoriz(url, log, pass: string): Boolean;
    procedure PostLink(name, link, discription: string);
    function TakeIdArray(LinkOnPage, StrStart, StrEnd: string): tstringlist;
    procedure Delete;
    procedure PostSettings;
    procedure PostSettings2;
  public
    { Public declarations }
  end;

var
  FormSpamera: TFormSpamera;
  KeyClose: Boolean;
  inifile: tinifile;
  Zadergka: Integer;
  ErrorAuthoriz, ErrorPOST, DomenTaken: Integer;
  KeyReg: Boolean;
  LC: string;

implementation

uses SettingsForm, PopupForm, AboutForm, RegistrationForm;

{$R *.dfm}

{ ------------------- Сохранение/Восстановление позиции begin ------------------ }
procedure TFormSpamera.SaveProgPosition;
var
  FIniFile: TRegIniFile;
begin
  FIniFile := TRegIniFile.Create('Admin-WP'); // Инициализирую реестр
  FIniFile.OpenKey('Admin-WP', true); // Открываю раздел
  FIniFile.OpenKey('Admin-WP-PositionMainForm', true); // Открываю ещё один раздел
  if WindowState = wsNormal then
  begin
    FIniFile.WriteInteger('Option', 'Left', Left);
    FIniFile.WriteInteger('Option', 'Top', Top);
  end;
  FIniFile.WriteInteger('Option', 'WinState', Integer(WindowState));
  FIniFile.Free;
end;

procedure TFormSpamera.LoadProgPosition;
var
  FIniFile: TRegIniFile;
begin
  FIniFile := TRegIniFile.Create('Admin-WP');
  FIniFile.OpenKey('Admin-WP', true);
  FIniFile.OpenKey('Admin-WP-PositionMainForm', true);
  Left := FIniFile.ReadInteger('Option', 'Left', 100);
  Top := FIniFile.ReadInteger('Option', 'Top', 100);
  WindowState := TWindowState(FIniFile.ReadInteger('Option', 'WinState', 0));
  FIniFile.Free;
end;
{ ------------------- Сохранение/Восстановление позиции end-- ------------------ }

{ ....................... сохранение/загрузка настроек begin ................... }
procedure TFormSpamera.LabelCopyClick(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar('http://adminwp.ucoz.ru/'), nil, nil, SW_SHOW);
end;

procedure TFormSpamera.LoadSettings;
begin
  inifile := tinifile.Create(extractfilepath(application.ExeName)
      + 'Config.ini');
  EditDomenovKolvo.Text := IntToStr(inifile.ReadInteger('General config',
      'DomenKolichestvo', 0));
  Zadergka := StrToInt(inifile.ReadString('General config', 'Zadergka',
      '1000'));
  EditSpamName.Text := inifile.ReadString('Post Data', 'Name', '');
  EditSpamURL.Text := inifile.ReadString('Post Data', 'Link', '');
  EditSpamDiscription.Text := inifile.ReadString('Post Data', 'Discription',
    '');
  LC := inifile.ReadString('Registration Data', 'License_Code', '');
  KeyReg := inifile.ReadBool('Registration Data', 'Already_Reg', false);
  inifile.Free;
end;

procedure TFormSpamera.SaveSettings;
begin
  inifile := tinifile.Create(extractfilepath(application.ExeName)
      + 'Config.ini');
  inifile.WriteInteger('General config', 'DomenKolichestvo',
    StrToInt(EditDomenovKolvo.Text));
  inifile.WriteInteger('General config', 'Zadergka', Zadergka);
  inifile.WriteString('Post Data', 'Name', EditSpamName.Text);
  inifile.WriteString('Post Data', 'Link', EditSpamURL.Text);
  inifile.WriteString('Post Data', 'Discription', EditSpamDiscription.Text);
  inifile.WriteString('Registration Data', 'License_Code', LC);
  inifile.WriteBool('Registration Data', 'Already_Reg', KeyReg);
  inifile.Free;
end;
{ ...................... сохранение/загрузка настроек end ...................... }

{ ...................... узнаем версию прогрнаммы begin ........................ }
function TFormSpamera.GetVerProg: string;
type
  TVerInfo = packed record
    Nevazhno: array [0 .. 47] of byte; // ненужные нам 48 байт
    Minor, Major, Build, Release: word; // а тут версия
  end;
var
  s: TResourceStream;
  v: TVerInfo;
begin
  result := '';
  try
    s := TResourceStream.Create(HInstance, '#1', RT_VERSION); // достаём ресурс
    if s.Size > 0 then
    begin
      s.Read(v, SizeOf(v)); // читаем нужные нам байты
      result := IntToStr(v.Major) + '.' + IntToStr(v.Minor) + '.' +
      // вот и версия...
        IntToStr(v.Release) + '.' + IntToStr(v.Build);
    end;
    s.Free;
  except
    ;
  end;
end;
{ ...................... узнаем версию прогрнаммы end .......................... }

procedure TFormSpamera.DomenListRefresh;
var
  i: Integer;
begin
  CLBDomenNeddList.Items.Clear;
  for i := 1 to StrToInt(FormSpamera.EditDomenovKolvo.Text) do
  begin
    inifile := tinifile.Create(extractfilepath(application.ExeName)
        + '\db\site\blog' + IntToStr(i) + '.ini');
    CLBDomenNeddList.Items.Add(inifile.ReadString('General config', 'Domen',
        ''));
    inifile.Free;
  end;
end;

procedure TFormSpamera.TIDblClick(Sender: TObject);
begin
  if showing then
    hide
  else
    show;
end;

procedure TFormSpamera.TimerCheckRegOnStartTimer(Sender: TObject);
begin
  LabelInformer.Caption := 'Соединение с сервером. Проверка подлинности ключа.';
  FormSpamera.TimerInformera.Enabled := true;
  co2 := Registration.Create(true);
  co2.Resume;
  co2.Priority := tpIdle;
  TimerCheckRegOnStart.Enabled := false;
end;

procedure TFormSpamera.TimerInformeraTimer(Sender: TObject);
begin
  LabelInformer.Caption := '';
  TimerInformera.Enabled := false;
end;

procedure TFormSpamera.TimerStartCheckNewVerTimer(Sender: TObject);
begin
ShowMessage('Началася проыверка.');
  co1:= ThreadCheckNewVer.Create(true);
  co1.Resume;
  co1.Priority := tpIdle;
  TimerStartCheckNewVer.Enabled := false;
end;

procedure TFormSpamera.Button1Click(Sender: TObject);
begin
  RadioButton5.Checked := true;
  Edit4.Text := '/%category%/%year%/%monthnum%/%day%/%postname%.html';
end;

procedure TFormSpamera.ButtonCheckAuthorizeClick(Sender: TObject);
var
  post: tstringlist;
  result: string;
begin
  post := tstringlist.Create;
  try
    // Параметры
    post.Add('log=' + EditSiteLogin.Text);
    post.Add('pwd=' + EditSitePassword.Text);
    post.Add('wp-submit=Log In');
    post.Add('redirect_to=' + EditSiteLink.Text + '/wp-admin/');
    post.Add('testcookie=1');
    // Отправляем данные
    result := IdHTTP1.post(EditSiteLink.Text + '/wp-login.php', post);
    // Результат
    if Pos('action=logout', result) > 0 then
    begin
      ButtonPost.Enabled:= true;
      ShowMessage('Авторизация прошла успешно!');
    end
    else
    begin
      ButtonPost.Enabled:= false;
      ShowMessage('Авторизация Провалилась!');
    end;
  except
    post.Free;
  end;
  MemoHtmlPage.Text := result;
end;

procedure TFormSpamera.ButtonPostClick(Sender: TObject);
var
  post: tstringlist;
  result, meg1, meg2, meg3: string;
begin
  post := tstringlist.Create;
  result := IdHTTP1.get(EditSiteLink.Text + '/wp-admin/link-add.php');
  meg1 := Copy(result, Pos('name="_wpnonce" value="',
      result) + Length('name="_wpnonce" value="'), 10);
  meg2 := Copy(result, Pos('name="closedpostboxesnonce" value="',
      result) + Length('name="closedpostboxesnonce" value="'), 10);
  meg3 := Copy(result, Pos('name="meta-box-order-nonce" value="',
      result) + Length('name="meta-box-order-nonce" value="'), 10);
  try
    // Параметры
    post.Add('_wpnonce=' + meg1);
    post.Add('_wp_http_referer=/wp-admin/link-add.php');
    post.Add('closedpostboxesnonce=' + meg2);
    post.Add('meta-box-order-nonce=' + meg3);
    post.Add('link_name=' + AddNameLink.Text);
    post.Add('link_url=' + AddLinkURL.Text);
    post.Add('link_description=' + AddDiscription.Text);
    post.Add('friendship=');
    post.Add('geographical=');
    post.Add('family=');
    post.Add('link_rating=0');
    post.Add('action=add');
    // Отправляем данные
    result := IdHTTP1.post(EditSiteLink.Text + '/wp-admin/link.php', post);
    // Результат
    if Pos('Link added', result) > 0 then
      ShowMessage('Ссылка добавлена!')
    else
      ShowMessage('Ссылка не добавилась!');
  except
    post.Free;
  end;
  MemoHtmlPage.Text := result;
end;

procedure TFormSpamera.EditErrorDomenKoilvioChange(Sender: TObject);
begin
  FormPopup.Label2.Caption := EditErrorDomenKoilvio.Text;
end;

procedure TFormSpamera.EditSiteLinkChange(Sender: TObject);
begin
ButtonPost.Enabled:= false;
end;

procedure TFormSpamera.EditSiteLoginChange(Sender: TObject);
begin
ButtonPost.Enabled:= false;
end;

procedure TFormSpamera.EditSitePasswordChange(Sender: TObject);
begin
ButtonPost.Enabled:= false;
end;

procedure TFormSpamera.FormClose(Sender: TObject; var Action: TCloseAction);
var
  NowDate, NowTime: string;
begin
  SaveProgPosition;
  SaveSettings;
  DateTimeToString(NowDate, 'dd-mm-yyyy', date);
  DateTimeToString(NowTime, 'hh-mm-ss', time);
  if (Length(MemoStatusEvents.Lines.Text) > 0) AND
    (DirectoryExists(extractfilepath(application.ExeName) + '\log')) then
    MemoStatusEvents.Lines.SaveToFile(extractfilepath(application.ExeName)
        + 'log\' + NowDate + '_' + NowTime + '_events.log');
  IdHTTP1.Free;
end;

procedure TFormSpamera.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := KeyClose;
  if not CanClose then
    hide;
end;

procedure TFormSpamera.FormCreate(Sender: TObject);
begin
  LoadProgPosition;
  LoadSettings;
  KeyClose := false;

  if KeyReg then
    //TimerCheckRegOnStart.Enabled := true;

 // TimerStartCheckNewVer.Enabled:= true;

  IdHTTP1.AllowCookies := true;
  IdHTTP1.HandleRedirects := true;
  IdHTTP1.Request.ContentType := 'application/x-www-form-urlencoded';
  IdHTTP1.Request.UserAgent :=
    'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)';

  DomenListRefresh;
end;

procedure TFormSpamera.IdHTTP1Redirect(Sender: TObject; var dest: string;
  var NumRedirect: Integer; var Handled: Boolean; var VMethod: string);
begin
  EditReferelLink.Text := dest;
end;

procedure TFormSpamera.N10Click(Sender: TObject);
begin
  if N10.Checked then
  begin
    N10.Checked := false;
    N6.Checked := false;
    FormPopup.hide;
  end
  else
  begin
    N10.Checked := true;
    N6.Checked := true;
    FormPopup.show;
  end;
end;

procedure TFormSpamera.N12Click(Sender: TObject);
begin
  FormAbout.show;
end;

procedure TFormSpamera.N13Click(Sender: TObject);
begin
  if not KeyReg then
    FormRegistration.ShowModal
  else
    ShowMessage('Регистрация уже пройдена.');
end;

procedure TFormSpamera.N1Click(Sender: TObject);
begin
if Showing then
  hide
  else
  show;
end;

procedure TFormSpamera.N2Click(Sender: TObject);
begin
  FormSettings.ShowModal;
end;

procedure TFormSpamera.N4Click(Sender: TObject);
begin
  KeyClose := true;
  Close;
end;

procedure TFormSpamera.N6Click(Sender: TObject);
begin
  if N6.Checked then
  begin
    N6.Checked := false;
    N10.Checked := false;
    FormPopup.hide;
  end
  else
  begin
    N6.Checked := true;
    N10.Checked := true;
    FormPopup.show;
  end;
end;

procedure TFormSpamera.N7Click(Sender: TObject);
begin
  KeyClose := true;
  Close;
end;

procedure TFormSpamera.N9Click(Sender: TObject);
begin
  FormSettings.ShowModal;
end;

function TFormSpamera.Authoriz(url, log, pass: string): Boolean;
var
  post: tstringlist;
  html: string;
  IdHTTP_: TIdHTTP;
begin
  result := false;
  MemoStatusEvents.Lines.Add('Работаем с ' + url);
  post := tstringlist.Create;
  IdHTTP_ := TIdHTTP.Create();
  IdHTTP_.AllowCookies := true;
  IdHTTP_.CookieManager := IdCM;
  IdHTTP_.HTTPOptions := IdHTTP1.HTTPOptions;
  IdHTTP_.ProxyParams := IdHTTP1.ProxyParams;
  IdHTTP_.Request := IdHTTP1.Request;
  try
    // Параметры
    post.Add('log=' + log);
    post.Add('pwd=' + pass);
    // Отправляем данные
    html := IdHTTP_.post(url + '/wp-login.php', post);
    // Результат
    if Pos('action=logout', html) > 0 then
    begin
      MemoStatusEvents.Lines.Add('Авторизация прошла успешно!');
      result := true;
    end
    else
    begin
      MemoStatusEvents.Lines.Add('Авторизация отклонена!');
      result := false;
      EditErrorDomenKoilvio.Text := IntToStr(StrToInt(EditErrorDomenKoilvio.Text) + 1);
      ErrorAuthoriz := ErrorAuthoriz + 1;
    end;
  except
    post.Free;
    IdHTTP_.Free;
  end;
  MemoHtmlPage.Text := html;
end;

procedure TFormSpamera.PMTrayPopup(Sender: TObject);
begin
  if showing then
    N1.Caption := 'Скрыть'
  else
    N1.Caption := 'Показать';
end;

procedure TFormSpamera.PostLink(name, link, discription: string);
var
  post: tstringlist;
  result: string;
  DataPost1, DataPost2, DataPost3: string;
  IdHTTP_: TIdHTTP;
begin
  post := tstringlist.Create;
  IdHTTP_ := TIdHTTP.Create();
  IdHTTP_.AllowCookies := true;
  IdHTTP_.CookieManager := IdCM;
  IdHTTP_.HTTPOptions := IdHTTP1.HTTPOptions;
  IdHTTP_.ProxyParams := IdHTTP1.ProxyParams;
  IdHTTP_.Request := IdHTTP1.Request;
  result := IdHTTP_.get(EditAutoBlogURL.Text + '/wp-admin/link-add.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="',
      result) + Length('name="_wpnonce" value="'), 10);
  DataPost2 := Copy(result, Pos('name="closedpostboxesnonce" value="',
      result) + Length('name="closedpostboxesnonce" value="'), 10);
  DataPost3 := Copy(result, Pos('name="meta-box-order-nonce" value="',
      result) + Length('name="meta-box-order-nonce" value="'), 10);
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
    result := IdHTTP_.post(EditAutoBlogURL.Text + '/wp-admin/link.php', post);
    // Результат
    if Pos('Link added', result) > 0 then
    begin
      MemoStatusEvents.Lines.Add('Ссылка добавлена!');
    end
    else
    begin
      MemoStatusEvents.Lines.Add('Ссылка не добавилась!');
      EditErrorDomenKoilvio.Text := IntToStr(StrToInt(EditErrorDomenKoilvio.Text) + 1);
      ErrorPOST := ErrorPOST + 1;
    end;
  except
    post.Free;
    IdHTTP_.Free;
  end;
  MemoHtmlPage.Text := result;
end;

function TFormSpamera.TakeIdArray(LinkOnPage, StrStart, StrEnd: string): tstringlist;
var
  t, h, plus, posuzeser, chpok, theend: Integer;
  str, vremennaja: string;
  returner: tstringlist;
begin
  returner := tstringlist.Create;
  t := 0;
  plus := 1;
  str := IdHTTP1.get(EditAutoBlogURL.Text + LinkOnPage);
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
end;

procedure TFormSpamera.Delete;
var
  post, Idshniki: tstringlist;
  result, link: string;
  DataPost1: string;
  i, h, k, n: Integer;
begin
  MemoStatusEvents.Lines.Add('Активна функция удаления.');
  post := tstringlist.Create;

  // Удаление со страницы Posts
  if CBDeletePosts.Checked then
  begin
  MemoStatusEvents.Lines.Add('Удаление со страницы Posts.');
  result := IdHTTP1.get(EditAutoBlogURL.Text + '/wp-admin/edit.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/edit.php', '<input type="checkbox" name="post[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    link:= '';
    link:= EditAutoBlogURL.Text + '/wp-admin/edit.php?';
      try
        Idshniki := TakeIdArray('/wp-admin/edit.php', '<input type="checkbox" name="post[]" value="', '" /></th>');
        ShowMessage('Idshniki.Count = ' + IntToStr(Idshniki.Count));
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
        result := IdHTTP1.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

  // Удаление со страницы Media
  if CBDeleteMedia.Checked then
  begin
  MemoStatusEvents.Lines.Add('Удаление со страницы Media.');
  result := IdHTTP1.get(EditAutoBlogURL.Text + '/wp-admin/upload.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/upload.php', '<input type="checkbox" name="media[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    ShowMessage('Следующий цикл го! № = ' + IntToStr(h));
    link:= '';
    link:= EditAutoBlogURL.Text + '/wp-admin/upload.php?';
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
        result := IdHTTP1.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

  // Удаление со страницы Links
  if CBDeleteLinks.Checked then
  begin
  MemoStatusEvents.Lines.Add('Удаление со страницы Links.');
  result := IdHTTP1.get(EditAutoBlogURL.Text + '/wp-admin/link-manager.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/link-manager.php', '<input type="checkbox" name="linkcheck[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    ShowMessage('Следующий цикл го! № = ' + IntToStr(h));
    link:= '';
    link:= EditAutoBlogURL.Text + '/wp-admin/link-manager.php?';
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
        result := IdHTTP1.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

  // Удаление со страницы Pages
  if CBDeletePages.Checked then
  begin
  MemoStatusEvents.Lines.Add('Удаление со страницы Pages.');
  result := IdHTTP1.get(EditAutoBlogURL.Text + '/wp-admin/edit-pages.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/edit-pages.php', '<input type="checkbox" name="post[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    ShowMessage('Следующий цикл го! № = ' + IntToStr(h));
    link:= '';
    link:= EditAutoBlogURL.Text + '/wp-admin/edit-pages.php?';
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
        result := IdHTTP1.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

  // Удаление со страницы Comments
  if CBDeleteComments.Checked then
  begin
  MemoStatusEvents.Lines.Add('Удаление со страницы Comments.');
  result := IdHTTP1.get(EditAutoBlogURL.Text + '/wp-admin/edit-comments.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="', result) + Length('name="_wpnonce" value="'), 10);
  Idshniki := TakeIdArray('/wp-admin/edit-comments.php', '<input type="checkbox" name="delete_comments[]" value="', '" /></th>');
  while Idshniki.Count > 0 do
    begin
    ShowMessage('Следующий цикл го! № = ' + IntToStr(h));
    link:= '';
    link:= EditAutoBlogURL.Text + '/wp-admin/edit-comments.php?';
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
        result := IdHTTP1.get(link);
      finally
         Idshniki.Free;
      end;
    end;
  end;

end;

procedure TFormSpamera.PostSettings;
var
  post: tstringlist;
  result: string;
  DataPost1: string;
begin
  MemoStatusEvents.Lines.Add('Задаем настройки (Discussion).');
  post := tstringlist.Create;
  result := IdHTTP1.get(EditAutoBlogURL.Text +
      '/wp-admin/options-discussion.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="',
      result) + Length('name="_wpnonce" value="'), 10);
  try
    // Параметры
    post.Add('option_page=discussion');
    post.Add('action=update');
    post.Add('_wpnonce=' + DataPost1);
    post.Add('_wp_http_referer=/wp-admin/options-discussion.php');
    // Default article settings
    if CheckBox1.Checked then
      post.Add('default_pingback_flag=1');
    if CheckBox2.Checked then
      post.Add('default_ping_status=open');
    if CheckBox3.Checked then
      post.Add('default_comment_status=open');
    // Other comment settings
    if CheckBox4.Checked then
      post.Add('require_name_email=1');
    if CheckBox5.Checked then
      post.Add('comment_registration=1');
    if CheckBox6.Checked then
      post.Add('close_comments_for_old_posts=1');
    post.Add('close_comments_days_old=' + Edit1.Text);
    if CheckBox7.Checked then
      post.Add('close_comments_for_old_posts=1');
    post.Add('thread_comments_depth=' + ComboBox1.Text);
    if CheckBox8.Checked then
      post.Add('page_comments=1');
    post.Add('comments_per_page=' + Edit2.Text);
    post.Add('default_comments_page=' + ComboBox2.Text);
    post.Add('comment_order=' + ComboBox3.Text);
    // E-mail me whenever
    if CheckBox9.Checked then
      post.Add('comments_notify=1');
    if CheckBox10.Checked then
      post.Add('moderation_notify=1');
    // Before a comment appears
    if CheckBox11.Checked then
      post.Add('comment_moderation=1');
    if CheckBox12.Checked then
      post.Add('comment_whitelist=1');
    // Comment Moderation
    post.Add('comment_max_links=' + Edit3.Text);
    post.Add('moderation_keys=' + Memo1.Text);
    // Comment Blacklist
    post.Add('blacklist_keys=' + Memo2.Text);
    // Avatars
    // Avatar Display
    if RadioGroup1.ItemIndex = 0 then
      post.Add('show_avatars=0');
    if RadioGroup1.ItemIndex = 1 then
      post.Add('show_avatars=1');
    // Maximum Rating
    if RadioGroup2.ItemIndex = 0 then
      post.Add('avatar_rating=G');
    if RadioGroup2.ItemIndex = 1 then
      post.Add('avatar_rating=PG');
    if RadioGroup2.ItemIndex = 2 then
      post.Add('avatar_rating=R');
    if RadioGroup2.ItemIndex = 3 then
      post.Add('avatar_rating=X');
    // Default Avatar
    if RadioGroup3.ItemIndex = 0 then
      post.Add('avatar_default=mystery');
    if RadioGroup3.ItemIndex = 1 then
      post.Add('avatar_default=blank');
    if RadioGroup3.ItemIndex = 2 then
      post.Add('avatar_default=gravatar_default');
    if RadioGroup3.ItemIndex = 3 then
      post.Add('avatar_default=identicon');
    if RadioGroup3.ItemIndex = 4 then
      post.Add('avatar_default=wavatar');
    if RadioGroup3.ItemIndex = 5 then
      post.Add('avatar_default=monsterid');
    // Отправляем данные
    result := IdHTTP1.post(EditAutoBlogURL.Text + '/wp-admin/options.php',
      post);
    // Результат
    if Pos('Settings saved', result) > 0 then
    begin
      MemoStatusEvents.Lines.Add('Настройки изменены!');
    end
    else
    begin
      MemoStatusEvents.Lines.Add('Настройки не изменены!');
      EditErrorDomenKoilvio.Text := IntToStr(StrToInt(EditErrorDomenKoilvio.Text) + 1);
      ErrorPOST := ErrorPOST + 1;
    end;
  except
    post.Free;
  end;
  MemoHtmlPage.Text := result;
end;

procedure TFormSpamera.PostSettings2;
var
  post: tstringlist;
  result: string;
  DataPost1, DataPost2, DataPost3: string;
begin
  MemoStatusEvents.Lines.Add('Задаем настройки (Discussion).');
  post := tstringlist.Create;
  result := IdHTTP1.get
    (EditAutoBlogURL.Text
      + '/wp-admin/options-permalink.php');
  DataPost1 := Copy(result, Pos('name="_wpnonce" value="',
      result) + Length('name="_wpnonce" value="'), 10);
  try
    // Параметры
    post.Add('_wpnonce=' + DataPost1);
    post.Add('_wp_http_referer=/wp-admin/options-permalink.php');
    if RadioButton1.Checked then
      post.Add('selection=');
    if RadioButton2.Checked then
      post.Add('selection=/%year%/%monthnum%/%day%/%postname%/');
    if RadioButton3.Checked then
      post.Add('selection=/%year%/%monthnum%/%postname%/');
    if RadioButton4.Checked then
      post.Add('selection=/archives/%post_id%');
    if RadioButton5.Checked then
      post.Add('selection=custom');
    post.Add('permalink_structure=' + Edit4.Text);
    post.Add('category_base=' + Edit5.Text);
    post.Add('tag_base=' + Edit6.Text);
    // Отправляем данные
    result := IdHTTP1.post(EditAutoBlogURL.Text +
        '/wp-admin/options-permalink.php', post);
    // Результат
    if Pos('You should update your .htaccess now', result) > 0 then
    begin
      MemoStatusEvents.Lines.Add('Настройки изменены!');
    end
    else
    begin
      MemoStatusEvents.Lines.Add('Настройки не изменены!');
      EditErrorDomenKoilvio.Text := IntToStr(StrToInt(EditErrorDomenKoilvio.Text) + 1);
      ErrorPOST := ErrorPOST + 1;
    end;
  except
    post.Free;
  end;
  MemoHtmlPage.Text := result;
end;

procedure TFormSpamera.RadioButton1Click(Sender: TObject);
begin
  Edit4.Text := '';
end;

procedure TFormSpamera.RadioButton2Click(Sender: TObject);
begin
  Edit4.Text := '/%year%/%monthnum%/%day%/%postname%/';
end;

procedure TFormSpamera.RadioButton3Click(Sender: TObject);
begin
  Edit4.Text := '/%year%/%monthnum%/%postname%/';
end;

procedure TFormSpamera.RadioButton4Click(Sender: TObject);
begin
  Edit4.Text := '/archives/%post_id%';
end;

procedure TFormSpamera.RadioButton5Click(Sender: TObject);
begin
  Edit4.Text := '';
  // /%category%/%year%/%monthnum%/%day%/%postname%.html
end;

procedure TFormSpamera.RE1Click(Sender: TObject);
begin
  if not ButtonStartPostDo.Enabled then
    TimerCheckRegOnStart.Enabled := true
  else
    ShowMessage('Вы уже успешно авторизовались.');
end;

procedure TFormSpamera.ButtonStartDeleteDoClick(Sender: TObject);
begin
if ButtonStartDeleteDo.Tag = 0 then
  begin
  ButtonStartDeleteDo.Caption:= 'Stop / Стоп';
  ButtonStartDeleteDo.Hint:= 'Нажмите для корректной остановки процесса удаления содержимого разделов.';
  co4:= DeletPart.Create(true);
  co4.Resume;
  co4.Priority := tpHighest;
  ButtonStartDeleteDo.Tag:= 1;
  end
else
  begin
  ButtonStartDeleteDo.Caption:= 'Start / Пуск';
  ButtonStartDeleteDo.Hint:= 'Нажмите для старта процесса удаления содержимого разделов.';
  co4.Terminate;
  ButtonStartDeleteDo.Tag:= 0;
  end;
end;

procedure TFormSpamera.ButtonStartPostDoClick(Sender: TObject);
begin
if ButtonStartPostDo.Tag = 0 then
  begin
  ButtonStartPostDo.Caption:= 'Stop / Стоп';
  ButtonStartPostDo.Hint:= 'Нажмите для корректной остановки процесса добавления ссылок.';
  co3:= AddLinkThr.Create(true);
  co3.Resume;
  co3.Priority := tpHighest;
  ButtonStartPostDo.Tag:= 1;
  end
else
  begin
  ButtonStartPostDo.Caption:= 'Start / Пуск';
  ButtonStartPostDo.Hint:= 'Нажмите для старта процесса добавления ссылок.';
  co3.Terminate;
  ButtonStartPostDo.Tag:= 0;
  end;
end;

procedure TFormSpamera.ButtonStartSettings2DoClick(Sender: TObject);
begin
if ButtonStartSettings2Do.Tag = 0 then
  begin
  ButtonStartSettings2Do.Caption:= 'Stop / Стоп';
  ButtonStartSettings2Do.Hint:= 'Нажмите для корректной остановки процесса установки настроек(Permalinks).';
  co6:= SettingsThr2.Create(true);
  co6.Resume;
  co6.Priority := tpHighest;
  ButtonStartSettings2Do.Tag:= 1;
  end
else
  begin
  ButtonStartSettings2Do.Caption:= 'Start / Пуск';
  ButtonStartSettings2Do.Hint:= 'Нажмите для старта процесса установки настроек(Permalinks).';
  co6.Terminate;
  ButtonStartSettings2Do.Tag:= 0;
  end;
end;

procedure TFormSpamera.ButtonStartSettingsDoClick(Sender: TObject);
begin
if ButtonStartSettingsDo.Tag = 0 then
  begin
  ButtonStartSettingsDo.Caption:= 'Stop / Стоп';
  ButtonStartSettingsDo.Hint:= 'Нажмите для корректной остановки процесса установки настроек(Discussion).';
  co5:= SettingsThr.Create(true);
  co5.Resume;
  co5.Priority := tpHighest;
  ButtonStartSettingsDo.Tag:= 1;
  end
else
  begin
  ButtonStartSettingsDo.Caption:= 'Start / Пуск';
  ButtonStartSettingsDo.Hint:= 'Нажмите для старта процесса установки настроек(Discussion).';
  co5.Terminate;
  ButtonStartSettingsDo.Tag:= 0;
  end;
end;

procedure TFormSpamera.CBAllClick(Sender: TObject);
var
  i: Integer;
begin
  if CBAll.Checked then
    for i := 0 to CLBDomenNeddList.Count - 1 do
      CLBDomenNeddList.Checked[i] := true;
  if not CBAll.Checked then
    for i := 0 to CLBDomenNeddList.Count - 1 do
      CLBDomenNeddList.Checked[i] := false;
RefreshKolChecked;
end;

procedure TFormSpamera.RefreshKolChecked;
var
i: integer;
begin
EditDomenovCheckedKolvo.Text:= '0';
for i := 1 to StrToInt(FormSpamera.EditDomenovKolvo.Text) do
  begin
    if FormSpamera.CLBDomenNeddList.Checked[i - 1] then
      EditDomenovCheckedKolvo.Text:= IntToStr(StrToInt(EditDomenovCheckedKolvo.Text) + 1);
  end;
end;

procedure TFormSpamera.CLBDomenNeddListClickCheck(Sender: TObject);
begin
RefreshKolChecked;
end;

end.
