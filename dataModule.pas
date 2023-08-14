unit dataModule;

interface

uses
  SysUtils, Classes, DB, ADODB, Winapi.Windows, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Dialogs, Forms, IdBaseComponent, IdCoder, IdCoder3to4,
  IdCoder00E, IdCoderXXE;

type
  TmainDataModule = class(TDataModule)
    mainConnection: TADOConnection;
    dataSetPacientList: TADODataSet;
    dsPacientList: TDataSource;
    queryPacientInsert: TADOQuery;
    dsMaxNum: TADODataSet;
    dsMaxNumFam: TDataSource;
    queryPacientUpdate: TADOQuery;
    DataSetLast: TADODataSet;
    dsLast: TDataSource;
    dataSetPacient: TADODataSet;
    num_fam2: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    DateTimeField1: TDateTimeField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    DateTimeField2: TDateTimeField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    dsPacient: TDataSource;
    queryPacientDelete: TADOQuery;
    queryPSZInsert: TADOQuery;
    queryPSZDelete: TADOQuery;
    queryInsertEmptyDiag: TADOQuery;
    PSZByCode: TADODataSet;
    dsPszByCode: TDataSource;
    dataSetDoctorsList: TADODataSet;
    dsDoctorsList: TDataSource;
    dataSetZubList: TADODataSet;
    dsZubList: TDataSource;
    dataSetDiagnozList: TADODataSet;
    dataSetDiagnozpict: TADODataSet;
    dataSetLechList: TADODataSet;
    dataSetLechPict: TADODataSet;
    dataSetPacList: TADODataSet;
    dsPacList: TDataSource;
    dataSetLikePac: TADODataSet;
    dataSetDictBranches: TADODataSet;
    dataSetDictBranch: TADODataSet;
    dataSetDictItem: TADODataSet;
    dataSetDiags: TADODataSet;
    dataSetDiag: TADODataSet;
    dataSetMaxDiag: TADODataSet;
    maxDiag: TIntegerField;
    queryDeleteDiag: TADOQuery;
    queryDiagUpdate: TADOQuery;
    dataSetLechs: TADODataSet;
    dataSetLech: TADODataSet;
    dataSetLechDiags: TADODataSet;
    dataSetMaxLech: TADODataSet;
    maxLech: TIntegerField;
    queryInsertEmptyLech: TADOQuery;
    queryDeleteLech: TADOQuery;
    queryInsertDiagLech: TADOQuery;
    queryDeleteDiagLech: TADOQuery;
    queryUpdateLech: TADOQuery;
    dataSetPrices: TADODataSet;
    dataSetMaxPrice: TADODataSet;
    queryDeletePrice: TADOQuery;
    dataSetPrice: TADODataSet;
    queryPriceUpdate: TADOQuery;
    dataSetLetters: TADODataSet;
    dataSetMaxLechPrice: TADODataSet;
    queryInsertLechPrice: TADOQuery;
    queryDeletePricesLech: TADOQuery;
    dataSetLechPrices: TADODataSet;
    dataSetZubCard: TADODataSet;
    dataSetzubCardMax: TADODataSet;
    dataSetMaxOrder: TADODataSet;
    queryInsertZubCard: TADOQuery;
    queryZubCardDelete: TADOQuery;
    dataSetLechByDiag: TADODataSet;
    dataSetDiagById: TADODataSet;
    dataSetLechById: TADODataSet;
    dataSetLechItems: TADODataSet;
    queryInsertPriem: TADOQuery;
    dataSetMaxPriem: TADODataSet;
    dsMaxNum2: TADODataSet;
    dataSetHaveNewNum: TADODataSet;
    queryGenerateNewNum: TADOQuery;
    dataSetZubCardOne: TADODataSet;
    queryUpdateCardPszPrikus: TADOQuery;
    dataSetPszPrikus: TADODataSet;
    dataSetLechRelays: TADODataSet;
    dataSetPricesById: TADODataSet;
    dataSetPriceDescById: TADODataSet;
    queryInsertZubCardFromPriem: TADOQuery;
    dataSetZubIdByName: TADODataSet;
    dataSetLetterIdByDiagId: TADODataSet;
    dataSetLetterIdByLechId: TADODataSet;
    dataSetPriemCount: TADODataSet;
    dataSetPacientPrikus: TMemoField;
    dataSetPacientPsz: TMemoField;
    dataSetPriemByPacient: TADODataSet;
    dataSetPriemById: TADODataSet;
    queryPriemUpdate: TADOQuery;
    queryPriemDelete: TADOQuery;
    dataSetPacientById: TADODataSet;
    dataSetPriemByIdWithSotr: TADODataSet;
    dataSetPriemsByDates: TADODataSet;
    dataSetPriemsBeforeDate: TADODataSet;
    dataSetPriemsByDate: TADODataSet;
    dataSetFIOById: TADODataSet;
    dataSetPacientnewNum2: TWideStringField;
    dataSetDict: TADODataSet;
    dsDict: TDataSource;
    dataSetPacientOthCities: TIntegerField;
    dataSetCardIdByPriemId: TADODataSet;
    dataSetPacientForEzhList: TADODataSet;
    dataSetSanDiags: TADODataSet;
    dataSetMaxDateBeforePriem: TADODataSet;
    dataSetIsDiagSan: TADODataSet;
    dataSetPriemForEzhList: TADODataSet;
    dataSetDistinctPriems: TADODataSet;
    dataSetIsLechOrt: TADODataSet;
    queryFileNamePriemUpdate: TADOQuery;
    dataSetFileNameByPriemId: TADODataSet;
    dataSetOstr: TADODataSet;
    dataSetFilesById: TADODataSet;
    queryInsertFile: TADOQuery;
    dataSetMaxFileID: TADODataSet;
    dataSetFileNameById: TADODataSet;
    dataSetFileById: TADODataSet;
    queryUpdateFile: TADOQuery;
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    PacListQuery: TFDQuery;
    queryPacientInsert1: TFDQuery;
    queryPSZInsert1: TFDQuery;
    queryPacientUpdate1: TFDQuery;
    queryPSZDelete1: TFDQuery;
    dataSetPacient1: TFDMemTable;
    dsPacientQuery1: TFDQuery;
    dsPacientSource: TDataSource;
    PSZByCode1: TFDQuery;
    dataSetLikePac1: TFDQuery;
    dsMaxNum1: TFDQuery;
    dsMaxNum2_1: TFDQuery;
    dataSetPacList1: TFDQuery;
    DataSetLast1: TFDQuery;
    queryPacientDelete1: TFDQuery;
    dataSetHaveNewNum1: TFDQuery;
    queryGenerateNewNum1: TFDQuery;
    dataSetPacientList1: TFDQuery;
    dsPacientList1: TDataSource;
    dataSetFileById1: TFDQuery;
    dataSetFilesById1: TFDQuery;
    queryInsertFile1: TFDQuery;
    dataSetMaxFileID1: TFDQuery;
    dataSetFileNameById1: TFDQuery;
    queryUpdateFile1: TFDQuery;
    dataSetPriemCount1: TFDQuery;
    dataSetPszPrikus1: TFDQuery;
    queryUpdateCardPszPrikus1: TFDQuery;
    dataSetMaxPriem1: TFDQuery;
    queryInsertPriem1: TFDQuery;
    queryFileNamePriemUpdate1: TFDQuery;
    dataSetZubIdByName1: TFDQuery;
    dataSetLetterIdByLechId1: TFDQuery;
    dataSetLetterIdByDiagId1: TFDQuery;
    dataSetzubCardMax1: TFDQuery;
    dataSetMaxOrder1: TFDQuery;
    queryInsertZubCardFromPriem1: TFDQuery;
    dataSetFIOById1: TFDQuery;
    dataSetDiagById1: TFDQuery;
    dataSetLechItems1: TFDQuery;
    dataSetLechById1: TFDQuery;
    dataSetPriceDescById1: TFDQuery;
    queryInsertZubCard1: TFDQuery;
    queryZubCardDelete1: TFDQuery;
    dataSetLechByDiag1: TFDQuery;
    dataSetLechRelays1: TFDQuery;
    dataSetPricesById1: TFDQuery;
    dataSetIsLechOrt1: TFDQuery;
    dataSetOstr1: TFDQuery;
    dataSetPacientById1: TFDQuery;
    dataSetDoctorsList1: TFDQuery;
    dataSetDictBranch1: TFDQuery;
    dataSetZubCard1: TFDQuery;
    dataSetPriemByPacient1: TFDQuery;
    dataSetPriemById1: TFDQuery;
    queryPriemUpdate1: TFDQuery;
    dataSetFileNameByPriemId1: TFDQuery;
    queryPriemDelete1: TFDQuery;
    dataSetPriemByIdWithSotr1: TFDQuery;
    dataSetPriemsByDates1: TFDQuery;
    dataSetPriemsBeforeDate1: TFDQuery;
    dataSetPriemsByDate1: TFDQuery;
    dataSetDistinctPriems1: TFDQuery;
    dataSetPacientForEzhList1: TFDQuery;
    dataSetMaxDateBeforePriem1: TFDQuery;
    dataSetPriemForEzhList1: TFDQuery;
    dataSetCardIdByPriemId1: TFDQuery;
    dataSetDictBranches1: TFDQuery;
    dataSetPrices1: TFDQuery;
    dataSetLetters1: TFDQuery;
    dataSetDict1: TFDQuery;
    dataSetDiags1: TFDQuery;
    dataSetDiag1: TFDQuery;
    dataSetMaxDiag1: TFDQuery;
    queryInsertEmptyDiag1: TFDQuery;
    queryDeleteDiag1: TFDQuery;
    queryDiagUpdate1: TFDQuery;
    dataSetLechs1: TFDQuery;
    dataSetLech1: TFDQuery;
    dataSetLechDiags1: TFDQuery;
    dataSetLechPrices1: TFDQuery;
    dataSetMaxLech1: TFDQuery;
    queryInsertEmptyLech1: TFDQuery;
    queryDeleteLech1: TFDQuery;
    queryInsertDiagLech1: TFDQuery;
    queryDeleteDiagLech1: TFDQuery;
    queryUpdateLech1: TFDQuery;
    dataSetMaxPrice1: TFDQuery;
    queryDeletePrice1: TFDQuery;
    dataSetPrice1: TFDQuery;
    queryPriceUpdate1: TFDQuery;
    queryInsertLechPrice1: TFDQuery;
    dataSetMaxLechPrice1: TFDQuery;
    queryDeletePricesLech1: TFDQuery;
    DecoderXX: TIdDecoderXXE;
    FDManager1: TFDManager;
     procedure dsPacListDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainDataModule: TmainDataModule;

