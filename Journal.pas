unit Journal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Menus, OleServer,
  ShellApi, Word_TLB, FireDAC.Comp.DataSet, ComObj;

type
  TJournalForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    cbDoctors: TComboBox;
    lbYesterday: TListBox;
    lbToday: TListBox;
    lbTomorrow: TListBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    dtpDatePriem: TDateTimePicker;
    Label2: TLabel;
    btnBackWeek: TButton;
    btnBackDay: TButton;
    btnToday: TButton;
    btnForDay: TButton;
    btnForWeek: TButton;
    pMnu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    btnExport: TButton;
    btnOpenFolder: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnTodayClick(Sender: TObject);
    procedure btnBackDayClick(Sender: TObject);
    procedure btnBackWeekClick(Sender: TObject);
    procedure btnForDayClick(Sender: TObject);
    procedure btnForWeekClick(Sender: TObject);
    procedure dtpDatePriemChange(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure cbDoctorsChange(Sender: TObject);
    procedure btnExportMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure lbTodayMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure makeHeader;
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnOpenFolderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JournalForm: TJournalForm;

implementation

uses DateUtils, dataModule, Constants, ADODB, Functions, MAIN,
  NewPacientForm, HistFrm, Math;

{$R *.dfm}

procedure TJournalForm.FormShow(Sender: TObject);
var i:integer;
begin
// Заполним список докторов
   mainDataModule.dataSetDoctorsList1.Active:=false;
   mainDataModule.dataSetDoctorsList1.SQL.Text:='select "Sotr"."Code_sotr", "Sotr"."FIO" from "Sotr" where "Rights" = '+IntToStr(Constants.RIGHTS_DOCTOR);
   mainDataModule.dataSetDoctorsList1.Active:=true;
   if(mainDataModule.dataSetDoctorsList1.RecordCount>0) then
    begin
    mainDataModule.dataSetDoctorsList1.First;
      for i:=1 to mainDataModule.dataSetDoctorsList1.RecordCount do
        begin
        cbDoctors.Items.AddObject(mainDataModule.dataSetDoctorsList1.FieldByName('FIO').AsString, TObject(mainDataModule.dataSetDoctorsList1.FieldByName('code_sotr').AsInteger));
        mainDataModule.dataSetDoctorsList1.Next;
        end;
    end;
dtpDatePriem.DateTime:=Today;
dtpDatePriemChange(dtpDatePriem);
btnExport.Enabled:=false;
end;

procedure TJournalForm.btnTodayClick(Sender: TObject);
begin
dtpDatePriem.DateTime:=Today;
dtpDatePriemChange(dtpDatePriem);
end;

procedure TJournalForm.btnBackDayClick(Sender: TObject);
begin
dtpDatePriem.DateTime:=dtpDatePriem.DateTime-1;
dtpDatePriemChange(dtpDatePriem);
end;

procedure TJournalForm.btnBackWeekClick(Sender: TObject);
begin
dtpDatePriem.DateTime:=dtpDatePriem.DateTime-7;
dtpDatePriemChange(dtpDatePriem);
end;

procedure TJournalForm.btnForDayClick(Sender: TObject);
begin
dtpDatePriem.DateTime:=dtpDatePriem.DateTime+1;
dtpDatePriemChange(dtpDatePriem);
end;

procedure TJournalForm.btnForWeekClick(Sender: TObject);
begin
dtpDatePriem.DateTime:=dtpDatePriem.DateTime+7;
dtpDatePriemChange(dtpDatePriem);
end;

procedure TJournalForm.dtpDatePriemChange(Sender: TObject);
var i, j:integer; nam, sname, priemKr:string; priemKrList:TStringList;docsCount:integer;
begin
lbToday.Items.Clear;
lbTomorrow.Items.Clear;
lbYesterday.Items.Clear;
if(cbDoctors.ItemIndex<>-1) then
  begin
  // Узнаем сколлько документов лежит на сегодняшний день
  // Functions.getConectStr
  Formatsettings.ShortDateFormat:='yyyy.MM.dd';
  docsCount:=Functions.getDocsNumByPath(Functions.getConectStr+'\veda_hist\'+DateToStr(dtpDatePriem.DateTime)+'\'+cbDoctors.Text);
  btnOpenFolder.Caption:='На печать('+IntToStr(docsCount)+')';
  with mainDataModule.dataSetPriemsByDate1 do
    begin
    //Сегодня
    Active:=false;
    Params.ParamValues['sotrId']:=Integer(cbDoctors.Items.Objects[cbDoctors.ItemIndex]);
    Params.ParamValues['dateTo']:=FloatToDateTime(Int(dtpDatePriem.DateTime)+1);
    Params.ParamValues['dateFrom']:=FloatToDateTime(Int(dtpDatePriem.DateTime));
    Active:=true;
    if(RecordCount>0) then
      begin
      First;
      for i:=0 to RecordCount-1 do
        begin
        Functions.ActivateDataSetWithParam('pacientId_',FieldByName('CardId').AsString, mainDataModule.dataSetFIOById1);
        if(StrLen(PChar(mainDataModule.dataSetFIOById1.FieldByName('Name').AsString))<>0) then nam:=mainDataModule.dataSetFIOById1.FieldByName('Name').AsString[1]+'. ' else nam:='';
        if(StrLen(PChar(mainDataModule.dataSetFIOById1.FieldByName('Sec_Name').AsString))<>0) then sname:=mainDataModule.dataSetFIOById1.FieldByName('Sec_Name').AsString[1]+'.' else sname:='';
        priemKrList:=TStringList.Create;
        priemKr:='';
        ExtractStrings(['&'],[],PChar(FieldByName('PriemKr').AsString),priemKrList);
        for j:=0 to priemKrList.Count-1 do
          begin
          priemKr:=priemKr+priemKrList[j]+' ';
          end;
        lbToday.Items.AddObject(mainDataModule.dataSetFIOById1.FieldByName('Surname').AsString+' '+nam+sname+' - '+priemKr, TObject(FieldByName('PriemId').AsInteger));
        Next;
        end;
      end;
    //Вчера
    Active:=false;
    Params.ParamValues['sotrId']:=Integer(cbDoctors.Items.Objects[cbDoctors.ItemIndex]);
    Params.ParamValues['dateTo']:=FloatToDateTime(Int(dtpDatePriem.DateTime));
    Params.ParamValues['dateFrom']:=FloatToDateTime(Int(dtpDatePriem.DateTime)-1);
    Active:=true;
    if(RecordCount>0) then
      begin
      First;
      for i:=0 to RecordCount-1 do
        begin
        Functions.ActivateDataSetWithParam('pacientId_',FieldByName('CardId').AsString, mainDataModule.dataSetFIOById1);
        if(StrLen(PChar(mainDataModule.dataSetFIOById1.FieldByName('Name').AsString))<>0) then nam:=mainDataModule.dataSetFIOById1.FieldByName('Name').AsString[1]+'. ' else nam:='';
        if(StrLen(PChar(mainDataModule.dataSetFIOById1.FieldByName('Sec_Name').AsString))<>0) then sname:=mainDataModule.dataSetFIOById1.FieldByName('Sec_Name').AsString[1]+'.' else sname:='';
        priemKrList:=TStringList.Create;
        priemKr:='';
        ExtractStrings(['&'],[],PChar(FieldByName('PriemKr').AsString),priemKrList);
        for j:=0 to priemKrList.Count-1 do
          begin
          priemKr:=priemKr+priemKrList[j]+' ';
          end;
        lbYesterday.Items.AddObject(mainDataModule.dataSetFIOById1.FieldByName('Surname').AsString+' '+nam +sname+' - ' +priemKr, TObject(FieldByName('PriemId').AsInteger));
        Next;
        end;
      end;
     //Завтра
     Active:=false;
    Params.ParamValues['sotrId']:=Integer(cbDoctors.Items.Objects[cbDoctors.ItemIndex]);
    Params.ParamValues['dateTo']:=FloatToDateTime(Int(dtpDatePriem.DateTime)+2);
    Params.ParamValues['dateFrom']:=FloatToDateTime(Int(dtpDatePriem.DateTime)+1);
    Active:=true;
    if(RecordCount>0) then
      begin
      First;
      for i:=0 to RecordCount-1 do
        begin
        Functions.ActivateDataSetWithParam('pacientId_',FieldByName('CardId').AsString, mainDataModule.dataSetFIOById1);
        if(StrLen(PChar(mainDataModule.dataSetFIOById1.FieldByName('Name').AsString))<>0) then nam:=mainDataModule.dataSetFIOById1.FieldByName('Name').AsString[1]+'. ' else nam:='';
        if(StrLen(PChar(mainDataModule.dataSetFIOById1.FieldByName('Sec_Name').AsString))<>0) then sname:=mainDataModule.dataSetFIOById1.FieldByName('Sec_Name').AsString[1]+'.' else sname:='';
        priemKrList:=TStringList.Create;
        priemKr:='';
        ExtractStrings(['&'],[],PChar(FieldByName('PriemKr').AsString),priemKrList);
        for j:=0 to priemKrList.Count-1 do
          begin
          priemKr:=priemKr+priemKrList[j]+' ';
          end;
        lbTomorrow.Items.AddObject(mainDataModule.dataSetFIOById1.FieldByName('Surname').AsString+' '+nam+sname+' - '+priemKr, TObject(FieldByName('PriemId').AsInteger));
        Next;
        end;
      end;
    end;
  end;
end;

procedure TJournalForm.N2Click(Sender: TObject);
begin
{}
end;

procedure TJournalForm.btnExportClick(Sender: TObject);
var Shablon,FileName,oldStr,newStr,cell,replace,ext,row:OleVariant;i,j,k, num, count, number:integer;
    sanus,pfirst:boolean;  priemKrList:TStringList; diagKr, lechKr:string; sdoctor, desc, pacientId, pname, sname:string;datePriem:TDateTime;
    pacList:TStringList; WordApp: OleVariant; table: variant;
begin
pacList:=TStringList.Create;
FileName:=ExtractFilePath(Application.ExeName)+'\Отчет.doc';
shablon:=ExtractFilePath(Application.ExeName)+'\Terap_ezh.doc';
WordApp:=CreateOleObject('Word.Application');
WordApp.Documents.Open(Shablon);
//WordApp.Visible:=true;
//WordDoc.ConnectTo(WordApp.ActiveDocument);

Formatsettings.ShortDateFormat:='dd';
Functions.ReplaceInWord(WordApp, '$$day', DateToStr(dtpDatePriem.DateTime));

Formatsettings.ShortDateFormat:='MMMM';
Functions.ReplaceInWord(WordApp, '$$month', DateToStr(dtpDatePriem.DateTime));

Formatsettings.ShortDateFormat:='yyyy';
Functions.ReplaceInWord(WordApp, '$$year', DateToStr(dtpDatePriem.DateTime));

Functions.ReplaceInWord(WordApp, '$$doctor', JournalForm.cbDoctors.Text);

table:=WordApp.ActiveDocument.Tables.Item(2);
table.Cell(3,1).Select;
if lbToday.Items.Count>1 then
  begin
  with mainDataModule.dataSetDistinctPriems1 do
    begin
    Active:=false;
    Params.ParamValues['CodeSotr_']:=Integer(cbDoctors.Items.Objects[cbDoctors.ItemIndex]);
    Params.ParamValues['dateTo_']:=FloatToDateTime(Int(dtpDatePriem.DateTime)+1);
    Params.ParamValues['dateFrom_']:=FloatToDateTime(Int(dtpDatePriem.DateTime));
    Active:=true;
    First;
    count:=FieldByName('ReccsCount').AsInteger;
    end;
    row:=count-1;
    WordApp.Selection.InsertRowsBelow(row);
  end;
num:=0;
number:=1;
for i:=1 to lbToday.Items.Count do
  begin


  Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbToday.Items.Objects[i-1])),mainDataModule.dataSetCardIdByPriemId1);
  pacientId:=mainDataModule.dataSetCardIdByPriemId1.FieldByName('CardId').AsString;

  if(pacList.IndexOf(pacientId)=-1) then
    begin
    //№ п/п
    num:=num+1;
    WordApp.ActiveDocument.Tables.Item(2).Rows.Item(num+2).Cells.Item(1).Select;
    WordApp.Selection.TypeText(IntToStr(num));
    Functions.ActivateDataSetWithParam('pacientId_',pacientId,mainDataModule.dataSetPacientForEzhList1);
    with mainDataModule.dataSetPacientForEzhList1 do
      begin
      //Фамилия И.О.
      WordApp.ActiveDocument.Tables.Item(2).Rows.Item(num+2).Cells.Item(3).Select;
      j:=StrLen(PChar(string(FieldByName('Name').AsString)));
      if(j>0) then  pname:=FieldByName('Name').AsString[1]+'. ' else pname := '';
      if(StrLen(PChar(FieldByName('Sec_Name').AsString))<>0) then sname:=FieldByName('Sec_Name').AsString[1]+'. ' else sname := '';
      WordApp.Selection.TypeText(FieldByName('Surname').AsString+ ' ' + pname+ sname);
      //Дата рождения
      WordApp.ActiveDocument.Tables.Item(2).Rows.Item(num+2).Cells.Item(4).Select;
      Formatsettings.ShortDateFormat:='dd.MM.yy';
      WordApp.Selection.TypeText(DateToStr(FieldByName('Date_birth').AsDateTime));

      //Число полных лет
      WordApp.ActiveDocument.Tables.Item(2).Rows.Item(num+2).Cells.Item(5).Select;
      WordApp.Selection.TypeText(IntToStr(YearsBetween(Today, FieldByName('Date_birth').AsDateTime)));

      // Адрес, номер амбулаторной карты
      WordApp.ActiveDocument.Tables.Item(2).Rows.Item(num+2).Cells.Item(6).Select;
      if(Trim(FieldByName('Adress').AsString)='') then
        begin
        WordApp.Selection.TypeText(chr(13)+' №: '+FieldByName('newNum2').AsString);
        end
      else
        begin
        WordApp.Selection.TypeText(FieldByName('Adress').AsString+' №: '+FieldByName('newNum2').AsString);
        end;

      //Иногородние
      WordApp.ActiveDocument.Tables.Item(2).Rows.Item(num+2).Cells.Item(8).Select;
      if(FieldByName('OthCities').AsInteger=0) then
        WordApp.Selection.TypeText('-')
      else
        WordApp.Selection.TypeText('+');

      // Первично принятый
      pfirst:=false;
      WordApp.ActiveDocument.Tables.Item(2).Rows.Item(num+2).Cells.Item(10).Select;
      with mainDataModule.dataSetMaxDateBeforePriem1 do
        begin
        Active:=false;
        Params.ParamValues['cardId_']:=pacientId;
        Params.ParamValues['dateTo_']:=DateToStr(dtpDatePriem.DateTime);
        Active:=true;
        end;
      if(mainDataModule.dataSetMaxDateBeforePriem1.RecordCount=0) then
        begin
        pfirst:=true;
        end
      else
        begin
        if(YearOf(mainDataModule.dataSetMaxDateBeforePriem1.FieldByName('maxDate').AsDateTime)<>YearOf(Today)) then
          begin
          pfirst:=true;
          end
        else
          begin
          if(mainDataModule.dataSetMaxDateBeforePriem1.FieldByName('sanus').AsInteger=1) then
            begin
            pfirst:=true;
            end;
          end;
        end;
      if(pfirst) then
        WordApp.Selection.TypeText('+')
      else
        WordApp.Selection.TypeText('-');
    end;
    //Продолжает лечение
    WordApp.ActiveDocument.Tables.Item(2).Rows.Item(num+2).Cells.Item(12).Select;
    if(pfirst) then
      WordApp.Selection.TypeText('-')
    else
      WordApp.Selection.TypeText('+');

    pacList.Add(pacientId);
    pacList.Add(IntToStr(num));
    number:=num;
    end
  else
    begin
    number:=StrToInt(pacList[pacList.IndexOf(pacientId)+1]);
    end;


   Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbToday.Items.Objects[i-1])),mainDataModule.dataSetPriemForEzhList1);
   with mainDataModule.dataSetPriemForEzhList1 do
    begin
    priemKrList:=TStringList.Create;
    ExtractStrings(['&'],[],PChar(FieldByName('PriemKr').AsString),priemKrList);
    k:=0;
    diagKr:='';
    lechKr:='';
    while k<priemKrList.Count do
      begin
      diagKr:=diagKr+priemKrList[k]+priemKrList[k+1]+' ';
      lechKr:=lechKr+priemKrList[k]+priemKrList[k+2]+' ';
      k:=k+3;
      end;
    // Диагноз
    //diagKr:=WordDoc.Tables.Item(2).Rows.Item(number+2).Cells.Item(11).Range.Text+diagKr;
    WordApp.ActiveDocument.Tables.Item(2).Rows.Item(number+2).Cells.Item(11).Select;
    WordApp.Selection.InsertAfter(diagKr);


   //Фактический объем вып. работы
   //lechKr:=WordDoc.Tables.Item(2).Rows.Item(number+2).Cells.Item(13).Range.Text+lechKr;
   WordApp.ActiveDocument.Tables.Item(2).Rows.Item(number+2).Cells.Item(13).Select;
   WordApp.Selection.InsertAfter(lechKr);

   //Закончено лечение
   WordApp.ActiveDocument.Tables.Item(2).Rows.Item(number+2).Cells.Item(14).Select;
   if(FieldByName('sanus').AsInteger=0) then
      WordApp.Selection.TypeText('-')
    else
      WordApp.Selection.TypeText('+');
   end;

  end;

       { WordApp.Selection.TypeText(DateToStr(datePriem));
        WordApp.Selection.MoveRight(cell,row,EmptyParam);
        WordApp.Selection.TypeText(desc);
        WordApp.Selection.MoveRight(cell,row,EmptyParam);
        WordApp.Selection.TypeText(sdoctor);}
