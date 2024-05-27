unit AboutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Shellapi, ExtCtrls, ComCtrls, ToolWin;

type
  TFormAbout = class(TForm)
    MemoAbout: TMemo;
    LabelProgVersija: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    LabelProgrammName: TLabel;
    LabelLastVerCanDL: TLabel;
    LabelSite: TLabel;
    PanelButtom: TPanel;
    LabelCopy: TLabel;
    ButtonCloser: TButton;
    procedure FormCreate(Sender: TObject);
    procedure LabelSiteClick(Sender: TObject);
    procedure ButtonCloserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

uses MainForm;

{$R *.dfm}

procedure TFormAbout.ButtonCloserClick(Sender: TObject);
begin
Close;
end;

procedure TFormAbout.FormCreate(Sender: TObject);
begin
LabelProgVersija.Caption:= 'v' + FormSpamera.GetVerProg;
end;

procedure TFormAbout.LabelSiteClick(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar('http://adminwp.ucoz.ru/'), nil, nil, SW_SHOW);
end;

end.
