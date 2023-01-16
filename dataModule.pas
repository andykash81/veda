unit dataModule;

interface

uses
  SysUtils, Classes, DB, ADODB, Winapi.Windows, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;

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

uses CardsForm;

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
//  iBytesRead: Integer;
  Buffer: PChar;
  i: Integer;
begin
if not(FileExists('c:\veda\db333.mdb')) then
 begin
  try
  conectStr:='';
  iFileHandle := FileOpen('c:\veda\connectionString.txt', fmOpenRead);
  iFileLength := FileSeek(iFileHandle,0,2);
  FileSeek(iFileHandle,0,0);
  Buffer := PChar(AllocMem(iFileLength + 1));
  iBytesRead := FileRead(iFileHandle, Buffer^, iFileLength);
  FileClose(iFileHandle);
  for i := 0 to iBytesRead-1 do
    begin
    conectStr:=conectStr+Buffer[i];
    end;
   // mainConnection.ConnectionString:=conectStr;
    mainConnection.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+conectStr+
    ';Mode=Share Deny None;Extended Properties="";Persist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking '+
    'Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale'+
    ' on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
    finally
      FreeMem(Buffer);
    end;
  end;
end;

end.
