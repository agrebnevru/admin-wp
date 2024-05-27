program admin_wp;

uses
  Forms,
  MainForm in 'MainForm.pas' {FormSpamera},
  SettingsForm in 'SettingsForm.pas' {FormSettings},
  PopupForm in 'PopupForm.pas' {FormPopup},
  AddNewDomenForm in 'AddNewDomenForm.pas' {FormAddNewDomen},
  AboutForm in 'AboutForm.pas' {FormAbout},
  RegistrationForm in 'RegistrationForm.pas' {FormRegistration},
  RegistrationThread in 'RegistrationThread.pas',
  CheckNewVerThread in 'CheckNewVerThread.pas',
  AddLinkThread in 'AddLinkThread.pas',
  DeletPartThread in 'DeletPartThread.pas',
  SettingsThrThread in 'SettingsThrThread.pas',
  SettingsThr2Thread in 'SettingsThr2Thread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormSpamera, FormSpamera);
  Application.CreateForm(TFormSettings, FormSettings);
  Application.CreateForm(TFormPopup, FormPopup);
  Application.CreateForm(TFormAddNewDomen, FormAddNewDomen);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormRegistration, FormRegistration);
  Application.Run;
end.
