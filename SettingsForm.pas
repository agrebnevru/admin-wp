unit SettingsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, inifiles, ImgList, ToolWin;

type
  TFormSettings = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LabelKolvoDomen: TLabel;
    EditDomenKolVo: TEdit;
    UpDown1: TUpDown;
    LBDomenList: TListBox;
    ButtonAddDomen: TButton;
    ButtonDelDomen: TButton;
    PanelDown: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EditTimeGoNextSite: TEdit;
    UpDown2: TUpDown;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditInfoDomen: TEdit;
    EditInfoLogin: TEdit;
    EditInfoPass: TEdit;
    ILPageIcons: TImageList;
    Label7: TLabel;
    EditIdLastDomen: TEdit;
    Image1: TImage;
    Image2: TImage;
    PanelButtom: TPanel;
    LabelCopy: TLabel;
    ButtonSave: TButton;
    ButtonCancel: TButton;
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure ButtonAddDomenClick(Sender: TObject);
    procedure ListRefresh;
    procedure FormShow(Sender: TObject);
    procedure LBDomenListClick(Sender: TObject);
    procedure ButtonDelDomenClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure SettingsSave;
    procedure SettingsLoad;
  public
    { Public declarations }
  end;

var
  FormSettings: TFormSettings;
  inifile: tinifile;

implementation

uses MainForm, AddNewDomenForm;

{$R *.dfm}

procedure TFormSettings.SettingsSave;
begin
//Zadergka:= StrToInt(EditTimeGoNextSite.Text);
inifile:=tinifile.Create(extractfilepath(application.ExeName)+'Config.ini');
inifile.WriteInteger('General config', 'DomenKolichestvo', UpDown1.Position);
inifile.WriteInteger('General config', 'Zadergka', UpDown2.Position);
inifile.Free;
FormSpamera.EditDomenovKolvo.Text:= EditDomenKolVo.Text;
end;

procedure TFormSettings.ToolButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormSettings.ToolButton2Click(Sender: TObject);
begin
SettingsSave;
Close;
end;

procedure TFormSettings.SettingsLoad;
begin
inifile:=tinifile.Create(extractfilepath(application.ExeName)+'Config.ini');
UpDown1.Position:= inifile.ReadInteger('General config', 'DomenKolichestvo', 11);
UpDown2.Position:= inifile.ReadInteger('General config', 'Zadergka', 1000);
inifile.Free;
end;

procedure TFormSettings.LBDomenListClick(Sender: TObject);
begin
if (LBDomenList.ItemIndex>=0) AND (FileExists(extractfilepath(application.ExeName)+LBDomenList.Items.Strings[LBDomenList.ItemIndex])) then
begin
  inifile:=tinifile.Create(extractfilepath(application.ExeName)+LBDomenList.Items.Strings[LBDomenList.ItemIndex]);
  EditInfoDomen.Text:= inifile.ReadString('General config', 'Domen', '');
  EditInfoLogin.Text:= inifile.ReadString('General config', 'Login', '');
  EditInfoPass.Text:= inifile.ReadString('General config', 'Password', '');
  inifile.Free;
end;
end;

procedure TFormSettings.ListRefresh;
var
i: integer;
begin
FormSpamera.DomenListRefresh;
LBDomenList.Items.Clear;
for i := 1 to StrToInt(FormSpamera.EditDomenovKolvo.Text) do
begin
  LBDomenList.Items.Add('\db\site\blog' + IntToStr(i) + '.ini');
end;
EditIdLastDomen.Text:= IntToStr(LBDomenList.Items.Count);
end;

procedure TFormSettings.ButtonSaveClick(Sender: TObject);
begin
SettingsSave;
Close;
end;

procedure TFormSettings.FormShow(Sender: TObject);
begin
SettingsLoad;
ListRefresh;
end;

procedure TFormSettings.Button1Click(Sender: TObject);
begin
SettingsSave;
Close;
end;

procedure TFormSettings.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFormSettings.ButtonAddDomenClick(Sender: TObject);
begin
FormAddNewDomen.ShowModal;
end;

procedure TFormSettings.ButtonCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFormSettings.ButtonDelDomenClick(Sender: TObject);
begin
if (LBDomenList.ItemIndex>=0) AND (FileExists(extractfilepath(application.ExeName)+LBDomenList.Items.Strings[LBDomenList.ItemIndex])) then
begin
  if MessageDlg('¬ы уверены, что хотите удалить данный домен?', mtWarning, [mbYes, mbNo], 0)=mrYes then
  begin
    DeleteFile(extractfilepath(application.ExeName)+LBDomenList.Items.Strings[LBDomenList.ItemIndex]);
    RenameFile(extractfilepath(application.ExeName)+LBDomenList.Items.Strings[StrToInt(EditIdLastDomen.Text)-1],
      extractfilepath(application.ExeName)+LBDomenList.Items.Strings[LBDomenList.ItemIndex]);
    FormSpamera.EditDomenovKolvo.Text:= IntToStr(StrToInt(FormSpamera.EditDomenovKolvo.Text)-1);
    EditDomenKolvo.Text:= FormSpamera.EditDomenovKolvo.Text;
    ListRefresh;
  end;
end
else
begin
   ShowMessage('ƒл€ начала нужно выбрать хот€ бы один домен!');
end;
end;

end.
