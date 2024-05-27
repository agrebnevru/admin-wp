unit RegistrationForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RegistrationThread, inifiles, ComCtrls, ExtCtrls,
  rxAnimate, rxGIFCtrl;

type
  TFormRegistration = class(TForm)
    MaskEditLicenceCode: TMaskEdit;
    ButtonOk: TButton;
    ButtonCancel: TButton;
    LabelProgrammName: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Image2: TImage;
    RxGIFAnimator1: TRxGIFAnimator;
    PanelButtom: TPanel;
    LabelCopy: TLabel;
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonOkClick(Sender: TObject);
  private
    { Private declarations }
    co2: Registration;
    procedure SaveLC;
  public
    { Public declarations }
  end;

var
  FormRegistration: TFormRegistration;
  inifile: tinifile;

implementation

uses MainForm;

{$R *.dfm}

procedure TFormRegistration.SaveLC;
begin
inifile:=tinifile.Create(extractfilepath(application.ExeName)+'Config.ini');
inifile.WriteString('Registration Data', 'Licence Code', MaskEditLicenceCode.Text);
inifile.WriteBool('Registration Data', 'Already Reg', true);
inifile.Free;
end;

procedure TFormRegistration.ButtonOkClick(Sender: TObject);
begin
 co2:=Registration.Create(true);
 co2.Resume;
 co2.Priority:=tpIdle;
 RxGIFAnimator1.Visible:= true;
 ButtonOk.Enabled:= false;
 ButtonCancel.Enabled:= false;
end;

procedure TFormRegistration.ButtonCancelClick(Sender: TObject);
begin
Close;
end;

end.