implementation

uses CardsForm, DictEditFrm;

{$R *.dfm}


procedure TmainDataModule.dsPacListDataChange(Sender: TObject;
  Field: TField);
begin
if((CardsFrm<>nil)and(CardsFrm.Visible)) then
    begin
      CardsFrm.redrawPanel;
    end;
end;

procedure TmainDataModule.DataModuleCreate(Sender: TObject);
var conectStr:string; iFileHandle: Integer;
  iFileLength: Integer;
  iBytesRead: Integer;
  Buffer: PChar;
  i: Integer;
  lineFile, pList: TStringList;

begin
try
   lineFile:=TStringList.Create;
   lineFile.LoadFromFile(ExtractFilePath(Application.ExeName)+'\bd.sys');
   with FDConnection1.Params do
   begin
   Values['Server']:= DecoderXX.DecodeString(lineFile[0]);
   Values['Port']:= DecoderXX.DecodeString(lineFile[1]);
   Database := DecoderXX.DecodeString(lineFile[2]);
   UserName := DecoderXX.DecodeString(lineFile[3]);
   Password := DecoderXX.DecodeString(lineFile[4]);

   end;
   FDConnection1.Connected:=True;
   PacListQuery.Active:=True;
except
   ShowMessage('Отсутсвует подключение к базе данных. Проверьте настройки.');
end;

//if not(FileExists('c:\veda\db333.mdb')) then
// begin
//  try
//  conectStr:='';
//  iFileHandle := FileOpen('c:\veda\connectionString.txt', fmOpenRead);
//  iFileLength := FileSeek(iFileHandle,0,2);
//  FileSeek(iFileHandle,0,0);
//  Buffer := PChar(AllocMem(iFileLength + 1));
//  iBytesRead := FileRead(iFileHandle, Buffer^, iFileLength);
//  FileClose(iFileHandle);
//  for i := 0 to iBytesRead-1 do
//    begin
//    conectStr:=conectStr+Buffer[i];
//    end;
//   // mainConnection.ConnectionString:=conectStr;
//    mainConnection.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+conectStr+
//    ';Mode=Share Deny None;Extended Properties="";Persist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking '+
//    'Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale'+
//    ' on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
//    finally
//      FreeMem(Buffer);
//    end;
//  end;
end;

end.
