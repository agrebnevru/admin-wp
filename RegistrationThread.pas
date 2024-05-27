unit RegistrationThread;

interface

uses
  Classes, SysUtils, NB30, idHTTP, IdComponent, IdTCPConnection, IdTCPClient,
  IdBaseComponent, IdCookieManager, Dialogs;

type
  Registration = class(TThread)
  private
    { Private declarations }
    procedure CheckRegistration(stroke, TimeDate, TimeTime: string);
  protected
    procedure Execute; override;
  end;

const
  Server = 'http://twwk-on.ru';

implementation

uses MainForm, RegistrationForm;

{ Registration }

function GetAdapterInfo(Lana: Char): String;
var
  Adapter: TAdapterStatus;
  NCB: TNCB;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBRESET);
  NCB.ncb_lana_num := AnsiChar(Lana);
  if Netbios(@NCB) <> Char(NRC_GOODRET) then
  begin
    Result := 'mac not found';
    Exit;
  end;

  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBASTAT);
  NCB.ncb_lana_num := AnsiChar(Lana);
  NCB.ncb_callname := '*';

  FillChar(Adapter, SizeOf(Adapter), 0);
  NCB.ncb_buffer := @Adapter;
  NCB.ncb_length := SizeOf(Adapter);
  if Netbios(@NCB) <> Char(NRC_GOODRET) then
  begin
    Result := 'mac not found';
    Exit;
  end;
  Result := IntToHex(Byte(Adapter.adapter_address[0]), 2) + '-' + IntToHex
    (Byte(Adapter.adapter_address[1]), 2) + '-' + IntToHex
    (Byte(Adapter.adapter_address[2]), 2) + '-' + IntToHex
    (Byte(Adapter.adapter_address[3]), 2) + '-' + IntToHex
    (Byte(Adapter.adapter_address[4]), 2) + '-' + IntToHex
    (Byte(Adapter.adapter_address[5]), 2);
end;

function GetMACAddress: string;
var
  AdapterList: TLanaEnum;
  NCB: TNCB;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBENUM);
  NCB.ncb_buffer := @AdapterList;
  NCB.ncb_length := SizeOf(AdapterList);
  Netbios(@NCB);
  if Byte(AdapterList.length) > 0 then
    Result := GetAdapterInfo(Char(AdapterList.Lana[0]))
  else
    Result := 'mac not found';
end;

procedure Registration.CheckRegistration(stroke, TimeDate, TimeTime: string);
var
  i: integer;
  KolVo, MegInt: integer;
  MegStrok: string;
  key1, key2, key3, key4: boolean;
begin
  // '09.06.2010';
  // '12.02.34';
  //
  // Get string length = 100!
  //
  if length(stroke) <> 100 then
  begin
    key1 := false;
    //FormRegistration.Edit1.Text := 'Неверная длина = ' + IntToStr(length(stroke));
  end
  else
  begin
    //FormRegistration.Edit1.Text := 'Длина нормальная';
    key1 := true;
  end;
  //
  // after 34+20 symbol need get 02
  //
  MegStrok := Copy(stroke, StrToInt(Copy(TimeTime, 7, 2)) + 1 + 20, 2);
  if Copy(TimeTime, 4, 2) <> MegStrok then
  begin
    //FormRegistration.Edit2.Text := Copy(TimeTime, 4, 2) + ' <> ' + MegStrok;
    key2 := false;
  end
  else
  begin
    //FormRegistration.Edit2.Text := '#2 true';
    key2 := true;
  end;
  //
  // after 10 symbol need get 12
  //
  MegStrok := Copy(stroke, StrToInt(Copy(TimeDate, 9, 2)) + 1, 2);
  if Copy(TimeTime, 0, 2) <> MegStrok then
  begin
    //FormRegistration.Edit3.Text := Copy(TimeTime, 0, 2) + '<>' + MegStrok;
    key3 := false;
  end
  else
  begin
    //FormRegistration.Edit3.Text := '#3 true';
    key3 := true;
  end;
  //
  // 09/2 symbol 06
  //
  MegInt := Trunc(StrToInt(Copy(TimeDate, 0, 2)) / 2);
  MegStrok := Copy(TimeDate, 4, 2);
  KolVo := 0;
  for i := 0 to length(stroke) - 1 do
  begin
    if Copy(stroke, i, 2) = MegStrok then
      inc(KolVo);
  end;
  if MegInt <> KolVo then
  begin
    //FormRegistration.Edit4.Text := IntToStr(MegInt) + '<>' + IntToStr(KolVo);
    key4 := false;
  end
  else
  begin
    //FormRegistration.Edit4.Text := '#4 true';
    key4 := true;
  end;

  if key1 AND key2 AND key3 AND key4 then
  begin
    FormSpamera.LabelInformer.Caption:= 'Удачная авторизация. Ваш ключ является подлинным.';
    FormSpamera.TimerInformera.Enabled:= true;
    FormSpamera.ButtonStartPostDo.Enabled := true;
    FormSpamera.ButtonStartSettingsDo.Enabled := true;
    FormSpamera.ButtonStartSettings2Do.Enabled := true;
    FormSpamera.ButtonStartDeleteDo.Enabled := true;
    if not KeyReg then
      LC:= FormRegistration.MaskEditLicenceCode.Text;
    KeyReg:= true;
    FormRegistration.Close;
  end
  else
  begin
    FormSpamera.LabelInformer.Caption:= 'Авторизация не удалась. Ваш ключ не является подлинным, либо срок действия вашего ключа истек.';
    FormSpamera.TimerInformera.Enabled:= true;
    FormRegistration.RxGIFAnimator1.visible := false;
    FormSpamera.ButtonStartPostDo.Enabled := false;
    FormSpamera.ButtonStartSettingsDo.Enabled := false;
    FormSpamera.ButtonStartSettings2Do.Enabled := false;
    FormSpamera.ButtonStartDeleteDo.Enabled := false;
    FormRegistration.ButtonOk.Enabled:= true;
    FormRegistration.ButtonCancel.Enabled:= true;
  end;
end;

procedure Registration.Execute;
var
  http: tidhttp;
  CM: TidCookieManager;
  Data: TStringList;
  StrPage, TimeStr: string;
  NowDate, NowTime: string;
begin
  DateTimeToString(NowDate, 'dd.mm.yyyy', date);
  DateTimeToString(NowTime, 'hh.mm.ss', time);
  TimeStr := NowDate + '_' + NowTime;
  // NowDate := '09.06.2010';
  // NowTime := '12.02.34';
  { Place thread code here }
  try
    http := tidhttp.Create();
    CM := TidCookieManager.Create(http);
    Data := TStringList.Create;
    http.AllowCookies := true;
    http.CookieManager := CM;
    http.HandleRedirects := true;
    Data.Add('mac=' + GetMACAddress);
    Data.Add('lc=' + FormRegistration.MaskEditLicenceCode.Text);
    Data.Add('time=' + TimeStr);
    StrPage := http.Post(Server + '/wp.php', Data);
  finally
    Data.Free;
    CM.Free;
    http.Free;
  end;
  sleep(250);
  if (Length(StrPage)>95) AND (Length(StrPage)<105) then
    CheckRegistration(StrPage, NowDate, NowTime);
end;

end.
