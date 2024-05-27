unit AddNewDomenForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, inifiles, ExtCtrls;

type
  TFormAddNewDomen = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditAddNewDomen: TEdit;
    EditAddNewLogin: TEdit;
    EditAddNewPass: TEdit;
    ButtonCancel: TButton;
    ButtonAdd: TButton;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    PanelButtom: TPanel;
    LabelCopy: TLabel;
    Label4: TLabel;
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddNewDomen: TFormAddNewDomen;
  inifile: tinifile;

implementation

uses MainForm, SettingsForm;

{$R *.dfm}

procedure TFormAddNewDomen.ButtonAddClick(Sender: TObject);
begin
inifile:= tinifile.Create(extractfilepath(application.ExeName)+'db/site/blog' + IntToStr(StrToInt(FormSpamera.EditDomenovKolvo.Text)+1) + '.ini');
inifile.WriteString('General config', 'Domen', EditAddNewDomen.Text);
inifile.WriteString('General config', 'Login', EditAddNewLogin.Text);
inifile.WriteString('General config', 'Password', EditAddNewPass.Text);
inifile.Free;
FormSpamera.EditDomenovKolvo.Text:= IntToStr(StrToInt(FormSpamera.EditDomenovKolvo.Text)+1);
FormSettings.EditDomenKolvo.Text:= FormSpamera.EditDomenovKolvo.Text;
FormSettings.ListRefresh;
Close;
end;

procedure TFormAddNewDomen.ButtonCancelClick(Sender: TObject);
begin
Close;
end;

end.
