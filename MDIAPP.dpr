program Mdiapp;

uses
  Forms,
  SysUtils,
  MAIN in 'MAIN.PAS' {MainForm},
  CHILDWIN in 'CHILDWIN.PAS' {MDIChild},
  about in 'about.pas' {AboutBox},
  CardsForm in 'CardsForm.pas' {CardsFrm},
  dataModule in 'dataModule.pas' {mainDataModule: TDataModule},
  NewPacientForm in 'NewPacientForm.pas' {NewPacientFrm},
  Unit1 in 'Unit1.pas' {BaseForm},
  BaseFormUnit in 'BaseFormUnit.pas' {BaseFrom},
  Journal in 'Journal.pas' {JournalForm},
  Constants in 'Constants.pas',
  PriemJournal in 'PriemJournal.pas' {PriemJournalForm},
  Wizard in 'Wizard.pas' {WizardForm},
  Login in 'Login.pas' {LoginForm},
  DictEditFrm in 'DictEditFrm.pas' {DictEditForm},
  Functions in 'Functions.pas',
  ZubCardForm in 'ZubCardForm.pas' {ZubForm},
  Lech in 'Lech.pas',
  LechFrm in 'LechFrm.pas' {lechForm},
  HistFrm in 'HistFrm.pas' {HistForm},
  PrintFrm in 'PrintFrm.pas',
  OrtFrm in 'OrtFrm.pas' {OrtForm},
  FilesFrm in 'FilesFrm.pas' {FilesForm},
  Word_TLB in 'C:\Users\k6313\OneDrive\Документы\Embarcadero\Studio\21.0\Imports\Word_TLB.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Автоматизированная система "Веда"';
  Application.HelpFile := 'C:\Documents and Settings\Marina\Мои документы\fgfgf.ico';

  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TmainDataModule, mainDataModule);
  Application.CreateForm(TNewPacientFrm, NewPacientFrm);
  Application.CreateForm(TCardsFrm, CardsFrm);
  Application.CreateForm(TPriemJournalForm, PriemJournalForm);
  Application.CreateForm(TWizardForm, WizardForm);
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TZubForm, ZubForm);
  Application.CreateForm(TlechForm, lechForm);
  Application.CreateForm(THistForm, HistForm);
  Application.CreateForm(TJournalForm, JournalForm);
  Application.CreateForm(TPrintForm, PrintForm);
  Application.CreateForm(TOrtForm, OrtForm);
  Application.CreateForm(TFilesForm, FilesForm);
  Application.Run;
end.
