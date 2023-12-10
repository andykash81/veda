unit Wizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Buttons, OleServer, ComObj,
  Word_TLB;

type
  TWizardForm = class(TForm)
    PageControl1: TPageControl;
    sheetDoctor: TTabSheet;
    sheetTeeth: TTabSheet;
    pnlData: TPanel;
    pnlControl: TPanel;
    btnNext: TButton;
    btnClose: TButton;
    btnPrev: TButton;
    cbDoctor: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    edtDate: TEdit;
    calDate: TMonthCalendar;
    sheetZubCard: TTabSheet;
    tvl8: TButton;
    tvl7: TButton;
    tvl6: TButton;
    tvl5: TButton;
    tvl2: TButton;
    tvl1: TButton;
    tvl3: TButton;
    tvl4: TButton;
    tnl8: TButton;
    tnl7: TButton;
    tnl6: TButton;
    tnl5: TButton;
    tnl4: TButton;
    tnl3: TButton;
    tnl2: TButton;
    tnl1: TButton;
    tvr1: TButton;
    tvr2: TButton;
    tvr3: TButton;
    tvr4: TButton;
    tvr5: TButton;
    tvr6: TButton;
    tvr7: TButton;
    tvr8: TButton;
    tnr1: TButton;
    tnr2: TButton;
    tnr3: TButton;
    tnr4: TButton;
    tnr5: TButton;
    tnr6: TButton;
    tnr7: TButton;
    tnr8: TButton;
    btnO: TButton;
    btnR: TButton;
    btnC: TButton;
    btnP: TButton;
    btnA: TButton;
    btnI: TButton;
    btnPl: TButton;
    btnPt: TButton;
    btnK: TButton;
    btnIs: TButton;
    btnIII: TButton;
    btnII: TButton;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    GroupBox2: TGroupBox;
    diagnozesTree: TTreeView;
    Panel1: TPanel;
    cbLech: TComboBox;
    btnGoLech: TBitBtn;
    sheetCorrect: TTabSheet;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    btnDelRecord: TBitBtn;
    lwAddedTeeth: TListView;
    memPriemDesc: TMemo;
    cbActions: TComboBox;
    GroupBox4: TGroupBox;
    Panel3: TPanel;
    Label3: TLabel;
    memPrikus: TMemo;
    Label4: TLabel;
    memPsz: TMemo;
    Label5: TLabel;
    chkSanus: TCheckBox;
    cbPrikus: TComboBox;
    cbPsz: TComboBox;
    btnAddPrikus: TButton;
    btnAddPsz: TButton;
    Button33: TButton;
    btnLoadFiles: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    RadioGroup1: TRadioGroup;
    Panel4: TPanel;
    tvml1: TButton;
    tvml2: TButton;
    tvml3: TButton;
    tvml4: TButton;
    tvml5: TButton;
    tnml1: TButton;
    tnml2: TButton;
    tnml3: TButton;
    tnml4: TButton;
    tnml5: TButton;
    tvmr1: TButton;
    tvmr2: TButton;
    tvmr3: TButton;
    tvmr4: TButton;
    tvmr5: TButton;
    tnmr1: TButton;
    tnmr2: TButton;
    tnmr3: TButton;
    tnmr4: TButton;
    tnmr5: TButton;
    procedure addLabelToButton(Sender, Target:TButton; id:double);
    procedure addRecordsToZubCard(zubPriemId:double);
    function addZubCard(btnLetter, btnZub:TButton):double;
    procedure btnCloseClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure ButtonEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure calDateClick(Sender: TObject);
    procedure ClearLabels;
 //   procedure deleteLabel(Sender: TObject);
    procedure edtDateChange(Sender: TObject);
    procedure enableButtons(enable:Boolean);
    procedure enableButtonsOnCard(enable:boolean);
    procedure fillBtnsFromDatabase;
    procedure fillCbFromDict(parentDictId:integer;cb:TComboBox);
    procedure FormShow(Sender: TObject);
    procedure initializeBtns;
    procedure insertIntoZubCard(letterId,ZubId,ZubPriemId:double);
    procedure makeTextPriemDesc;
    function  makeWord(index:integer;  PriemDesc:TMemo;sdoctor:string;datePriem:TDateTime;isVisible:boolean;dirName:wideString; FileName:string):string;
    function returnButtonByConstant(constant:integer):TButton;
    function returnConstByButton(btn:TButton; isZub:boolean):integer;
    function returnIdByLabel(lbl:TLabel):double;
    function returnList(id_:TButton):Tlist;
    function returnList1(id_:TButton):Tlist;
    function returnListByLabel(lbl:TLabel):TList;
    procedure tDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure diagnozesTreeDblClick(Sender: TObject);
    procedure btnDelRecordClick(Sender: TObject);
    procedure btnGoLechClick(Sender: TObject);
    procedure cbLechChange(Sender: TObject);
    procedure lwAddedTeethDblClick(Sender: TObject);
    function saveToDir:widestring;
    procedure zubClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddPrikusClick(Sender: TObject);
    procedure btnAddPszClick(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure lwAddedTeethInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure btnLoadFilesClick(Sender: TObject);
    function WordStringReplace(SearchString, ReplaceString:string;
WordApp, Word: Variant):boolean;
    procedure RadioGroup1Click(Sender: TObject);
  private
  wasOnTeeth:bool;
  wasOnDiagnoz:bool;
  wasOnLechenie:bool;
  zubAdded:bool;
    { Private declarations }
  public
  PacientId:string;
    { Public declarations }
  end;

  type
  PGList = ^AGList;
    AGList = record
    zubG: string;
    diagIdG: double;
    lechIdG: integer;
  end;

var
  WizardForm: TWizardForm;
  lblCount:integer;
  btnsList, mbtnsList:Tlist;
  idsList:TList;
  recsToString:TList;
  ListDiagssNodes:TList;
  curItem:TListItem;
  forMemList:TList;
  gArecord: PGList;
  Lechs:TStringList;
  shortDesc:string;
  incStr:string;
implementation

uses dataModule, Constants, ADODB, DB, DictEditFrm, DateUtils, Functions,
  StrUtils, ZubCardForm, LechFrm, FilesFrm;

{$R *.dfm}

procedure TWizardForm.FormShow(Sender: TObject);
var i{,count} : integer;
begin
   RadioGroup1.ItemIndex := 0;
   zubAdded:=false;
   incStr:='';
   lblCount:=0;
   idsList:=TList.Create;
   recsToString:=TList.Create;
   Lechs:=TStringList.Create;
   ListDiagssNodes:=TList.Create;
   forMemList:=TList.Create;
   cbLech.Enabled:=false;
   btnGoLech.Enabled:=false;
   diagnozesTree.Enabled:=false;
   enableButtons(true);
   calDate.Date:=Today;
   {заполним лист с кнопками имеющимися кнопками и создадим листы}
   initializeBtns;
   //заполним листы кнопок из базы
   fillBtnsFromDatabase;
   btnPrev.Visible:=false;
   btnNext.Enabled:=true;
   btnNext.Caption:='Далее >>';
   cbDoctor.Items.Clear;
   edtDate.Text:='';
   cbDoctor.Text:='';
   wasOnTeeth:=false;
   wasOnDiagnoz:=false;
   sheetZubCard.TabVisible:=true;
   sheetDoctor.TabVisible:=false;
   sheetTeeth.TabVisible:=false;
   sheetCorrect.TabVisible:=false;
   DictEditForm.makeDiagnozesTree(diagnozesTree,ListDiagssNodes);
   // Заполним список докторов
   mainDataModule.dataSetDoctorsList1.Active:=false;
   mainDataModule.dataSetDoctorsList1.SQL.Text:='select "Sotr"."Code_sotr", "Sotr"."FIO" from "Sotr" where "Rights" = '+IntToStr(Constants.RIGHTS_DOCTOR);
   mainDataModule.dataSetDoctorsList1.Active:=true;
   if(mainDataModule.dataSetDoctorsList1.RecordCount>0) then
    begin
    mainDataModule.dataSetDoctorsList1.First;
      for i:=1 to mainDataModule.dataSetDoctorsList1.RecordCount do
        begin
        cbDoctor.Items.AddObject(mainDataModule.dataSetDoctorsList1.FieldByName('FIO').AsString, TObject(mainDataModule.dataSetDoctorsList1.FieldByName('code_sotr').AsInteger));
        mainDataModule.dataSetDoctorsList1.Next;
        end;
    end;
    with mainDataModule do
      begin
      Functions.ActivateDataSetWithParam('pacientId_', PacientId,dataSetPszPrikus1);
      with dataSetPszPrikus1 do
        begin
        memPrikus.Text:=FieldByName('prikus').AsString;
        memPsz.Text:=FieldByName('psz').AsString;
        end;
      end;
Functions.ActivateDataSetWithParam('cardId_',PacientId,mainDataModule.dataSetPriemCount1);
{count:=mainDataModule.dataSetPriemCount.FieldByName('priemCount').AsInteger;}
{if(count=0) then
  begin
  cbActions.ItemIndex:=2;
  end
else if(count=1) then
  begin
  cbActions.ItemIndex:=3;
  end
else
  begin
  cbActions.ItemIndex:=1;
  end;}
cbActions.ItemIndex:=0;
//заполним листы с прикусами и псз
fillCbFromDict(Constants.PRIKUS,cbPrikus);
fillCbFromDict(Constants.PSZ, cbPsz);
enableButtonsOnCard(false);
end;

procedure TWizardForm.enableButtonsOnCard(enable:boolean);
begin
btnO.Enabled:=enable;
btnR.Enabled:=enable;
btnC.Enabled:=enable;
btnP.Enabled:=enable;
btnA.Enabled:=enable;
btnI.Enabled:=enable;
btnPl.Enabled:=enable;
btnPt.Enabled:=enable;
btnK.Enabled:=enable;
btnIs.Enabled:=enable;
btnIII.Enabled:=enable;
btnII.Enabled:=enable;

tvl1.Enabled:=enable;
tvl2.Enabled:=enable;
tvl3.Enabled:=enable;
tvl4.Enabled:=enable;
tvl5.Enabled:=enable;
tvl6.Enabled:=enable;
tvl7.Enabled:=enable;
tvl8.Enabled:=enable;

tvr1.Enabled:=enable;
tvr2.Enabled:=enable;
tvr3.Enabled:=enable;
tvr4.Enabled:=enable;
tvr5.Enabled:=enable;
tvr6.Enabled:=enable;
tvr7.Enabled:=enable;
tvr8.Enabled:=enable;

tnl1.Enabled:=enable;
tnl2.Enabled:=enable;
tnl3.Enabled:=enable;
tnl4.Enabled:=enable;
tnl5.Enabled:=enable;
tnl6.Enabled:=enable;
tnl7.Enabled:=enable;
tnl8.Enabled:=enable;

tnr1.Enabled:=enable;
tnr2.Enabled:=enable;
tnr3.Enabled:=enable;
tnr4.Enabled:=enable;
tnr5.Enabled:=enable;
tnr6.Enabled:=enable;
tnr7.Enabled:=enable;
tnr8.Enabled:=enable;

tvml1.Enabled:=enable;
tvml2.Enabled:=enable;
tvml3.Enabled:=enable;
tvml4.Enabled:=enable;
tvml5.Enabled:=enable;

tnml1.Enabled:=enable;
tnml2.Enabled:=enable;
tnml3.Enabled:=enable;
tnml4.Enabled:=enable;
tnml5.Enabled:=enable;

tvmr1.Enabled:=enable;
tvmr2.Enabled:=enable;
tvmr3.Enabled:=enable;
tvmr4.Enabled:=enable;
tvmr5.Enabled:=enable;

tnmr1.Enabled:=enable;
tnmr2.Enabled:=enable;
tnmr3.Enabled:=enable;
tnmr4.Enabled:=enable;
tnmr5.Enabled:=enable;
end;

procedure TWizardForm.fillCbFromDict(parentDictId:integer;cb:TComboBox);
var i:integer;
begin
with mainDataModule.dataSetDictBranch1 do
  begin
  Active:=false;
  SQL.Text:='select "Dict"."Description" from "Dict" where "ParentDictId" = '+IntTOStr(parentDictId);
  Active:=true;
  First;
  cb.Items.Clear;
  for i:=0 to RecordCount-1 do
    begin
    cb.Items.Add(FieldByName('Description').AsString);
    Next;
    end;
  end;
end;

{инициализирует лист кнопок для добавления в него новых лейблов}
procedure TWizardForm.initializeBtns;
type
    PNodeList = ^ANodeList;
    ANodeList = record
    btn: TButton;
    Letters: TList;
  end;
var i: integer; ANodeRecord: PNodeList;
begin
  btnsList:=TList.Create;
  mbtnsList:=TList.Create;
  for i := 0 to  (sheetZubCard.ControlCount-1) do
    begin
    if(sheetZubCard.Controls[i] is TButton)and(sheetZubCard.Controls[i].Name[1] = 't') then
      begin
      New(ANodeRecord);
      ANodeRecord^.btn:=TButton(sheetZubCard.Controls[i]);
      ANodeRecord^.Letters:=TList.Create;
      btnsList.Add(ANodeRecord);
      end;
    end;
    for i := 0 to  (Panel4.ControlCount-1) do
    begin
    if(Panel4.Controls[i] is TButton)and(Panel4.Controls[i].Name[1] = 't') then
      begin
      New(ANodeRecord);
      ANodeRecord^.btn:=TButton(Panel4.Controls[i]);
      ANodeRecord^.Letters:=TList.Create;
      mbtnsList.Add(ANodeRecord);
      end;
    end;
end;

//заполняет карту из базы - берет все имеющиеся буквы пациента и накидывает их
procedure TWizardForm.fillBtnsFromDatabase;
var i, zubId, letterId:integer ; btnSender, btnTarget:TButton; id:double;
begin
with mainDataModule.dataSetZubCard1 do
  begin
  Active:=false;
  Params.ParamValues['cardId_']:=PacientId;
  Active:=true;
  if(RecordCount>0) then
    begin
    First;
      for i:=0 to RecordCount-1 do
        begin
        letterId:= FieldByName('letterId').AsInteger;
        zubId:=FieldByName('zubId').AsInteger;
        id:=FieldByName('ZubCardId').AsFloat;
        Next;
        addLabelToButton(returnButtonByConstant(letterId),returnButtonByConstant(zubId),id);
        end;
    end;
  end;
end;

//возвращает какой кнопке соответсвует константа
function TWizardForm.returnButtonByConstant(constant:integer):TButton;
begin
 case constant of
        Constants.LETTER_O:returnButtonByConstant:=btnO;
        Constants.LETTER_R:returnButtonByConstant:=btnR;
        Constants.LETTER_C:returnButtonByConstant:=btnC;
        Constants.LETTER_P:returnButtonByConstant:=btnP;
        Constants.LETTER_Pt:returnButtonByConstant:=btnPt;
        Constants.LETTER_PP:returnButtonByConstant:=btnPl;
        Constants.LETTER_A:returnButtonByConstant:=btnA;
        Constants.LETTER_I:returnButtonByConstant:=btnI;
        Constants.LETTER_II:returnButtonByConstant:=btnII;
        Constants.LETTER_III:returnButtonByConstant:=btnIII;
        Constants.LETTER_K:returnButtonByConstant:=btnK;
        Constants.LETTER_IS:returnButtonByConstant:=btnIs;

        Constants.ZUB_18:returnButtonByConstant:=tvl8;
        Constants.ZUB_17:returnButtonByConstant:=tvl7;
        Constants.ZUB_16:returnButtonByConstant:=tvl6;
        Constants.ZUB_15:returnButtonByConstant:=tvl5;
        Constants.ZUB_14:returnButtonByConstant:=tvl4;
        Constants.ZUB_13:returnButtonByConstant:=tvl3;
        Constants.ZUB_12:returnButtonByConstant:=tvl2;
        Constants.ZUB_11:returnButtonByConstant:=tvl1;

        Constants.ZUB_21:returnButtonByConstant:=tvr1;
        Constants.ZUB_22:returnButtonByConstant:=tvr2;
        Constants.ZUB_23:returnButtonByConstant:=tvr3;
        Constants.ZUB_24:returnButtonByConstant:=tvr4;
        Constants.ZUB_25:returnButtonByConstant:=tvr5;
        Constants.ZUB_26:returnButtonByConstant:=tvr6;
        Constants.ZUB_27:returnButtonByConstant:=tvr7;
        Constants.ZUB_28:returnButtonByConstant:=tvr8;

        Constants.ZUB_38:returnButtonByConstant:=tnr8;
        Constants.ZUB_37:returnButtonByConstant:=tnr7;
        Constants.ZUB_36:returnButtonByConstant:=tnr6;
        Constants.ZUB_35:returnButtonByConstant:=tnr5;
        Constants.ZUB_34:returnButtonByConstant:=tnr4;
        Constants.ZUB_33:returnButtonByConstant:=tnr3;
        Constants.ZUB_32:returnButtonByConstant:=tnr2;
        Constants.ZUB_31:returnButtonByConstant:=tnr1;

        Constants.ZUB_41:returnButtonByConstant:=tnl1;
        Constants.ZUB_42:returnButtonByConstant:=tnl2;
        Constants.ZUB_43:returnButtonByConstant:=tnl3;
        Constants.ZUB_44:returnButtonByConstant:=tnl4;
        Constants.ZUB_45:returnButtonByConstant:=tnl5;
        Constants.ZUB_46:returnButtonByConstant:=tnl6;
        Constants.ZUB_47:returnButtonByConstant:=tnl7;
        Constants.ZUB_48:returnButtonByConstant:=tnl8;

        Constants.ZUB_51:returnButtonByConstant:=tvml1;
        Constants.ZUB_52:returnButtonByConstant:=tvml2;
        Constants.ZUB_53:returnButtonByConstant:=tvml3;
        Constants.ZUB_54:returnButtonByConstant:=tvml4;
        Constants.ZUB_55:returnButtonByConstant:=tvml5;

        Constants.ZUB_61:returnButtonByConstant:=tvmr1;
        Constants.ZUB_62:returnButtonByConstant:=tvmr2;
        Constants.ZUB_63:returnButtonByConstant:=tvmr3;
        Constants.ZUB_64:returnButtonByConstant:=tvmr4;
        Constants.ZUB_65:returnButtonByConstant:=tvmr5;

        Constants.ZUB_71:returnButtonByConstant:=tnmr1;
        Constants.ZUB_72:returnButtonByConstant:=tnmr2;
        Constants.ZUB_73:returnButtonByConstant:=tnmr3;
        Constants.ZUB_74:returnButtonByConstant:=tnmr4;
        Constants.ZUB_75:returnButtonByConstant:=tnmr5;

        Constants.ZUB_81:returnButtonByConstant:=tnml1;
        Constants.ZUB_82:returnButtonByConstant:=tnml2;
        Constants.ZUB_83:returnButtonByConstant:=tnml3;
        Constants.ZUB_84:returnButtonByConstant:=tnml4;
        Constants.ZUB_85:returnButtonByConstant:=tnml5;
        end;
end;

//возвращает какой константе соответсвует кнопка
function TWizardForm.returnConstByButton(btn:TButton; isZub:boolean):integer;
VAR I:INTEGER;
begin
 if(isZub) then
  begin
  for i:=301 to 352 do            //334 было
    begin
    if(returnButtonByConstant(i)=btn) then
      begin
      returnConstByButton:=i;
      exit;
      end;
    end;
  end
 else
  begin
  for i:=201 to 232 do
    begin
    if(returnButtonByConstant(i)=btn) then
      begin
      returnConstByButton:=i;
      exit;
      end;
    end;
  end;
end;

//Нажали "Выход"
procedure TWizardForm.btnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TWizardForm.calDateClick(Sender: TObject);
begin
Formatsettings.ShortDateFormat:='dd.mm.yyyy';
edtDate.Text:= DateToStr(calDate.Date);
end;

procedure TWizardForm.edtDateChange(Sender: TObject);
begin
if(((Trim(cbDoctor.Text)='')or(Trim(edtDate.Text)=''))and(PageControl1.ActivePage=sheetDoctor)) then
  begin
  btnNext.Enabled:=false;
  end
else
  begin
  btnNext.Enabled:=true;
  end;
end;

//Нажали "Далее>>"
procedure TWizardForm.btnNextClick(Sender: TObject);
var i:integer; priemId:double;dirName:WideString;priemCount:integer; FileName:string;
begin
//Если стоим на листе выбора доктора и даты приема
if(PageControl1.ActivePage=sheetDoctor) then
  begin
  sheetTeeth.TabVisible:=true;
  sheetDoctor.TabVisible:=false;
  end
else if(PageControl1.ActivePage=sheetTeeth) then
  begin
  sheetTeeth.TabVisible:=false;
  sheetCorrect.TabVisible:=true;
  makeTextPriemDesc;
  btnNext.Caption:='Завершить';
  end else
if(PageControl1.ActivePage=sheetZubCard) then
  begin
  with mainDataModule.queryUpdateCardPszPrikus1 do
    begin
    Params.ParamValues['pacientId_']:=PacientId;
    Params.ParamValues['psz_']:=memPsz.Text;
    Params.ParamValues['prikus_']:=memPrikus.Text;
    ExecSQL;
    end;
  btnPrev.Visible:=true;
  if((Trim(cbDoctor.Text)='')or(Trim(edtDate.Text)='')) then
    begin
    btnNext.Enabled:=false;
    end
  else
    begin
    btnNext.Enabled:=true;
    end;
  sheetZubCard.TabVisible:=false;
  sheetDoctor.TabVisible:=true;
  end else
if(PageControl1.ActivePage=sheetCorrect) then
  begin
  with mainDataModule.dataSetMaxPriem1 do
    begin
    Active:=false;
    Active:=true;
    First;
    priemId:=FieldByName('maxPriemId').AsFloat+1;
    end;
  with mainDataModule.queryInsertPriem1 do
    begin
    Params.ParamValues['priemId_']:=priemId;
    Params.ParamValues['cardId_']:=PacientId;
    Params.ParamValues['desc_']:=memPriemDesc.Text;
    Params.ParamValues['date_']:=edtDate.Text;
    Params.ParamValues['sotrId_']:=IntToStr(Integer(cbDoctor.Items.Objects[cbDoctor.ItemIndex]));
    Params.ParamValues['priemKr_']:=shortDesc;
    if(chkSanus.Checked) then Params.ParamValues['sanus_']:='1' else Params.ParamValues['sanus_']:='0';
    ExecSQL;
    {добавим записи в карту зубов}
    addRecordsToZubCard(priemId);
    end;
  if(cbActions.ItemIndex<>0) then
    begin
    makeWord(cbActions.ItemIndex,memPriemDesc,cbDoctor.Text,calDate.Date,true,'','');
    end
  else if(cbActions.ItemIndex=0) then
    begin
    dirName:=saveToDir;
    Functions.ActivateDataSetWithParam('cardId_',PacientId,mainDataModule.dataSetPriemCount1);
    with mainDataModule.dataSetPriemCount1 do
      begin
      priemCount:=FieldByName('priemCount').AsInteger;
      end;
    if(priemCount=1)then
      begin
      FileName:=makeWord(2,memPriemDesc,cbDoctor.Text,calDate.Date,false,dirName,'');
      end
    else if(priemCount=2) then
      begin
      FileName:=makeWord(3,memPriemDesc,cbDoctor.Text,calDate.Date,false,dirName,'');
      end
    else
      begin
      FileName:=makeWord(1,memPriemDesc,cbDoctor.Text,calDate.Date,false,dirName,'');
      end;
    end;
  with mainDataModule.queryFileNamePriemUpdate1 do
    begin
    Params.ParamValues['fileName_']:=FileName;
    Params.ParamValues['PriemId_']:=priemId;
    ExecSQL;
    end;
  btnCloseClick(btnClose);
  end;
end;

function TWizardForm.saveToDir:widestring;
var dirName:WideString;
begin
dirName:=Functions.getConectStr+'\veda_hist';
if(not(DirectoryExists(dirName))) then
  begin
  CreateDir(dirName);
  end;
Formatsettings.ShortDateFormat:='yyyy.MM.dd';
if(not(DirectoryExists(dirName+'\'+DateToStr(calDate.Date)))) then
  begin
  CreateDir(dirName+'\'+DateToStr(calDate.Date));
  end;
if(not(DirectoryExists(dirName+'\'+DateToStr(calDate.Date)+'\'+cbDoctor.Text ))) then
  begin
  CreateDir(dirName+'\'+DateToStr(calDate.Date)+'\'+cbDoctor.Text);
  end;
Result:=dirName+'\'+DateToStr(calDate.Date)+'\'+cbDoctor.Text;
end;

procedure TWizardForm.addRecordsToZubCard(zubPriemId:double);
type
  PGList = ^AGList;
    AGList = record
    zub: string;
    diagId: double;
    lechId: integer;
    end;
var i, j :integer; ARecord:PGList; zubCardId,zubId,letterId:double;list:TStringList;
begin
for i:=0 to forMemList.Count-1 do
  begin
  New(ARecord);
  ARecord:=forMemList[i];
  list:=TStringList.Create;
  ExtractStrings([' '],[],PChar(Arecord^.zub),list);
  for j:=0 to list.Count-1 do
    begin
    Functions.ActivateDataSetWithParam('name_',list[j],mainDataModule.dataSetZubIdByName1);
    zubId:=mainDataModule.dataSetZubIdByName1.fieldByName('dictId').AsFloat;
    Functions.ActivateDataSetWithParam('diagId_',FloatToStr(ARecord^.diagId),mainDataModule.dataSetLetterIdByDiagId1);
    letterId:=0;
    letterId:=mainDataModule.dataSetLetterIdByDiagId1.FieldByName('letterId').AsFloat;
    insertIntoZubCard(letterId,zubId,zubPriemId);
    Functions.ActivateDataSetWithParam('lechId_',FloatToStr(ARecord^.lechId),mainDataModule.dataSetLetterIdByLechId1);
    letterId:=0;
    letterId:=mainDataModule.dataSetLetterIdByLechId1.FieldByName('letterId').AsFloat;
    insertIntoZubCard(letterId,zubId,zubPriemId);
    end;
  list.Clear;
  ExtractStrings([' '],[],PChar(incStr),list);
  for j:=0 to list.Count-1 do
    begin
    Functions.ActivateDataSetWithParam('name_',list[j],mainDataModule.dataSetZubIdByName1);
    zubId:=mainDataModule.dataSetZubIdByName1.fieldByName('dictId').AsFloat;
    letterId:=constants.LETTER_K;
    insertIntoZubCard(letterId,zubId,zubPriemId);
    end;
  end;
end;

procedure TWizardForm.insertIntoZubCard(letterId,ZubId,ZubPriemId:double);
var zubCardId, order:double;
begin
if(letterId<>0) then
  begin
  with mainDataModule.dataSetzubCardMax1 do
    begin
    Active:=false;
    Active:=true;
    First;
    zubCardId:=FieldByName('maxZubCardId').AsFloat+1;
    end;
  with mainDataModule.dataSetMaxOrder1 do
    begin
    Active:=false;
    Params.ParamValues['zubId_']:=FloatTostr(zubId);
    Params.ParamValues['CardId_']:=PacientId;
    Active:=true;
    First;
    order:=FieldByName('maxOrder').AsInteger+1;
    end;
  with mainDataModule.queryInsertZubCardFromPriem1 do
    begin
    Params.ParamValues['ZubCardId_']:=zubCardId;
    Params.ParamValues['CardId_']:=PacientId;
    Params.ParamValues['ZubId_']:=zubId;
    Params.ParamValues['LetterId_']:=letterId;
    Params.ParamValues['orderNumber_']:=order;
    Params.ParamValues['ZubPriemId_']:=ZubPriemId;
    Params.ParamValues['Date_']:=Now;
    ExecSQL;
    end;
  end;
end;

function TWizardForm.WordStringReplace(SearchString, ReplaceString:string;
WordApp, Word: Variant): Boolean;
const
  wdFindContinue = 1;
  wdReplaceOne = 1;
  wdReplaceAll = 2;
  wdDoNotSaveChanges = 0;
begin
    Word.Selection.Find.ClearFormatting;
    Word.Selection.Find.Text := SearchString;
    Word.Selection.Find.Replacement.Text := ReplaceString;
    Word.Selection.Find.Forward := True;
    Word.Selection.Find.Wrap := wdFindContinue;
    Word.Selection.Find.Format := False;
    Word.Selection.Find.MatchWholeWord := False;
    Word.Selection.Find.MatchSoundsLike := False;
    Word.Selection.Find.MatchAllWordForms := False;
    Word.Selection.Find.Execute(Replace := wdReplaceOne);
end;

function TWizardForm.makeWord(index:integer; PriemDesc:TMemo;sdoctor:string;datePriem:TDateTime;isVisible:boolean;dirName:wideString; FileName:string):string;
var replace,ext,saveFileName:OleVariant;i:integer;
    findRSnimok:boolean; WordApp, Word: Variant; oldStr,newStr,forw,Shablon: Variant;
    //WordDoc: Variant;
begin
WordApp:=CreateOleObject('Word.Application');
//Word:=CreateOleObject('Word.Application');
forw:=true;
//Word.Visible := True;
//Word.Documents.Open('f:\veda\priem.doc');
//Word := Unassigned;
  if((dirName='')and(FileName=''))then
    begin
    FileName:=ExtractFilePath(Application.ExeName)+'priem.doc';
    end;
  //wordApp:=CoWordApplication.Create;


if(index<>2) then
  begin
  if(index=1)then
    begin
    shablon:=ExtractFilePath(Application.ExeName)+'withoutSecond.doc';
    end
  else if(index=3) then
    begin
    shablon:=ExtractFilePath(Application.ExeName)+'withSecond.doc';
    end;
  functions.ActivateDataSetWithParam('pacientId_',PacientId,mainDataModule.dataSetFIOById1);
  if((dirName<>'')and(FileName=''))then
    begin
    with mainDataModule.dataSetFIOById1 do
      begin
      FileName:=dirName+'\'+FieldByName('newNum2').AsString+' - '+FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString;
      end;
    end
    else if((dirName<>'')and(FileName<>'')) then
      begin
      FileName:=dirName+FileName;
      end;
  WordApp.Documents.Open(Shablon);
  // WordApp.Visible := True;
  //WordDoc := WordApp.ActiveDocument;
  Formatsettings.ShortDateFormat := 'dd MMMM yyyy';
  replace:=wdReplaceOne;  oldStr:='$$date';  newStr:=DateToStr(datePriem);
  WordStringReplace(oldStr, newStr, WordApp, WordApp);

  oldStr:='$$hist';  newStr:='';replace:=wdReplaceNone;
  Functions.typeToWordHist(WordApp,oldStr,PriemDesc.Text,true);

  oldStr:='$$Doc';  newStr:=sDoctor; replace:=wdReplaceOne;
  WordStringReplace(oldStr, newStr, WordApp, WordApp);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
   {WordApp.Selection.ClearFormatting;
   WordApp.Selection.Find.Replacement.ClearFormatting;}

  Functions.ReplaceInWord(WordApp, '$$num', mainDataModule.dataSetFIOById1.FieldByName('newNum2').AsString);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
   {WordApp.Selection.ClearFormatting;
      WordApp.Selection.Find.Replacement.ClearFormatting;}

  Functions.ReplaceInWord(WordApp, '$$num', mainDataModule.dataSetFIOById1.FieldByName('newNum2').AsString);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
   {WordApp.Selection.ClearFormatting;
   WordApp.Selection.Find.Replacement.ClearFormatting;}

  Functions.ReplaceInWord(WordApp, '$$FIO', mainDataModule.dataSetFIOById1.FieldByName('Surname').AsString+' '+mainDataModule.dataSetFIOById1.FieldByName('Name').AsString+' '+mainDataModule.dataSetFIOById1.FieldByName('Sec_name').AsString);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  // WordApp.Selection.ClearFormatting;
  // WordApp.Selection.Find.Replacement.ClearFormatting;

  Functions.ReplaceInWord(WordApp, '$$FIO', mainDataModule.dataSetFIOById1.FieldByName('Surname').AsString+' '+mainDataModule.dataSetFIOById1.FieldByName('Name').AsString+' '+mainDataModule.dataSetFIOById1.FieldByName('Sec_name').AsString);

  FileName:=getFileName(FileName);
  saveFileName:=FileName;
  WordApp.ActiveDocument.SaveAs(saveFileName);
  WordApp.ActiveDocument.Close(true,EmptyParam,EmptyParam);
  if(isVisible) then
    begin
    wordApp.Visible:=true;
    WordApp.Documents.Open(saveFileName,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
    end;
  end
else
  begin
  shablon:=ExtractFilePath(Application.ExeName)+'Card.doc';
  WordApp.Documents.Open(Shablon);
  //WordApp.Visible := True;
  with mainDataModule.dsPacientQuery1 do
    begin
    Active:=false;
    Params.ParamValues['cardCode']:=PacientId;
    Active:=true;
    First;

    Functions.ReplaceInWord(WordApp, '$$num', FieldByName('NewNum2').AsString);

    Formatsettings.ShortDateFormat := 'dd.MM.yyyy';
    Functions.ReplaceInWord(WordApp, '$$year', DateToStr(FieldByName('Date_open').AsDateTime));

    newStr:= FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString;
    Functions.ReplaceInWord(WordApp, '$$FIO', newStr);

      if((dirName<>'')and(FileName=''))then
        begin
        FileName:=dirName+'\'+FieldByName('newNum2').AsString+' - '+newStr;
        end
      else if((dirName<>'')and(FileName<>'')) then
        begin
        FileName:=dirName+FileName;
        end;

    Formatsettings.ShortDateFormat := 'dd.MM.yyyy';
    Functions.ReplaceInWord(WordApp, '$$date_bir', DateToStr(FieldByName('Date_birth').AsDateTime));

    Functions.ReplaceInWord(WordApp, '$$Pol', FieldByName('Sex').AsString);

    Functions.ReplaceInWord(WordApp, '$$Profession', FieldByName('Profession_pl_w').AsString + '('+FieldByName('Place_work_dolzhn').AsString+')');

    Functions.ReplaceInWord(WordApp, '$$Address', FieldByName('Adress').AsString);

    Functions.ReplaceInWord(WordApp, '$$psz', FieldByName('Psz').AsString);

    Functions.ReplaceInWord(WordApp, '$$prikus', FieldByName('Prikus').AsString);


    findRSnimok:=false;
     oldStr:='';newStr:='';
     for i:=0 to PriemDesc.Lines.Count do
     begin
      if StrPos(PChar(PriemDesc.Lines[i]), PChar('Диагноз:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne; oldStr:='$$diag';  newStr:=RightStr(PChar(PriemDesc.Lines[i]),StrLen(PChar(PriemDesc.Lines[i]))-9);
        end
      else if StrPos(PChar(PriemDesc.Lines[i]), PChar('Жалобы:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$zhal';  newStr:=RightStr(PChar(PriemDesc.Lines[i]),StrLen(PChar(PriemDesc.Lines[i]))-8);
        end
      else if StrPos(PChar(PriemDesc.Lines[i]), PChar('An. morbi:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$anm';  newStr:=RightStr(PChar(PriemDesc.Lines[i]),StrLen(PChar(PriemDesc.Lines[i]))-11);
        end
      else if StrPos(PChar(PriemDesc.Lines[i]), PChar('Объективно:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$obno';  newStr:=RightStr(PChar(PriemDesc.Lines[i]),StrLen(PChar(PriemDesc.Lines[i]))-12);
        end
      else if StrPos(PChar(PriemDesc.Lines[i]), PChar('Слизистая:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$sliz';  newStr:=RightStr(PChar(PriemDesc.Lines[i]),StrLen(PChar(PriemDesc.Lines[i]))-11);
        end
      else if StrPos(PChar(PriemDesc.Lines[i]), PChar('Снимок:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$RSnimok';  newStr:=RightStr(PChar(PriemDesc.Lines[i]),StrLen(PChar(PriemDesc.Lines[i]))-8);
        findRSnimok:=true;
        end
      else if StrPos(PChar(PriemDesc.Lines[i]), PChar('Лечение:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$lech';  newStr:=RightStr(PChar(PriemDesc.Lines[i]),StrLen(PChar(PriemDesc.Lines[i]))-9);
        end
      else
        begin
        newStr:=newStr+PriemDesc.Lines[i];
        end;
      end;
    Functions.ReplaceInWord(wordApp,oldStr,newStr);
    if(not(findRSnimok)) then
      begin
      oldStr:='$$Rsnimok';  newStr:=' ';
      Functions.ReplaceInWord(wordApp,oldStr,newStr);
      end;

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
  Functions.ReplaceInWord(WordApp, '$$num', FieldByName('newNum2').AsString);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  Functions.ReplaceInWord(WordApp, '$$num', FieldByName('newNum2').AsString);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
  Functions.ReplaceInWord(WordApp, '$$FIO', FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  Functions.ReplaceInWord(WordApp, '$$FIO', FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString);


    end;
  saveFileName:=FileName;
  WordApp.ActiveDocument.SaveAs(saveFileName,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  wordApp.ActiveDocument.Close(true,EmptyParam,EmptyParam);
  if(isVisible)then
    begin
    wordApp.Visible:=true;
    WordApp.Documents.Open(saveFileName);
    end;
  end;
Result:=ExtractFileName(FileName);
end;
procedure TWizardForm.RadioGroup1Click(Sender: TObject);
begin
if(RadioGroup1.Items[RadioGroup1.ItemIndex]='Молочный') then
  Panel4.Visible:=True
else
  Panel4.Visible:=False;
end;

procedure TWizardForm.makeTextPriemDesc;
type
    PList = ^AList;
    AList = record
    zub: string;
    diagId: double;
    lechId: integer;
  end;
var i, j, k:integer;  ARecord: PList;tmpLech, tmpnazn, tmpreccs, zhal,anm,obno,sliz,snimok, diag, lech, reccs, nazn, desc:WideString; lechList: array of string;
list:TStringList;
begin
  zhal:='';
  anm:='';
  obno:='';
  sliz:='';
  snimok:='';
  diag:='';
  lech:='';
  reccs:='';
  nazn:='';
  shortDesc:='';
  memPriemDesc.Lines.Clear;
for i:=0 to forMemList.Count-1 do
  begin
  ARecord:=forMemList.Items[i];
  with mainDataModule do
    begin
    with dataSetDiagById1 do
      begin
      Functions.ActivateDataSetWithParam('diagId_', FloatToStr(Arecord^.diagId), dataSetDiagById1);
      zhal:=zhal+' '+StringReplace(FieldByName('St_zhal').AsString,'$$',Arecord^.zub, [rfReplaceAll]);
      anm:=anm+' '+StringReplace(FieldByName('St_An_morbi').AsString,'$$',Arecord^.zub, [rfReplaceAll]);
      obno:=obno+' '+StringReplace(FieldByName('St_Obno').AsString,'$$',Arecord^.zub, [rfReplaceAll]);
      sliz:=sliz+' '+StringReplace(FieldByName('St_slizist').AsString,'$$',Arecord^.zub, [rfReplaceAll]);
      snimok:=snimok+' '+StringReplace(FieldByName('St_Rsnimok').AsString,'$$',Arecord^.zub, [rfReplaceAll]);
      diag:=diag+' '+StringReplace(FieldByName('Name').AsString,'$$',Arecord^.zub, [rfReplaceAll]);
      shortDesc:=shortDesc+Arecord^.zub+'&'+FieldByName('ShortName').AsString;
      end;
    with dataSetLechItems1 do
      begin
      Functions.ActivateDataSetWithParam('lechId_', FloatToStr(Arecord^.lechId),dataSetLechItems1);
      if(RecordCount>0) then
        begin
        SetLength(lechList,RecordCount);
        for j:=0 to RecordCount-1 do
          begin
          lechList[FieldByName('Num').AsInteger-1]:=FieldByName('Name').AsString;
          Next;
          end;
        end;
      end;
    with dataSetLechById1 do
      begin
      Functions.ActivateDataSetWithParam('lechId_',IntToStr(Arecord^.lechId),dataSetLechById1);
      tmpLech:=FieldByName('Description').AsString;
      tmpreccs:=FieldByName('Reccs').AsString;
      tmpnazn:=FieldByName('Nazn').AsString;
      shortDesc:=shortDesc+'&'+FieldByName('ShortName').AsString+'&';
      list:=TStringList.Create;
      ExtractStrings([','],[],PChar(Lechs[i]),list);
      k:=0;
      while k<list.Count do
        begin
        Functions.ActivateDataSetWithParam('priceId_',list[k+1],mainDataModule.dataSetPriceDescById1);
        desc:=mainDataModule.dataSetPriceDescById1.FieldByName('Description').AsString;
        tmpLech:=StringReplace(tmpLech,'ыы'+list[k],desc,[rfReplaceAll]);
        tmpreccs:=StringReplace(tmpreccs,'ыы'+list[k],desc,[rfReplaceAll]);
        tmpnazn:=StringReplace(tmpnazn,'ыы'+list[k],desc,[rfReplaceAll]);
        k:=k+2;
        end;
      lech:=lech+StringReplace(tmpLech,'ыы',Arecord^.zub,[rfReplaceAll]);
      reccs:=reccs+StringReplace(tmpreccs,'ыы',Arecord^.zub,[rfReplaceAll]);
      nazn:=nazn + StringReplace(tmpnazn,'ыы',Arecord^.zub,[rfReplaceAll]);
      end;
    end;
    end;
  {Жалобы,An.v,An.m,объективно,
  слизистая,Прикус,Снимок,диагноз,лечение.
  Рекомендации.Назначено}
  if(Trim(zhal)<>'') then memPriemDesc.Lines.Add('Жалобы: '+zhal);
  if(Trim(anm)<>'') then memPriemDesc.Lines.Add('An. morbi: '+anm);
  if(Trim(obno)<>'') then memPriemDesc.Lines.Add('Объективно: '+obno);
  if(Trim(sliz)<>'') then memPriemDesc.Lines.Add('Слизистая: '+sliz);
  if(Trim(snimok)<>'') then memPriemDesc.Lines.Add('Снимок: '+snimok);
  if(Trim(diag)<>'') then memPriemDesc.Lines.Add('Диагноз: '+diag);
  if(Trim(lech)<>'') then memPriemDesc.Lines.Add('Лечение: '+lech);
  if(Trim(reccs)<>'') then memPriemDesc.Lines.Add('Рекомендации: '+reccs);
  if(Trim(nazn)<>'') then memPriemDesc.Lines.Add('Назначено: '+nazn);
  memPriemDesc.Text:=StringReplace(memPriemDesc.Text,'йй',incStr,[rfReplaceAll]);
end;

procedure TWizardForm.btnPrevClick(Sender: TObject);
begin
if(PageControl1.ActivePage=sheetTeeth) then
  begin
    sheetTeeth.TabVisible:=false;
    sheetDoctor.TabVisible:=true;
    btnNext.Enabled:=true;
  end
else if(PageControl1.ActivePage=sheetDoctor) then
  begin
  sheetDoctor.TabVisible:=false;
  sheetZubCard.TabVisible:=true;
  btnNext.Enabled:=true;
  btnPrev.Visible:=false;
  end
else if(PageControl1.ActivePage=sheetCorrect) then
  begin
  sheetCorrect.TabVisible:=false;
  sheetTeeth.TabVisible:=true;
  btnNext.Caption:='Далее >>'
  end;
end;


{Обработка перетаскивания}
procedure TWizardForm.ButtonEndDrag(Sender, Target: TObject; X,
  Y: Integer);
  var lbl:TLabel; id:double;
begin
if (Target is TButton) then
  begin
  if(Sender is TButton) then
    begin
    id:=addZubCard(TButton(Sender), TButton(Target));
    addLabelToButton(TButton(Sender), TButton(Target),id);
    end;
  end;
end;

function TWizardForm.addZubCard(btnLetter, btnZub:TButton):double;
var id:double;order, letterId, zubId:integer;
begin
with mainDataModule.dataSetzubCardMax1 do
  begin
  Active:=false;
  Active:=true;
  First;
  id:=FieldByName('maxZubCardId').AsFloat+1;
  end;
letterId:=returnConstByButton(btnLetter,false);
zubId:=returnConstByButton(btnZub,true);
with mainDataModule.dataSetMaxOrder1 do
  begin
  Active:=false;
  Params.ParamValues['zubId_']:=IntTostr(zubId);
  Params.ParamValues['CardId_']:=PacientId;
  Active:=true;
  First;
  order:=FieldByName('maxOrder').AsInteger+1;
  end;
with mainDataModule.queryInsertZubCard1 do
  begin
   Params.ParamValues['ZubCardId_']:=id;
   Params.ParamValues['CardId_']:=PacientId;
   Params.ParamValues['ZubId_']:=zubId;
   Params.ParamValues['LetterId_']:=letterId;
   Params.ParamValues['orderNumber_']:=order;
   Params.ParamValues['Date_']:=Now;
   ExecSQL;
  end;
addZubCard:=id;
end;

{добавление лейбла к баттону}
procedure TWizardForm.addLabelToButton(Sender{кого тащили}, Target{к кому притащили}:TButton; id:double);
type
    PNodeList = ^ANodeList;
    ANodeList = record
    id:double;
    labl: TLabel;
  end;
var lbl:TLabel; i, diss,top_:integer; curList:TList;ARecord: PNodeList;
begin
{создаем лейбл}
    lbl := Tlabel.Create(WizardForm);
    lbl.Parent:=sheetZubCard;
    lbl.Caption := Sender.Caption;
    lblCount:=lblCount+1;
    lbl.Name:='smth'+IntToStr(lblCount);
 //   lbl.OnClick := deleteLabel; //делаем обработку клика по лейблу
     New(ARecord);
     ARecord^.id:=id;
     ARecord^.labl:=lbl;
     idsList.add(ARecord);
     //увеличиваем каунтер чтоб имена не повторялись
    curList:=returnList(Target);//берем лист у кнопки, на которую притащили
    if (curList = nil) then
    begin
       lbl.Parent:=Panel4;
       lbl.Name:='smth'+IntToStr(lblCount);
//       lbl.OnClick := deleteLabel;
       curList:=returnList1(Target);
    end;

    curList.Add(lbl); //добавляем туда лейбл
    if(Target.Name[2]='v') then  //если верхний
      begin
       top_:=0;
       diss:=1;
      end
    else  //если нижний, чтобы буковки росли вниз
      begin
      top_:=250;
      diss:=-1;
      end;
    if(curList.Count>5) then //вмещаем не более 5ти лейблов
      begin
      TLabel(curList.Last).Top:=top_;
        for i:=1 to 4 do
          begin
          TLabel(curList.Items[curList.Count-i-1]).Top:=top_+i*20*diss;
          end;
      end
    else
      begin
      lbl.Top:= top_+80*diss - 20*curList.IndexOf(lbl)*diss;
      end;
    lbl.Left:=TButton(Target).Left+2;

end;

{procedure TWizardForm.deleteLabel(Sender: TObject);
var list:TList; i,k:integer;btn:TButton;
begin
if TLabel(Sender).Top>100 then k:=-1 else k:=1;
list:=returnListByLabel(TLabel(Sender));
for i:=1 to list.Count-list.IndexOf(TLabel(sender)) do
  begin
  TLabel(list.Items[list.Count-i]).Top:=TLabel(list.Items[list.Count-i]).Top+20*k
  end;
list.Remove(Sender);
TLabel(Sender).Visible:=false;
with mainDataModule.queryZubCardDelete1 do
  begin
  Params.ParamValues['zubCardId_']:=returnIdByLabel(TLabel(Sender));
  ExecSQL;
  end;
end;}

function TWizardForm.returnIdByLabel(lbl:TLabel):double;
type
PList = ^AList;
AList = record
    id: double;
    labl: TLabel ;
end;
var i:integer; ARecord: PList;
begin
for i:=0 to idsList.Count do
  begin
  ARecord:=idsList.Items[i];
  if(ARecord^.labl=lbl) then
    begin
    returnIdByLabel:=ARecord^.id;
    Exit;
    end;
  end;
end;

function TWizardForm.returnListByLabel(lbl:TLabel):TList;
type
PNodeList = ^ANodeList;
ANodeList = record
    id: TButton;
    list: TList;
end;
var i, j:integer; ARecord: PNodeList;
begin
for i:= 0 to btnsList.Count-1 do
  begin
  ARecord := btnsList.Items[i];
    begin
    for j:=0 to ARecord^.list.Count-1 do
      begin
        if(TLabel(ARecord^.list.Items[j])=lbl) then
          begin
          returnListByLabel:=Arecord^.list;
          Exit;
          end;
      end;
    end;
  end;
returnListByLabel:=nil;
end;

{возвращает TList по Button}
function TWizardForm.returnList(id_:TButton):Tlist;
type
PNodeList = ^ANodeList;
ANodeList = record
    id: TButton;
    list: TList;
end;
var i:integer; ARecord: PNodeList;

begin
for i:= 0 to btnsList.Count-1 do
  begin
   ARecord := btnsList.Items[i];
   if(ARecord^.id=id_) then
    begin
    returnList:=ARecord^.list;
    Exit;
    end;
  end;
returnList:=nil;
end;

function TWizardForm.returnList1(id_:TButton):Tlist;
type
PNodeList = ^ANodeList;
ANodeList = record
    id: TButton;
    list: TList;
end;
var i:integer; ARecord: PNodeList;

begin
for i:= 0 to mbtnsList.Count-1 do
  begin
   ARecord := mbtnsList.Items[i];
   if(ARecord^.id=id_) then
    begin
    returnList1:=ARecord^.list;
    Exit;
    end;
  end;
returnList1:=nil;
end;

procedure TWizardForm.tDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
{nothing}
end;

procedure TWizardForm.Button1Click(Sender: TObject);
begin
//дизаблим кнопки чтоб не забыли написать диагноз и лечение
//enableButtons(false);
diagnozesTree.Enabled:=true;
//Если зуб есть в списке
if(not(zubAdded)) then
  begin
  curItem:=lwAddedTeeth.Items.Add;
  curItem.Caption:='Зуб: '+TButton(Sender).Caption;
  New(gARecord);
  gArecord^.zubG:=TButton(Sender).Caption;
  zubAdded:=true;
  end
else
  begin
  curItem.Caption:=curItem.Caption+' '+TButton(Sender).Caption;
  gArecord^.zubG:=gArecord^.zubG+' '+TButton(Sender).Caption;
  end;
end;

procedure TWizardForm.enableButtons(enable:Boolean);
var i:integer;
begin
for i:=0 to GroupBox1.ControlCount-1 do
  begin
  if(GroupBox1.Controls[i] is TButton) then
    begin
    TButton(GroupBox1.Controls[i]).Enabled:=enable;
    end;
  end;
end;

{function TWizardForm.containsRecord(item: TListItem):boolean;
begin
type
PList = ^AList;
AList = record
    id: double;
    labl: TLabel ;
end;
var i:integer; ARecord: PList;
end;}

procedure TWizardForm.diagnozesTreeDblClick(Sender: TObject);
var id:double; i:integer;
begin
if(diagnozesTree.Selected<>nil) then
  begin
  enableButtons(false);
  curItem.Caption:=curItem.Caption+' Диагноз: '+diagnozesTree.Selected.Text;
  diagnozesTree.Enabled:=false;
  id:=DictEditForm.returnId(ListDiagssNodes,diagnozesTree.Selected);
  gArecord^.diagIdG:=id;
  with mainDataModule.dataSetLechByDiag1 do
    begin
    Active:=false;
    Params.ParamValues['diagId_']:=FloatToStr(id);
    Active:=true;
    cbLech.Items.Clear; 
    if(RecordCount>0) then
      begin
      First;
      cbLech.Enabled:=true;
      cbLech.Text:='<Выберите лечение>';
      btnGoLech.Enabled:=false;
      for i:=1 to RecordCount do
        begin
        cbLech.AddItem(FieldByName('Name').AsString, TObject(FieldByName('LechId').AsInteger));
        Next;
        end;
      end
    else
      begin
      cbLech.Text:='<Нет связанных лечений>';
      enableButtons(true);
      end;
    end;
  end;
end;

procedure TWizardForm.btnDelRecordClick(Sender: TObject);
begin
if(lwAddedTeeth.Selected<>nil) then
  begin
  if(Lechs.Count>lwAddedTeeth.ItemIndex) then Lechs.Delete(lwAddedTeeth.ItemIndex);
  if(forMemList.Count=lwAddedTeeth.Items.Count) then forMemList.Delete(lwAddedTeeth.ItemIndex);
  lwAddedTeeth.Items.Delete(lwAddedTeeth.ItemIndex);
  zubAdded:=false;
  end;
enableButtons(true);
end;

procedure TWizardForm.btnGoLechClick(Sender: TObject);
var tmpStr:string; lechId, i:integer;
begin
curItem.Caption:=curItem.Caption+' Лечение:'+ cbLech.Text;
cbLech.Enabled:=false;
btnGoLech.Enabled:=false;
lechId:=Integer(cbLech.Items.Objects[cbLech.ItemIndex]);
gArecord^.lechIdG:= lechId;
forMemList.Add(gArecord);
//enableButtons(true);
tmpStr:='';
Functions.ActivateDataSetWithParam('lechId_',IntToStr(lechId), mainDataModule.dataSetLechRelays1);
with mainDataModule.dataSetLechRelays1 do
  begin
  for i:=1 to RecordCount do
    begin
    tmpStr:=tmpStr+FieldByName('Num').AsString+',';
    tmpStr:=tmpStr+FieldByName('PriceId').AsString+',';
    Next;
    end;
  end;
Lechs.Add(tmpStr);
zubAdded:=false;
end;

procedure TWizardForm.cbLechChange(Sender: TObject);
begin
btnGoLech.Enabled:=true;
end;

procedure TWizardForm.lwAddedTeethDblClick(Sender: TObject);
var list:TStringList;i,j,k,ind:integer; cbBox:TComboBox; dsOStr:string;
begin
if(lwAddedTeeth.Selected<>nil) then
  begin
  list:=TStringList.Create;
  ExtractStrings([','],[],PChar(Lechs[lwAddedTeeth.ItemIndex]),list);
  i:=0;
  while i<list.Count do
    begin
    cbBox:=TComboBox.Create(lechForm);
    cbBox.Parent:=lechForm;
    cbBox.Name:='smth'+list[i];
    cbBox.Left:=8;
    cbBox.Top:=StrToInt(list[i])*30;
    cbBox.Width:=377;
    cbBox.Style:=csDropDownList;
    cbBox.Items.Clear;
    Functions.ActivateDataSetWithParam('priceId_',list[i+1],mainDataModule.dataSetPricesById1);
    with mainDataModule.dataSetPricesById1 do
      begin
      for j:=1 to RecordCount do
        begin
        if(FieldByName('PriceId').AsString=list[i+1]) then ind:=j-1;
        cbBox.Items.AddObject(FieldByName('Name').AsString, TObject(FieldByName('PriceId').asInteger));
        Next;
        end;
      end;
    cbBox.ItemIndex:=ind;
    i:=i+2;
    end;
  //является ли диагноз ортопедическим
  Functions.ActivateDataSetWithParam('LechId_',FloatToStr(gArecord^.lechIdG),mainDataModule.dataSetIsLechOrt1);
  with mainDataModule.dataSetIsLechOrt1 do
    begin
    if(FieldByName('IsOrt').AsInteger=0) then
      begin
      lechForm.IsOrt:=false;
      end
    else
      begin
      lechForm.IsOrt:=true;
      end;
    end;
  with mainDataModule.dataSetOstr1 do
    begin
    Active:=false;
    Params.ParamValues['PacientId_']:=PacientId;
    Params.ParamValues['letterId_']:=Constants.LETTER_O;
    Active:=true;
    First;
    dsOStr:='';
    for k:=1 to RecordCount do
      begin
      dsOStr:=dsOStr+' '+FieldByName('Zub').AsString;
      Next;
      end;
    end;

  lechForm.Ostr:=gArecord^.zubG+' '+dsOstr;
  if(lechForm.ShowModal=mrOk) then
    begin
    Lechs[lwAddedTeeth.ItemIndex]:=lechForm.lechStr;
    incStr:=lechForm.IncStr;
    end;
  end;
end;

procedure TWizardForm.zubClick(Sender: TObject);
begin
ZubForm.pacientId:=PacientId;
ZubForm.zubId:=returnConstByButton(TButton(Sender),true);
ZubForm.ShowModal;
ClearLabels;
{заполним лист с кнопками имеющимися кнопками и создадим листы}
initializeBtns;
//заполним листы кнопок из базы
fillBtnsFromDatabase;
end;

procedure TWizardForm.ClearLabels;
var i,j,count:integer;
begin
j:=0;
i:=0;
lwAddedTeeth.Items.Clear;
memPriemDesc.Text:='';
//Узнаем сколько контролов на табе
count:=sheetZubCard.ControlCount;
while i<count do
  begin
  if(sheetZubCard.Controls[i-j] is TLabel) then//Отнимаем j для того чтобы не вылезти из индекса, поскольку мы удаляем контролы
    begin
    if(sheetZubCard.Controls[i-j].Name[1] = 's') then
      begin
      sheetZubCard.Controls[i-j].Free;
      j:=j+1;//После удаления лейбла увеличиваем j (основная форма)
      end;
    end;
    i:=i+1;
  end;
count:=Panel4.ControlCount;
i:=0; j:=0;
while i<count do
  begin
  if(Panel4.Controls[i-j] is TLabel) then//Отнимаем j для того чтобы не вылезти из индекса, поскольку мы удаляем контролы
    begin
    if(Panel4.Controls[i-j].Name[1] = 's') then
      begin
      Panel4.Controls[i-j].Free;
      j:=j+1;//После удаления лейбла увеличиваем j
      end;
    end;
    i:=i+1;
  end;
end;

procedure TWizardForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ClearLabels;
end;

procedure TWizardForm.btnAddPrikusClick(Sender: TObject);
begin
memPrikus.Text:=memPrikus.Text+cbPrikus.Text;
end;

procedure TWizardForm.btnAddPszClick(Sender: TObject);
begin
memPsz.Text:=memPsz.Text+cbPsz.Text;
end;

procedure TWizardForm.Button33Click(Sender: TObject);
begin
enableButtonsOnCard(true);
end;

procedure TWizardForm.lwAddedTeethInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
var newTip:string;
begin
while (StrLen(PAnsiChar(InfoTip))<>0) do
  begin
  newTip:=newTip+LeftStr(PAnsiChar(InfoTip),50)+#13;
  InfoTip:=RightStr(PAnsiChar(InfoTip),StrLen(PAnsiChar(InfoTip))-50);
  end;
InfoTip:=newTip;
end;

procedure TWizardForm.btnLoadFilesClick(Sender: TObject);
begin
FilesForm.PacientId:=PacientId;
FilesForm.ShowModal;
end;

end.
