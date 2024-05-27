unit CheckNewVerThread;

interface

uses
  Classes, idHTTP, IdComponent, IdTCPConnection, IdTCPClient,
  IdBaseComponent;

type
  ThreadCheckNewVer = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

const
  Server = 'http://twwk-on.ru';

implementation

uses MainForm;

{ ThreadCheckNewVer }

function CheckNewVer: boolean;
var
  http2: tidhttp;
  StrPage2: string;
begin
result:= false;
  try
    http2 := tidhttp.Create();
    http2.AllowCookies := true;
    http2.HandleRedirects := true;
    StrPage2:= http2.Get(Server + '/lastver.php');
  finally
    http2.Free;
  end;
if StrPage2<>FormSpamera.GetVerProg then
  result:= true;
end;

procedure ThreadCheckNewVer.Execute;
begin
  { Place thread code here }
if CheckNewVer then
  FormSpamera.LabelNewVerIsset.Visible:= true;
end;

end.
