unit HistFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Word_TLB, OleServer, StrUtils,  ComObj;

type
  THistForm = class(TForm)
    lbPriems: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtShortZub: TEdit;
    Label3: TLabel;
    memPriemDesc: TMemo;
    btnSave: TBitBtn;
    btnPrint: TBitBtn;
    btnWizard: TBitBtn;
    cbDoctors: TComboBox;
    Label4: TLabel;
    dtpDatePriem: TDateTimePicker;
    btnDelPriem: TBitBtn;
    memInvPriem: TMemo;
    chkSanus: TCheckBox;
    Button1: TButton;
  //  WordApp: OleVariant;
//    WordDoc: _Document;
    edtShortDiag: TEdit;
    edtShortLech: TEdit;
    procedure btnDelPriemClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnWizardClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbPriemsClick(Sender: TObject);
    procedure makeWord(index:integer);
    procedure makeWordAll;
    procedure makeWordDates(dfrom,dto:TDateTime);
    procedure refreshForm;
    function  saveToDir:widestring;
    procedure selectDoctor(doctorId:integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    pacientId:string;
    { Public declarations }
  end;

var
  HistForm: THistForm;

implementation

uses CardsForm, dataModule, Functions, DB, Wizard, Constants, ADODB,
  PrintFrm, MAIN;

{$R *.dfm}

procedure THistForm.FormShow(Sender: TObject);
begin
Functions.ActivateDataSetWithParam('pacientId_',pacientId,mainDataModule.dataSetPacientById);
with mainDataModule.dataSetPacientById do
  begin
  Caption:='История болезни - '+FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString+' ';
  end;
refreshForm;
end;

procedure THistForm.refreshForm;
var i, j:integer; priemKrList:TStringList; priemKr:string;
begin
   // Заполним список докторов
   mainDataModule.dataSetDoctorsList.Active:=false;
   mainDataModule.dataSetDoctorsList.CommandText:='select code_sotr, FIO from Sotr where rights = '+IntToStr(Constants.RIGHTS_DOCTOR);
   mainDataModule.dataSetDoctorsList.Active:=true;
   if(mainDataModule.dataSetDoctorsList.RecordCount>0) then
    begin
    cbDoctors.Items.Clear;
    mainDataModule.dataSetDoctorsList.First;
      for i:=1 to mainDataModule.dataSetDoctorsList.RecordCount do
        begin
        cbDoctors.Items.AddObject(mainDataModule.dataSetDoctorsList.FieldByName('FIO').AsString, TObject(mainDataModule.dataSetDoctorsList.FieldByName('code_sotr').AsInteger));
        mainDataModule.dataSetDoctorsList.Next;
        end;
    end;
Functions.ActivateDataSetWithParam('cardId_', pacientId,mainDataModule.dataSetPriemByPacient);
lbPriems.Items.Clear;
with mainDataModule.dataSetPriemByPacient do
  begin
  if(RecordCount>0) then
    begin
    for i:=1 to RecordCount do
      begin
      priemKrList:=TStringList.Create;
      priemKr:='';
      ExtractStrings(['&'],[],PChar(FieldByName('PriemKr').AsString),priemKrList);
      for j:=0 to priemKrList.Count-1 do
        begin
        priemKr:=priemKr+priemKrList[j]+' ';
        end;
      Formatsettings.ShortDateFormat := 'dd MMM yyyy г';
      lbPriems.Items.AddObject(DateToStr(FieldByName('Date_priem').AsDateTime) + ' - '+priemKr,TObject(FieldByName('PriemId').AsInteger));
      Next;
      end;
    end;
  end;
edtShortZub.Text:='';
edtShortDiag.Text:='';
edtShortLech.Text:='';
memPriemDesc.Text:='';
memInvPriem.Text:='';
cbDoctors.ItemIndex:=-1;
end;

procedure THistForm.btnWizardClick(Sender: TObject);
begin
WizardForm.PacientId:=pacientId;
WizardForm.ShowModal;
refreshForm;
end;

procedure THistForm.lbPriemsClick(Sender: TObject);
var priemId, i:integer;priemKrList:TStringList; priemKr:string;
begin
priemId:=Integer(lbPriems.Items.Objects[lbPriems.ItemIndex]);
Functions.ActivateDataSetWithParam('priemId_',IntToStr(priemId),mainDataModule.dataSetPriemById);
with mainDataModule.dataSetPriemById do
  begin
  selectDoctor(FieldByName('Code_sotr').AsInteger);
  priemKrList:=TStringList.Create;
  priemKr:='';
  ExtractStrings(['&'],[],PChar(FieldByName('PriemKr').AsString),priemKrList);
  if(priemKrList.Count>0) then edtShortZub.Text:=priemKrList[0];
  if(priemKrList.Count>1) then edtShortDiag.Text:=priemKrList[1];
  if(priemKrList.Count>2) then edtShortLech.Text:=priemKrList[2];
  memPriemDesc.Text:=FieldByName('Description').AsString;
  dtpDatePriem.DateTime:=FieldByName('Date_priem').AsDateTime;
  chkSanus.Checked:=FieldByName('sanus').AsInteger=1;
  end;
end;

procedure THistForm.selectDoctor(doctorId:integer);
var i, sel:integer;
begin
sel:=-1;
for i:=0 to cbDoctors.Items.Count-1 do
  begin
  if(Integer(cbDoctors.Items.Objects[i])=doctorId) then
    begin
    sel:=i;
    end;
  end;
cbDoctors.ItemIndex:=sel;
end;

procedure THistForm.btnSaveClick(Sender: TObject);
var dirName:string;fileName:string;
begin
if(lbPriems.ItemIndex<>-1) then
  begin
  with mainDataModule.queryPriemUpdate do
    begin
    Parameters.ParamValues['priemId_']:=Integer(lbPriems.Items.Objects[lbPriems.ItemIndex]);
    Parameters.ParamValues['code_sotr_']:=Integer(cbDoctors.Items.Objects[cbDoctors.ItemIndex]);
    Parameters.ParamValues['priemKr_']:=edtShortZub.Text+'&'+edtShortDiag.Text+'&'+edtShortLech.Text;
    Parameters.ParamValues['Desc_']:=memPriemDesc.Text;
    Parameters.ParamValues['date_priem_']:=dtpDatePriem.DateTime;
    if(chkSanus.Checked) then Parameters.ParamValues['sanus_']:='1' else Parameters.ParamValues['sanus_']:='0';
    ExecSQL;
    end;
  dirName:=saveToDir;
  Functions.ActivateDataSetWithParam('priemId_',IntTOStr(Integer(lbPriems.Items.Objects[lbPriems.ItemIndex])),mainDataModule.dataSetFileNameByPriemId);
  WizardForm.PacientId:=pacientId;
  if(lbPriems.ItemIndex=0) then
    begin
    WizardForm.MakeWord(2,memPriemDesc,cbDoctors.Text,dtpDatePriem.DateTime,false,dirName,fileName);
    end
  else if(lbPriems.ItemIndex=1) then
    begin
    WizardForm.MakeWord(3,memPriemDesc,cbDoctors.Text,dtpDatePriem.DateTime,false,dirName,fileName);
    end
  else
    begin
    WizardForm.MakeWord(1,memPriemDesc,cbDoctors.Text,dtpDatePriem.DateTime,false,dirName,fileName);
    end;
  refreshForm;
  end;
end;

function THistForm.saveToDir:widestring;
var dirName:WideString;
begin
dirName:=Functions.getConectStr+'\veda_hist';
if(not(DirectoryExists(dirName))) then
  begin
  CreateDir(dirName);
  end;
Formatsettings.ShortDateFormat:='yyyy.MM.dd';
if(not(DirectoryExists(dirName+'\'+DateToStr(dtpDatePriem.Date)))) then
  begin
  CreateDir(dirName+'\'+DateToStr(dtpDatePriem.Date));
  end;
if(not(DirectoryExists(dirName+'\'+DateToStr(dtpDatePriem.Date)+'\'+cbDoctors.Text ))) then
  begin
  CreateDir(dirName+'\'+DateToStr(dtpDatePriem.Date)+'\'+cbDoctors.Text);
  end;
Result:=dirName+'\'+DateToStr(dtpDatePriem.Date)+'\'+cbDoctors.Text;
end;

procedure THistForm.btnDelPriemClick(Sender: TObject);
begin
if(lbPriems.ItemIndex<>-1) then
  begin
  if(MessageDlg('Удаление приема'+'. Продолжить?',mtConfirmation,mbOKCancel,0)=mrOk) then
    begin
      with mainDataModule.queryPriemDelete do
      begin
      Parameters.ParamValues['priemId_']:=Integer(lbPriems.Items.Objects[lbPriems.ItemIndex]);
      ExecSQL;
      end;
    lbPriems.Items.Delete(lbPriems.ItemIndex);
    cbDoctors.ItemIndex:=-1;
    edtShortZub.Text:='';
    edtShortDiag.Text:='';
    edtShortLech.Text:='';
    memPriemDesc.Text:='';
    memInvPriem.Text:='';
    end;
  end
else
  begin
  ShowMessage('Выберите прием для удаления');
  end;
end;

procedure THistForm.btnPrintClick(Sender: TObject);
var sdoctor, desc:string;datePriem:TDateTime;
begin
if(lbPriems.Items.Count>0) then
  begin
  if(PrintForm.ShowModal=mrOk) then
    begin
    WizardForm.PacientId:=pacientId;
    if(PrintForm.rg.ItemIndex=0) then
      begin
      if(lbPriems.ItemIndex=0)then
        begin
        WizardForm.MakeWord(2,memPriemDesc,cbDoctors.Text,dtpDatePriem.DateTime,true,'','');
        end
      else if(lbPriems.ItemIndex=1) then
        begin
        WizardForm.MakeWord(3,memPriemDesc,cbDoctors.Text,dtpDatePriem.DateTime,true,'','');
        end
      else
        begin
        WizardForm.MakeWord(1,memPriemDesc,cbDoctors.Text,dtpDatePriem.DateTime,true,'','');
        end;
      end
    else if(PrintForm.rg.ItemIndex=1) then
      begin
      Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbPriems.Items.Objects[lbPriems.Items.Count-1])),mainDataModule.dataSetPriemByIdWithSotr);
      with mainDataModule.dataSetPriemByIdWithSotr do
        begin
        sdoctor:=FieldByName('FIO').AsString;
        datePriem:=FieldBYname('Date_priem').AsDateTime;
        desc:=FieldByName('Description').AsString;
        memInvPriem.Text:=desc;
        end;
      if(lbPriems.Items.Count=1) then
        begin
        WizardForm.MakeWord(2,memInvPriem,sdoctor,datePriem,true,'','');
        end
      else if (lbPriems.Items.Count=2) then
        begin
        WizardForm.MakeWord(3,memInvPriem,sdoctor,datePriem,true,'','');
        end
      else
        begin
        WizardForm.MakeWord(1,memInvPriem,sdoctor,datePriem,true,'','');
        end;
      end
    else if(PrintForm.rg.ItemIndex=2) then
      begin
      Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbPriems.Items.Objects[0])),mainDataModule.dataSetPriemByIdWithSotr);
      with mainDataModule.dataSetPriemByIdWithSotr do
        begin
        sdoctor:=FieldByName('FIO').AsString;
        datePriem:=FieldBYname('Date_priem').AsDateTime;
        desc:=FieldByName('Description').AsString;
        memInvPriem.Text:=desc;
        end;
      WizardForm.MakeWord(2,memInvPriem,sdoctor,datePriem,true,'','');
      end
    else if(PrintForm.rg.ItemIndex=3) then
      begin
      makeWordDates(PrintForm.dtpFrom.DateTime,PrintForm.dtpTo.DateTime);
      end
    else if (PrintForm.rg.ItemIndex=4) then
      begin
      makeWordAll;
      end;
    end;
  end;
end;

procedure THIstForm.makeWordDates(dfrom,dto:TDateTime);
var i,count:integer;
begin
with mainDataModule.dataSetPriemsByDates do
  begin
  Active:=false;
  Parameters.ParamValues['dateFrom_']:=dfrom;
  Parameters.ParamValues['dateTo_']:=dto;
  Parameters.ParamValues['pacientId_']:=pacientId;
  Active:=true;
  First;
  if(RecordCount>0) then
    begin
    mainDataModule.dataSetPriemsBeforeDate.Active:=false;
    mainDataModule.dataSetPriemsBeforeDate.Parameters.ParamValues['priemDate_']:=dfrom;
    mainDataModule.dataSetPriemsBeforeDate.Parameters.ParamValues['cardID_']:=pacientId;
    mainDataModule.dataSetPriemsBeforeDate.Active:=true;
    mainDataModule.dataSetPriemsBeforeDate.First;
    count:=mainDataModule.dataSetPriemsBeforeDate.FieldByName('priemCount').AsInteger;
    if(RecordCount=1) then
      begin
      memInvPriem.Text:=FieldByName('Description').AsString;
      if(count=0) then
        begin
        WizardForm.makeWord(2,memInvPriem,FieldByName('FIO').AsString,FieldByName('date_priem').AsDateTime,true,'','');
        end
      else if(count=1) then
        begin
        WizardForm.makeWord(3,memInvPriem,FieldByName('FIO').AsString,FieldByName('date_priem').AsDateTime,true,'','');
        end
      else
        begin
        WizardForm.makeWord(1,memInvPriem,FieldByName('FIO').AsString,FieldByName('date_priem').AsDateTime,true,'','');
        end;
      end
    else
      begin
      if(count=0) then
        begin
        makeWord(2);
        end
      else if(count=1) then
        begin
        makeWord(3);
        end
      else
        begin
        makeWord(1);
        end;
      end;
    end
  else
    begin
    ShowMessage('В выбранном диапозоне дат приемов нет. Попробуйте выбрать другой диапазон.');
    end;
  end;
end;

procedure THistForm.makeWord(index:integer);
var Shablon,FileName,oldStr,newStr,cell,replace,ext,row,forw:OleVariant;i:integer;
    findRSnimok:boolean; sdoctor, desc:string;datePriem:TDateTime; WordApp: OleVariant;
begin
forw:=true;
FileName:='c:\veda\Priem.doc';
WordApp := CreateOleObject('Word.Application');
if(index=2) then
  begin
  shablon:='c:\veda\CardAll.doc';
  WordApp.Documents.Open(Shablon,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  // WordDoc := WordApp.ActiveDocument;
  with mainDataModule.dataSetPacient do
    begin
    Active:=false;
    Parameters.ParamValues['cardCode']:=PacientId;
    Active:=true;
    First;
    replace:=wdReplaceOne;  oldStr:='$$num';  newStr:=FieldByName('NewNum2').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    Formatsettings.ShortDateFormat := 'dd.MM.yyyy';
    replace:=wdReplaceOne;  oldStr:='$$year';  newStr:=DateToStr(FieldByName('Date_open').AsDateTime);
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$FIO';  newStr:=FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);


    Formatsettings.ShortDateFormat := 'dd.MM.yyyy';
    replace:=wdReplaceOne;  oldStr:='$$date_bir';  newStr:=DateToStr(FieldByName('Date_birth').AsDateTime);
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$Pol';  newStr:=FieldByName('Sex').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$Profession';  newStr:=FieldByName('Profession_pl_w').AsString + '('+FieldByName('Place_work_dolzhn').AsString+')';
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$Address';  newStr:=FieldByName('Adress').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$psz';  newStr:=FieldByName('Psz').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$prikus';  newStr:=FieldByName('Prikus').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    with mainDataModule.dataSetPriemsByDates do
      begin
      sdoctor:=FieldByName('FIO').AsString;
      datePriem:=FieldBYname('Date_priem').AsDateTime;
      desc:=FieldByName('Description').AsString;
      memInvPriem.Text:=desc;
      Next;
      end;

    findRSnimok:=false;
    oldStr:='';newStr:='';
    for i:=0 to memInvPriem.Lines.Count do
      begin
      if StrPos(PChar(memInvPriem.Lines[i]), PChar('Диагноз:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne; oldStr:='$$diag';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-9);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Жалобы:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$zhal';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-8);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('An. morbi:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$anm';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-11);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Объективно:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$obno';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-12);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Слизистая:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$sliz';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-11);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Снимок:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$RSnimok';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-8);
        findRSnimok:=true;
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Лечение:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$lech';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-9);
        end
      else
        begin
        newStr:=newStr+memInvPriem.Lines[i];
        end;
      end;
    Functions.ReplaceInWord(wordApp,oldStr,newStr);
    if(not(findRSnimok)) then
      begin
      oldStr:='$$Rsnimok';  newStr:=' ';
      Functions.ReplaceInWord(wordApp,oldStr,newStr);
      end;
    WordApp.Tables.Item(3).Rows.Item(3).Cells.Item(2).Select;
    row:=1;
    with mainDataModule.dataSetPriemsByDates do
      begin
      for i:=1 to RecordCount-1 do
        begin
        cell:=wdCell;
        sdoctor:=FieldByName('FIO').AsString;
        datePriem:=FieldBYname('Date_priem').AsDateTime;
        desc:=FieldByName('Description').AsString;
        WordApp.Selection.MoveLeft(cell,row,EmptyParam);
        Formatsettings.ShortDateFormat := 'dd MMMM yyyy';
        WordApp.Selection.TypeText(DateToStr(datePriem));
        WordApp.Selection.MoveRight(cell,row,EmptyParam);
        WordApp.Selection.TypeText(desc);
        WordApp.Selection.MoveRight(cell,row,EmptyParam);
        WordApp.Selection.TypeText(sdoctor);
        WordApp.Selection.InsertRowsBelow(row);
        Next;
        end;
      end;
       //колонтитулы
     WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
  oldStr:='$$num';  newStr:=FieldByName('newNum2').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  oldStr:='$$num';  newStr:=FieldByName('newNum2').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

   WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
  oldStr:='$$FIO';  newStr:=FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

   WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  oldStr:='$$FIO';  newStr:=FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);


    end;
    WordApp.SaveAs(FileName,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
    wordApp.Close(true,EmptyParam,EmptyParam);
    wordApp.Visible:=true;
    WordApp.Documents.Open(FileName,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  wordApp.Quit(true,EmptyParam,EmptyParam);   //Disconnect;
  end
else if((index=3)or(index=1)) then
  begin
  if (index=3) then shablon:='c:\veda\withSecond.doc';
  if (index=1) then shablon:='c:\veda\withoutSecond.doc';
  WordApp.Documents.Open(Shablon,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  // WordDoc := WordApp.ActiveDocument;

  with mainDataModule.dataSetPriemsByDates do
  begin
  Formatsettings.ShortDateFormat := 'dd MMMM yyyy';
  replace:=wdReplaceOne;  oldStr:='$$date';  newStr:=DateToStr(FieldByName('Date_priem').AsDateTime);
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  oldStr:='$$hist';  newStr:='';replace:=wdReplaceNone;
  Functions.typeToWordHist(wordApp,oldStr,FieldByName('Description').AsString,true);

  oldStr:='$$Doc';  newStr:=fieldByName('FIO').AsString; replace:=wdReplaceOne;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  end;
  row:=1;
  with mainDataModule.dataSetPriemsByDates do
     begin
     for i:=1 to RecordCount-1 do
        begin
        Next;
        WordApp.Selection.InsertRowsBelow(row);
        cell:=wdCell;
        sdoctor:=FieldByName('FIO').AsString;
        datePriem:=FieldBYname('Date_priem').AsDateTime;
        desc:=FieldByName('Description').AsString;
        WordApp.Selection.MoveLeft(cell,row,EmptyParam);
        Formatsettings.ShortDateFormat := 'dd MMMM yyyy';
        WordApp.Selection.TypeText(DateToStr(datePriem));
        WordApp.Selection.MoveRight(cell,row,EmptyParam);
        functions.typeToWordHist(WordApp,'',desc,false);
        //WordApp.Selection.TypeText(desc);
        WordApp.Selection.MoveRight(cell,row,EmptyParam);
        WordApp.Selection.TypeText(sdoctor);
        end;
      end;
  functions.ActivateDataSetWithParam('pacientId_',PacientId,mainDataModule.dataSetFIOById);
  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;

  oldStr:='$$num';  newStr:=mainDataModule.dataSetFIOById.FieldByName('newNum2').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  oldStr:='$$num';  newStr:=mainDataModule.dataSetFIOById.FieldByName('newNum2').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

   WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
   oldStr:='$$FIO';  newStr:=mainDataModule.dataSetFIOById.FieldByName('Surname').AsString+' '+mainDataModule.dataSetFIOById.FieldByName('Name').AsString+' '+mainDataModule.dataSetFIOById.FieldByName('Sec_name').AsString; replace:=wdReplaceAll;
   WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

   WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  oldStr:='$$FIO';  newStr:=mainDataModule.dataSetFIOById.FieldByName('Surname').AsString+' '+mainDataModule.dataSetFIOById.FieldByName('Name').AsString+' '+mainDataModule.dataSetFIOById.FieldByName('Sec_name').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

  WordApp.SaveAs(FileName,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  wordApp.Close(true,EmptyParam,EmptyParam);
  wordApp.Visible:=true;
  WordApp.Documents.Open(FileName,EmptyParam,
  EmptyParam,EmptyParam,EmptyParam,EmptyParam,
  EmptyParam,EmptyParam,EmptyParam,EmptyParam,
  EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  wordApp.Quit(true,EmptyParam,EmptyParam);   //Disconnect;
  end;
end;

procedure THistForm.makeWordAll;
var Shablon,FileName,oldStr,newStr,cell,replace,ext,row, forw:OleVariant;i:integer;
    findRSnimok:boolean; sdoctor, desc:string;datePriem:TDateTime; WordApp: OleVariant;
begin
forw:=true;
WordApp := CreateOleObject('Word.Application');
shablon:='c:\veda\CardAll.doc';
FileName:='c:\veda\Priem.doc';
  WordApp.Documents.Open(Shablon,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
 // WordDoc := WordApp.ActiveDocument;
  with mainDataModule.dataSetPacient do
    begin
    Active:=false;
    Parameters.ParamValues['cardCode']:=PacientId;
    Active:=true;
    First;
    replace:=wdReplaceOne;  oldStr:='$$num';  newStr:=FieldByName('NewNum2').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    Formatsettings.ShortDateFormat := 'dd.MM.yyyy';
    replace:=wdReplaceOne;  oldStr:='$$year';  newStr:=DateToStr(FieldByName('Date_open').AsDateTime);
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$FIO';  newStr:=FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    Formatsettings.ShortDateFormat := 'dd.MM.yyyy';
    replace:=wdReplaceOne;  oldStr:='$$date_bir';  newStr:=DateToStr(FieldByName('Date_birth').AsDateTime);
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$Pol';  newStr:=FieldByName('Sex').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$Profession';  newStr:=FieldByName('Profession_pl_w').AsString + '('+FieldByName('Place_work_dolzhn').AsString+')';
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$Address';  newStr:=FieldByName('Adress').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$psz';  newStr:=FieldByName('Psz').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

    replace:=wdReplaceOne;  oldStr:='$$prikus';  newStr:=FieldByName('Prikus').AsString;
    WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,newStr,replace,EmptyParam, EmptyParam, EmptyParam, EmptyParam);

  Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbPriems.Items.Objects[0])),mainDataModule.dataSetPriemByIdWithSotr);
  with mainDataModule.dataSetPriemByIdWithSotr do
    begin
    sdoctor:=FieldByName('FIO').AsString;
    datePriem:=FieldBYname('Date_priem').AsDateTime;
    desc:=FieldByName('Description').AsString;
    memInvPriem.Text:=desc;
    end;

    findRSnimok:=false;
     oldStr:='';newStr:='';
     for i:=0 to memInvPriem.Lines.Count do
     begin
      if StrPos(PChar(memInvPriem.Lines[i]), PChar('Диагноз:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne; oldStr:='$$diag';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-9);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Жалобы:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$zhal';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-8);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('An. morbi:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$anm';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-11);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Объективно:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        replace:=wdReplaceOne;  oldStr:='$$obno';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-12);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Слизистая:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$sliz';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-11);
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Снимок:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$RSnimok';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-8);
        findRSnimok:=true;
        end
      else if StrPos(PChar(memInvPriem.Lines[i]), PChar('Лечение:')) <> nil then
        begin
        Functions.ReplaceInWord(wordApp,oldStr,newStr);
        oldStr:='$$lech';  newStr:=RightStr(PChar(memInvPriem.Lines[i]),StrLen(PChar(memInvPriem.Lines[i]))-9);
        end
      else
        begin
        newStr:=newStr+memInvPriem.Lines[i];
        end;
      end;
    Functions.ReplaceInWord(wordApp,oldStr,newStr);
    if(not(findRSnimok)) then
      begin
      oldStr:='$$Rsnimok';  newStr:=' ';
      Functions.ReplaceInWord(wordApp,oldStr,newStr);
      end;
    WordApp.Tables.Item(3).Rows.Item(3).Cells.Item(2).Select;
    row:=1;
    for i:=1 to lbPriems.Count-1 do
      begin
      cell:=wdCell;
      Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbPriems.Items.Objects[i])),mainDataModule.dataSetPriemByIdWithSotr);
      with mainDataModule.dataSetPriemByIdWithSotr do
        begin
        sdoctor:=FieldByName('FIO').AsString;
        datePriem:=FieldBYname('Date_priem').AsDateTime;
        desc:=FieldByName('Description').AsString;
        memInvPriem.Text:=desc;
        end;
      WordApp.Selection.MoveLeft(cell,row,EmptyParam);
      WordApp.Selection.TypeText(DateToStr(datePriem));
      WordApp.Selection.MoveRight(cell,row,EmptyParam);
      Functions.typeToWordHist(wordApp,'',desc,false);
     // WordApp.Selection.TypeText(desc);
      WordApp.Selection.MoveRight(cell,row,EmptyParam);
      WordApp.Selection.TypeText(sdoctor);
      WordApp.Selection.InsertRowsBelow(row);
      end;
       //колонтитулы

     WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
  oldStr:='$$num';  newStr:=FieldByName('newNum2').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

  WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  oldStr:='$$num';  newStr:=FieldByName('newNum2').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

   WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageHeader;
  oldStr:='$$FIO';  newStr:=FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);

   WordApp.ActiveWindow.ActivePane.View.SeekView:=wdSeekCurrentPageFooter;
  oldStr:='$$FIO';  newStr:=FieldByName('Surname').AsString+' '+FieldByName('Name').AsString+' '+FieldByName('Sec_name').AsString; replace:=wdReplaceAll;
  WordApp.Selection.Find.Execute(oldStr,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,forw,
                EmptyParam,EmptyParam,newStr,replace, EmptyParam,EmptyParam,EmptyParam,EmptyParam);


  
    end;
    WordApp.SaveAs(FileName,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
    wordApp.Close(true,EmptyParam,EmptyParam);
    wordApp.Visible:=true;
    WordApp.Documents.Open(FileName,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
  wordApp.Quit(true,EmptyParam,EmptyParam);      //Disconnect;
end;

procedure THistForm.Button1Click(Sender: TObject);
var  StarOffice: Variant; StarDesktop, Document: Variant;
begin
 if VarIsEmpty(StarOffice) then
 StarOffice := CreateOleObject('com.sun.star.ServiceManager');
 StarDesktop := StarOffice.createInstance('com.sun.star.frame.Desktop');
 Document := StarDesktop.LoadComponentFromURL(
                  'private:factory/swriter', '_blank', 0,
                  VarArrayCreate([0, -1], varVariant));
 //Document.
end;

end.
