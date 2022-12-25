unit ZubCardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons;

type
  TZubForm = class(TForm)
    gridLetters: TStringGrid;
    btnOk: TButton;
    btnNew: TBitBtn;
    btnDel: TBitBtn;
    cbLetters: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  pacientId: string;
  zubId:double;
  end;

var
  ZubForm: TZubForm;
implementation

uses dataModule, Constants, DB;

{$R *.dfm}


procedure TZubForm.FormShow(Sender: TObject);
var i, j:integer;
begin
for j:=1 to gridLetters.RowCount do
  begin
  gridLetters.Rows[j].Clear;
  end;
gridLetters.Rows[0].Add('єп/п');
gridLetters.Rows[0].Add('Ѕуква');
gridLetters.RowCount:=1;
with mainDataModule.dataSetZubCardOne do
  begin
  Active:=false;
  Parameters.ParamValues['cardId_']:=pacientId;
  Parameters.ParamValues['zubId_']:=FloatToStr(zubId);
  Active:=true;
  if(RecordCount>0) then
    begin
    First;
    for i:=0 to RecordCount-1 do
      begin
      gridLetters.RowCount:=i+2;
      gridLetters.Rows[i+1].AddObject(FieldByName('OrderNumber').AsString,TObject(FieldByName('ZubCardId').AsInteger));
      gridLetters.Rows[i+1].Add(FieldByName('ShortName').AsString+'-'+FieldByName('Name').AsString);
      Next;
      end;
    gridLetters.FixedRows:=1;
    end;
  end;
mainDataModule.dataSetLetters.Active:=false;
mainDataModule.dataSetLetters.CommandText:='select DictId, Name, ShortName from Dict where ParentDictId = '+IntToStr(BRANCH_LETTERS);
mainDataModule.dataSetLetters.Active:=true;
mainDataModule.dataSetLetters.First;
cbLetters.Items.Clear;
for i:=1 to mainDataModule.dataSetLetters.RecordCount do
  begin
  cbLetters.AddItem(mainDataModule.dataSetLetters.FieldByName('shortName').AsString+'-'+ mainDataModule.dataSetLetters.FieldByName('Name').AsString, TObject(mainDataModule.dataSetLetters.FieldByName('DictId').asInteger));
  mainDataModule.dataSetLetters.Next;
  end;
end;

procedure TZubForm.btnNewClick(Sender: TObject);
var id:integer;order:integer;
begin
if(cbLetters.ItemIndex<>-1) then
  begin
  with mainDataModule.dataSetzubCardMax do
    begin
    Active:=false;
    Active:=true;
    First;
    id:=FieldByName('maxZubCardId').AsInteger+1;
    end;
  with mainDataModule.dataSetMaxOrder do
    begin
    Active:=false;
    Parameters.ParamValues['zubId_']:=FloatTostr(zubId);
    Parameters.ParamValues['CardId_']:=PacientId;
    Active:=true;
    First;
    order:=FieldByName('maxOrder').AsInteger+1;
    end;
  with mainDataModule.queryInsertZubCard do
    begin
    Parameters.ParamValues['ZubCardId_']:=id;
    Parameters.ParamValues['CardId_']:=PacientId;
    Parameters.ParamValues['ZubId_']:=zubId;
    Parameters.ParamValues['LetterId_']:=Integer(cbLetters.Items.Objects[cbLetters.ItemIndex]);
    Parameters.ParamValues['orderNumber_']:=order;
    ExecSQL;
    end;
 gridLetters.RowCount:=gridLetters.RowCount+1;
 gridLetters.Rows[gridLetters.RowCount-1].AddObject(IntToStr(order), TObject(id));
 gridLetters.Rows[gridLetters.RowCount-1].Add(cbLetters.Text);
 end;
end;

procedure TZubForm.btnDelClick(Sender: TObject);
begin
with mainDataModule.queryZubCardDelete do
  begin
  Parameters.ParamValues['zubCardId_']:=Integer(gridLetters.Objects[0,gridLetters.Row]);
  ExecSQL;
  end;
gridLetters.Rows[gridLetters.Row].Clear;
end;

end.
