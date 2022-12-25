unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, jpeg, System.ImageList, System.Actions;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    mnuItemUsers: TMenuItem;
    mnuItemNerse: TMenuItem;
    mnuItemDoctor: TMenuItem;
    mnuItemStock: TMenuItem;
    N1: TMenuItem;
    mnuItemExit: TMenuItem;
    OpenDialog: TOpenDialog;
    mnuItemAdmin: TMenuItem;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileNew1: TAction;
    FileSave1: TAction;
    FileExit1: TAction;
    FileOpen1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    FileClose1: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    mnuCard: TToolButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    pnlHelp: TPanel;
    mnuJournal2: TToolButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    mnuJournal: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    mnuSklad: TToolButton;
    ToolButton7: TToolButton;
    mnuMedicine: TToolButton;
    ToolButton10: TToolButton;
    mnuReports: TToolButton;
    ToolButton12: TToolButton;
    mnuAnalize: TToolButton;
    ToolButton14: TToolButton;
    mnuSettings: TToolButton;
    mnuItemCards: TMenuItem;
    mnuItemWrite: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    mnuDictEdit: TToolButton;
    N2: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure mnuItemNerseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuCardMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mnuJournalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mnuJournal2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mnuCardClick(Sender: TObject);
    procedure mnuJournalClick(Sender: TObject);
    procedure mnuItemDoctorClick(Sender: TObject);
    procedure mnuItemAdminClick(Sender: TObject);
    procedure mnuSettingsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mnuDictEditClick(Sender: TObject);
    procedure mnuDictEditMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mnuJournal2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure mnuAnalizeClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  
implementation

{$R *.dfm}

uses CHILDWIN, about,  CardsForm, Journal, Login, DictEditFrm, OrtFrm;

procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  Child.Hide;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TMainForm.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TMainForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.mnuItemNerseClick(Sender: TObject);
begin
Panel1.Hide;
mnuAnalize.Visible:=false;
mnuJournal2.Visible:=false;
mnuSklad.Visible:=false;
mnuMedicine.Visible:=false;
mnuSettings.Visible:=false;
mnuReports.Visible:=false;
mnuJournal.Visible:=true;
mnuCard.Visible:=true;
mnuItemCards.Visible:=true;
mnuItemWrite.Visible:=true;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
MainForm.WindowState:=wsMaximized;
Panel1.Hide;
CardsFrm.Show;

end;

procedure TMainForm.mnuCardMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
pnlHelp.Caption:='Картотека пациентов';
end;

procedure TMainForm.mnuJournalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pnlHelp.Caption:='Журнал записи';
end;

procedure TMainForm.mnuJournal2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pnlHelp.Caption:='Журнал приема';
end;

procedure TMainForm.ToolBar2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
pnlHelp.Caption:='';
end;

procedure TMainForm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
pnlHelp.Caption:='';
end;

procedure TMainForm.mnuCardClick(Sender: TObject);
begin
Panel1.Hide;
if(CardsFrm=nil) then
  begin
  Application.CreateForm(TCardsFrm, CardsFrm);
  end;
CardsFrm.Show;
end;

procedure TMainForm.mnuJournalClick(Sender: TObject);
begin
JournalForm.Show;
end;

procedure TMainForm.mnuItemDoctorClick(Sender: TObject);
begin
Panel1.Hide;
mnuAnalize.Visible:=false;
mnuJournal2.Visible:=true;
mnuSklad.Visible:=false;
mnuMedicine.Visible:=false;
mnuSettings.Visible:=false;
mnuReports.Visible:=false;
mnuJournal.Visible:=true;
mnuCard.Visible:=true;
mnuItemCards.Visible:=true;
mnuItemWrite.Visible:=true;
end;

procedure TMainForm.mnuItemAdminClick(Sender: TObject);
begin
if(LoginForm.ShowModal=mrOK) then
  begin
  if(DictEditForm=nil) then
    begin
    Application.CreateForm(TDictEditForm, DictEditForm);
    end;
  DictEditForm.Show;
  end;
end;

procedure TMainForm.mnuSettingsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlHelp.Caption:='Настройки системы';
end;

procedure TMainForm.mnuDictEditClick(Sender: TObject);
begin
if(LoginForm.ShowModal=mrOk) then
  begin
  if(DictEditForm=nil) then
    begin
    Application.CreateForm(TDictEditForm, DictEditForm);
    end;
  DictEditForm.Show;
  end;
end;

procedure TMainForm.mnuDictEditMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlHelp.Caption:='Редактирование справочников';
end;

procedure TMainForm.mnuJournal2Click(Sender: TObject);
begin
JournalForm.Show;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
AboutBox.ShowModal;
end;

procedure TMainForm.mnuAnalizeClick(Sender: TObject);
begin
OrtForm.ShowModal;
end;

end.
