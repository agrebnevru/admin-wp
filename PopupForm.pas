unit PopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, pngimage, ExtCtrls;

type
  TFormPopup = class(TForm)
    PBDomenDo: TProgressBar;
    ImageBackGround: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure PanelkaRefresher;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPopup: TFormPopup;

implementation

uses MainForm;

{$R *.dfm}

procedure TFormPopup.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
sc_dragmove = $f012;
begin
releasecapture;
FormPopup.Perform(wm_syscommand, sc_dragmove, 0);
end;

procedure TFormPopup.PanelkaRefresher;
begin
PBDomenDo.Min:= 0;
FormSpamera.PBMainFormDomenDo.Min:= 0;
PBDomenDo.Max:= StrToInt(FormSpamera.EditDomenovCheckedKolvo.Text);
FormSpamera.PBMainFormDomenDo.Max:= StrToInt(FormSpamera.EditDomenovCheckedKolvo.Text);
FormSpamera.PBMainFormDomenDo.Position:= StrToInt(FormSpamera.EditDomenovKolvo.Text);
PBDomenDo.Position:= DomenTaken;
FormSpamera.PBMainFormDomenDo.Position:= DomenTaken;

Label2.Caption:= FormSpamera.EditErrorDomenKoilvio.Text;
Label8.Caption:= IntToStr(ErrorAuthoriz);
Label9.Caption:= IntToStr(ErrorPOST);
Label4.Caption:= IntToStr(DomenTaken);
Label11.Caption:= IntToStr(StrToInt(FormSpamera.EditDomenovCheckedKolvo.Text)-(DomenTaken));

FormSpamera.TI.Hint:= 'Admin WP - [' + IntToStr(DomenTaken) + '/' + FormSpamera.EditDomenovCheckedKolvo.Text + ']';
end;

procedure TFormPopup.FormCreate(Sender: TObject);
begin
FormPopUp.Left:=screen.WorkAreaWidth-FormPopUp.Width-10;
FormPopUp.Top:=screen.WorkAreaHeight-FormPopUp.Height-10;

FormPopUp.FormStyle:=fsStayOnTop;
SetWindowLong(Handle, GWL_HWNDPARENT, GetDesktopWindow);
SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOMOVE);
end;

end.