WordApp.ActiveDocument.SaveAs(FileName);
WordApp.ActiveDocument.Close;
wordApp.Visible:=true;
WordApp.Documents.Open(FileName);
//wordApp.Disconnect;

end;

procedure TJournalForm.makeHeader;
var replace, oldStr, newStr:OleVariant;
begin
end;

procedure TJournalForm.cbDoctorsChange(Sender: TObject);
begin
btnExport.Enabled:=true;
dtpDatePriemChange(dtpDatePriem);
end;

procedure TJournalForm.btnExportMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if(btnExport.Enabled) then
  MainForm.pnlHelp.Caption:='Выгрузка ежедневного листка учета'
else
  MainForm.pnlHelp.Caption:='Выберите врача';
end;

procedure TJournalForm.N1Click(Sender: TObject);
var pacientId:string;
begin
pacientId:='';
if(lbToday.Focused) then
  begin
  if(lbToday.ItemIndex<>-1) then
    begin
    Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbToday.Items.Objects[lbToday.ItemIndex])),mainDataModule.dataSetCardIdByPriemId1);
    with mainDataModule.dataSetCardIdByPriemId1 do
      begin
      pacientId:=FieldByName('CardId').AsString;
      end;
    end;
  end
else if(lbYesterday.Focused) then
  begin
  if(lbYesterday.ItemIndex<>-1) then
    begin
    Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbYesterday.Items.Objects[lbYesterday.ItemIndex])),mainDataModule.dataSetCardIdByPriemId1);
    with mainDataModule.dataSetCardIdByPriemId1 do
      begin
      pacientId:=FieldByName('CardId').AsString;
      end;
    end;
  end
else if(lbTomorrow.Focused) then
  begin
  if(lbTomorrow.ItemIndex<>-1) then
    begin
    Functions.ActivateDataSetWithParam('priemId_',IntToStr(Integer(lbTomorrow.Items.Objects[lbTomorrow.ItemIndex])),mainDataModule.dataSetCardIdByPriemId1);
    with mainDataModule.dataSetCardIdByPriemId1 do
      begin
      pacientId:=FieldByName('CardId').AsString;
      end;
    end;
  end;
if(pacientId<>'') then
  begin
  if(TMenuItem(Sender).Name='N1') then
    begin
    NewPacientFrm.pacientId:=pacientId;
    NewPacientFrm.ShowModal;
    end
  else if(TMenuItem(Sender).Name='N2') then
    begin
    HistForm.pacientId:=pacientId;
    HistForm.ShowModal;
    end;
  end;
end;

procedure TJournalForm.lbTodayMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите правой кнопкой на выбранный прием для просмотра карточки и истории болезни';
end;

procedure TJournalForm.Panel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

procedure TJournalForm.btnOpenFolderClick(Sender: TObject);
var dirName:String;
  i: Integer; h:HWND;
begin
dirName:=Functions.getConectStr+ '\veda_hist';
Formatsettings.ShortDateFormat:='yyyy.MM.dd';
if(DirectoryExists(dirName+'\'+DateToStr(dtpDatePriem.Date)+'\'+cbDoctors.Text )) then
  begin
  ShellExecute(h,'open',PChar(dirNAme+'\'+DateToStr(dtpDatePriem.Date)+'\'+cbDoctors.Text),nil,nil,SW_SHOWNORMAL);
  end;
end;



end.
