unit DictEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, ToolWin, Buttons, ADODB, Grids,
  DBGrids, DBCtrls, Data.DB;

type
  TDictEditForm = class(TForm)
    cbBranches: TComboBox;
    treeElements: TTreeView;
    ToolBar1: TToolBar;
    pnlData: TPanel;
    btnNew: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Label1: TLabel;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    edtName: TEdit;
    lblName: TLabel;
    btnNewNode: TBitBtn;
    pnlBtns: TPanel;
    pnlTree: TPanel;
    pnlDataTree: TPanel;
    Splitter2: TSplitter;
    lblShortName: TLabel;
    edtShortName: TEdit;
    lblDesc: TLabel;
    memDesc: TMemo;
    pControl: TPageControl;
    pageDiagnozes: TTabSheet;
    pageLech: TTabSheet;
    pageOther: TTabSheet;
    ToolBar2: TToolBar;
    pnlDz: TPanel;
    btnNewDiagnoz: TToolButton;
    btnNewSubDiagnoz: TToolButton;
    Splitter1: TSplitter;
    Panel2: TPanel;
    treeDiagnozes: TTreeView;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtDiagName: TEdit;
    memZhal: TMemo;
    Label5: TLabel;
    memAnMorbi: TMemo;
    memXRay: TMemo;
    memSliz: TMemo;
    memObno: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    chkIsDiag: TCheckBox;
    btnSave: TBitBtn;
    btnDelete: TToolButton;
    Panel1: TPanel;
    treeDiagnozesForLech: TTreeView;
    Panel4: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    edtDiagShortName: TEdit;
    Label10: TLabel;
    lbLechs: TListBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    lbLechDiags: TListBox;
    btnDiagToRight: TBitBtn;
    btnDiagToLeft: TBitBtn;
    Panel8: TPanel;
    Panel9: TPanel;
    btnNewLech: TBitBtn;
    btnDelLech: TBitBtn;
    edtLechName: TEdit;
    edtLechShortName: TEdit;
    memLechDesc: TMemo;
    btnSaveLech: TBitBtn;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    chkUseParentZhal: TCheckBox;
    chkUseParentAnMorbi: TCheckBox;
    chkUseParentObno: TCheckBox;
    chkUseParentSlizist: TCheckBox;
    chkUseParentXRay: TCheckBox;
    cbLetterDiag: TComboBox;
    Label12: TLabel;
    pagePrice: TTabSheet;
    treePrice: TTreeView;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    btnNewPrice: TBitBtn;
    btnDelPrice: TBitBtn;
    edtPriceName: TEdit;
    Label13: TLabel;
    R: TLabel;
    edtShortPriceName: TEdit;
    Label14: TLabel;
    memPriceDesc: TMemo;
    Label15: TLabel;
    edtCost: TEdit;
    btnSavePrice: TBitBtn;
    BitBtn1: TBitBtn;
    Label16: TLabel;
    cbLetterLech: TComboBox;
    Panel13: TPanel;
    treePriceForLech: TTreeView;
    Splitter6: TSplitter;
    Panel14: TPanel;
    btnPriceToRight: TBitBtn;
    btnPriceToLeft: TBitBtn;
    lbLechPrices: TListBox;
    Splitter7: TSplitter;
    Splitter5: TSplitter;
    Splitter8: TSplitter;
    Label17: TLabel;
    Label18: TLabel;
    memReccs: TMemo;
    memNazn: TMemo;
    sheetSystem: TTabSheet;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    chkOrt: TCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cbBranchesChange(Sender: TObject);
    procedure makeTree(parentId:integer);
    procedure makeDiagnozesTree(treeView:TTreeView;nodesIdsList:TList);
    procedure makeTreeFromDataSet(treeView:TTreeView;nodesIdsList:TList;dataSet:TADODataSet; keyField:string;parentField:string);
    procedure makeLechList;
    procedure Copyy(destList:TList;sourceList:TList);
    function returnNode(idsList:TList;id1:integer):TTreeNode;
    function returnId(idsList:TList;node1:TTreeNode):integer;
    procedure treeDiagnozesChange(Sender: TObject; Node: TTreeNode);
    procedure btnNewDiagnozClick(Sender: TObject);
    procedure DeleteFromNodes(id1:integer;idsList:TList);
    procedure btnNewSubDiagnozClick(Sender: TObject);
    procedure addNode(node: TTreeNode; dataSetMax:TADODataSet;maxField:string; treeView:TTreeView; idsList:TList; insertStatement:string; insertStatementNil:string);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnNewDiagnozMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnNewSubDiagnozMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDeleteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSaveMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure treeDiagnozesMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtDiagNameMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure memZhalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure memAnVitMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure memAnMorbiMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure memObnoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure memSlizMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure memXRayMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure chkIsDiagMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbLechsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnNewLechClick(Sender: TObject);
    procedure btnDelLechClick(Sender: TObject);
    function getIndexById(cb:TComboBox; id:integer):integer;
    procedure fill(cb:TComboBox);
    procedure btnDiagToRightClick(Sender: TObject);
    procedure btnDiagToLeftClick(Sender: TObject);
    procedure btnSaveLechClick(Sender: TObject);
    function Contains(lb:TListBox;id:integer):Boolean;
    procedure edtDiagNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtDiagShortNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtLechNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtLechShortNameKeyPress(Sender: TObject; var Key: Char);
    procedure btnNewLechMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnDelLechMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbLechsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure treeDiagnozesForLechMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDiagToRightMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnDiagToLeftMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lbLechDiagsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtLechNameMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtLechShortNameMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure memLechDescMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSaveLechMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pControlMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnNewPriceClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnDelPriceClick(Sender: TObject);
    procedure treePriceChange(Sender: TObject; Node: TTreeNode);
    procedure btnSavePriceClick(Sender: TObject);
    procedure btnNewPriceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnDelPriceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure treePriceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPriceNameMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtShortPriceNameMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCostMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure memPriceDescMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSavePriceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPriceToRightClick(Sender: TObject);
    procedure btnPriceToLeftClick(Sender: TObject);
    procedure memReccsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure memNaznMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DictEditForm: TDictEditForm;
  ids: array of integer;
  idsByNodes:array of integer;
  ListDiagsNodes:TList;
  ListDiagsNodesForLech:TList;
  ListPriceNodes:Tlist;
  ListPriceNodesForLech:Tlist;
implementation

uses MAIN, dataModule, Constants;

{$R *.dfm}

{Вся инициализация}
procedure TDictEditForm.FormShow(Sender: TObject);
var  count, i, index:integer;
begin
mainDataModule.dataSetDictBranches.Active:=false;
mainDataModule.dataSetDictBranches.Active:=true;
count:=mainDataModule.dataSetDictBranches.RecordCount;
   if(count>0) then
    begin
    SetLength(ids, count);
    mainDataModule.dataSetDictBranches.First;
      for i:=1 to count do
        begin
        index:=cbBranches.Items.Add(mainDataModule.dataSetDictBranches.FieldByName('Name').AsString);
        ids[index]:=mainDataModule.dataSetDictBranches.FieldByName('DictId').AsInteger;
        mainDataModule.dataSetDictBranches.Next;
        end;
    end;
ListDiagsNodes:=TList.Create;
ListDiagsNodesForLech:=TList.Create;
ListPriceNodes:=Tlist.Create;
ListPriceNodesForLech:=Tlist.Create;
makeDiagnozesTree(treeDiagnozes,ListDiagsNodes);
makeLechList;
makeDiagnozesTree(treeDiagnozesForLech,ListDiagsNodesForLech);
makeTreeFromDataSet(treePrice,ListPriceNodes, mainDataModule.dataSetPrices,'PriceId', 'ParentPriceId');
makeTreeFromDataSet(treePriceForLech,ListPriceNodesForLech, mainDataModule.dataSetPrices,'PriceId', 'ParentPriceId');
mainDataModule.dataSetLetters.Active:=false;
mainDataModule.dataSetLetters.CommandText:='select DictId, Name, ShortName from Dict where ParentDictId = '+IntToStr(BRANCH_LETTERS);
mainDataModule.dataSetLetters.Active:=true;
mainDataModule.dataSetLetters.First;
fill(cbLetterDiag);
mainDataModule.dataSetLetters.First;
fill(cbLetterLech);
mainDataModule.dataSetDict.Active:=true;
end;

procedure TDictEditForm.fill(cb:TComboBox);
var i:integer;
begin
cb.Items.Clear;
cb.Items.Add('Нет буквы');
for i:=1 to mainDataModule.dataSetLetters.RecordCount do
  begin
  cb.AddItem(mainDataModule.dataSetLetters.FieldByName('shortName').AsString+'-'+ mainDataModule.dataSetLetters.FieldByName('Name').AsString, TObject(mainDataModule.dataSetLetters.FieldByName('DictId').asInteger));
  mainDataModule.dataSetLetters.Next;
  end;
end;

{*******Отсюда начинается работа со страницей "Диагнозы"*******}
{Построение дерева}
procedure TDictEditForm.makeDiagnozesTree(treeView:TTreeView;nodesIdsList:TList);
begin
mainDataModule.dataSetDiags.Active:=true;
makeTreeFromDataSet(treeView,nodesIdsList,mainDataModule.dataSetDiags,'Diag','ParentDiagId');
end;

procedure  TDictEditForm.makeTreeFromDataSet(treeView:TTreeView;nodesIdsList:TList;dataSet:TADODataSet; keyField:string;parentField:string);
type
    PNodeList = ^ANodeList;
    ANodeList = record
    id: Integer;
    node: TTreeNode;
  end;
var count, i, id  : integer; ANodeRecord: PNodeList; idsList:Tlist;   curNode: TTreeNode; newIdsList:TList;
begin
treeView.Items.Clear;
dataSet.Active:=true;
count:=dataSet.RecordCount;
idsList:=TList.Create;
newIdsList:=TList.Create;
  begin
  dataSet.First;
  {1ый цикл - добавляем корневые элементы}
  for i:=1 to dataSet.RecordCount do
    begin
    if(dataSet.FieldByName(parentField).AsString='') then
      begin
      New(ANodeRecord);
      ANodeRecord^.id:= dataSet.FieldByName(keyField).AsInteger;
      ANodeRecord^.node:=treeView.Items.Add(nil,dataSet.FieldByName('Name').AsString);
      idsList.Add(ANodeRecord);
      nodesIdsList.Add(ANodeRecord);
      count:=count-1;
      end;
    dataSet.Next;
    end;
  end;
while count>0 do
  begin
  newIdsList.Clear;
  {остальное - строим остатки дерева}
  dataSet.First;
  for i:=1 to dataSet.RecordCount do
    begin
    id:=dataSet.FieldByName(parentField).AsInteger;
    curNode:=returnNode(idsList, id);
    if(curNode<>nil) then
      begin
       New(ANodeRecord);
      ANodeRecord^.id:= dataSet.FieldByName(keyField).AsInteger;
      ANodeRecord^.node:=treeView.Items.AddChild(curNode,dataSet.FieldByName('Name').AsString);
        newIdsList.Add(ANodeRecord);
        nodesIdsList.Add(ANodeRecord);
        count:=count-1;
      end;
    dataSet.Next;
    end;
  Copyy(idsList, newIdsList);
  end;
end;

procedure TDictEditForm.Copyy(destList:TList;sourceList:TList);
type
PNodeList = ^ANodeList;
ANodeList = record
    id: Integer;
    node: TTreeNode;
end;
var i:integer; ARecord: PNodeList; newARecord:PNodeList;
  begin
  destList.Clear;
  for i:=0 to sourceList.Count-1 do
  begin
  ARecord := sourceList.Items[i];
  New(newARecord);
  newARecord^.id:=Arecord^.id;
  newARecord^.node:=Arecord^.node;
  destList.Add(newARecord);
  end;
end;

{Возвращает ноду по её Id}
function TDictEditForm.returnNode(idsList:TList;id1:integer):TTreeNode;
type
PNodeList = ^ANodeList;
ANodeList = record
    id: Integer;
    node: TTreeNode;
end;
var i:integer; ARecord: PNodeList;

begin
for i:= 0 to idsList.Count-1 do
  begin
  ARecord := idsList.Items[i];
   if(ARecord^.id=id1) then
    begin
    returnNode:=ARecord^.node;
    Exit;
    end;
  end;
returnNode:=nil;
end;

{Возвращает Id по ноде}
function TDictEditForm.returnId(idsList:TList;node1:TTreeNode):integer;
type
PNodeList = ^ANodeList;
ANodeList = record
    id: Integer;
    node: TTreeNode;
end;
var i:integer; ARecord: PNodeList;

begin
for i:= 0 to idsList.Count-1 do
  begin
  ARecord := idsList.Items[i];
   if(ARecord^.node=node1) then
    begin
    returnId:=ARecord^.id;
    Exit;
    end;
  end;
returnId:=0;
end;

{Смена ветки в дереве  диагнозов}
procedure TDictEditForm.treeDiagnozesChange(Sender: TObject;
  Node: TTreeNode);
  var id:integer;
begin
 id:=returnId(ListDiagsNodes,Node);
  mainDataModule.dataSetDiag.Active:=False;
  mainDataModule.dataSetDiag.CommandText:='select Is_diag, Name, St_An_morbi, ShortName, St_obno, St_RSnimok, St_slizist, St_Zhal, UseParentZhal, UseParentAnMorbi, UseParentObno, UseParentSlizist, UseParentXRay, LetterId from Spr_diag where Diag = '+IntToStr(id);
  mainDataModule.dataSetDiag.Active:=true;
  {очищаем}
  edtDiagName.Text:='';
  memZhal.Text:='';
  edtDiagShortName.Text:='';
  memAnMorbi.Text:='';
  memXRay.Text:='';
  memSliz.Text:='';
  memObno.Text:='';
  cbLetterDiag.Text:='';
  {заполняем}
  mainDataModule.dataSetDiag.First;
  edtDiagName.Text:=  mainDataModule.dataSetDiag.FieldByName('Name').AsString;
  memZhal.Text:=mainDataModule.dataSetDiag.FieldByName('St_Zhal').AsString;
  edtDiagShortName.Text:=mainDataModule.dataSetDiag.FieldByName('ShortName').AsString;
  memAnMorbi.Text:=mainDataModule.dataSetDiag.FieldByName('St_An_morbi').AsString;
  memXRay.Text:=mainDataModule.dataSetDiag.FieldByName('St_RSnimok').AsString;
  memSliz.Text:=mainDataModule.dataSetDiag.FieldByName('St_slizist').AsString;
  memObno.Text:=mainDataModule.dataSetDiag.FieldByName('St_obno').AsString;
  chkIsDiag.Checked:=mainDataModule.dataSetDiag.FieldByName('Is_diag').AsInteger=1;
  chkUseParentZhal.Checked:=mainDataModule.dataSetDiag.FieldByName('UseParentZhal').AsInteger=1;
  chkUseParentAnMorbi.Checked:=mainDataModule.dataSetDiag.FieldByName('UseParentAnMorbi').AsInteger=1;
  chkUseParentObno.Checked:=mainDataModule.dataSetDiag.FieldByName('UseParentObno').AsInteger=1;
  chkUseParentSlizist.Checked:=mainDataModule.dataSetDiag.FieldByName('UseParentSlizist').AsInteger=1;
  chkUseParentXRay.Checked:=mainDataModule.dataSetDiag.FieldByName('UseParentXRay').AsInteger=1;
  cbLetterDiag.ItemIndex:=getIndexById(cbLetterDiag, mainDataModule.dataSetDiag.FieldByName('LetterId').AsInteger);
end;

function TDictEditForm.getIndexById(cb:TComboBox; id:integer):integer;
var i:integer;
begin
 for i:=0 to cb.Items.Count-1 do
  begin
   if(Integer(cb.Items.Objects[i])=id) then
    begin
    getIndexById:=i;
    exit;
    end;
  end;
getIndexById:=-1;
end;

{Нажали "Создать диагноз в этой ветке"}
procedure TDictEditForm.btnNewDiagnozClick(Sender: TObject);
begin
if(treeDiagnozes.Selected<>nil) then
  begin
  addNode(treeDiagnozes.Selected.Parent, mainDataModule.dataSetMaxDiag,'maxDiag', treeDiagnozes, ListDiagsNodes, 'Insert into Spr_diag (Diag,parentDiagId, Name) values (:id,:parent,:name)', 'Insert into Spr_diag (Diag, Name) values (:id,:name)');
  end
else
  begin
  addNode(nil, mainDataModule.dataSetMaxDiag,'maxDiag', treeDiagnozes, ListDiagsNodes, 'Insert into Spr_diag (Diag,parentDiagId, Name) values (:id,:parent,:name)', 'Insert into Spr_diag (Diag, Name) values (:id,:name)');
  end;
end;

{Нажали "Создать диагноз в дочерней ветке"}
procedure TDictEditForm.btnNewSubDiagnozClick(Sender: TObject);
begin
if(treeDiagnozes.Selected<>nil) then
  begin
  addNode(treeDiagnozes.Selected, mainDataModule.dataSetMaxDiag,'maxDiag', treeDiagnozes, ListDiagsNodes, 'Insert into Spr_diag (Diag,parentDiagId, Name) values (:id,:parent,:name)', 'Insert into Spr_diag (Diag, Name) values (:id,:name)');
  end;
end;

{Добавление пустой ноды}
procedure TDictEditForm.addNode(node: TTreeNode; dataSetMax:TADODataSet;maxField:string; treeView:TTreeView; idsList:TList; insertStatement:string; insertStatementNil:string);
type
    PNodeList = ^ANodeList;
    ANodeList = record
    id: Integer;
    node: TTreeNode;
  end;
var parentId, id:integer;ANodeRecord: PNodeList;
begin
parentId:=returnId(idsList,node);
dataSetMax.Active:=false;
dataSetMax.Active:=true;
dataSetMax.First;
id:=dataSetMax.FieldByName(maxField).AsInteger+1;
New(ANodeRecord);
ANodeRecord^.id:= id;
ANodeRecord^.node:=treeView.Items.AddChild(node,'Новый');
idsList.Add(ANodeRecord);
if parentId<>0 then
  begin
  mainDataModule.queryInsertEmptyDiag.SQL.Clear;
  mainDataModule.queryInsertEmptyDiag.SQL.Add(insertStatement);
  mainDataModule.queryInsertEmptyDiag.Parameters.ParamValues['parent']:=IntToStr(parentId);
  end
else
  begin
  mainDataModule.queryInsertEmptyDiag.SQL.Clear;
  mainDataModule.queryInsertEmptyDiag.SQL.Add(insertStatementNil);
  end;
mainDataModule.queryInsertEmptyDiag.Parameters.ParamValues['id']:=IntToStr(id);
mainDataModule.queryInsertEmptyDiag.Parameters.ParamValues['name']:='Новый';
mainDataModule.queryInsertEmptyDiag.ExecSQL;
end;

{Удаление диагноза}
procedure TDictEditForm.btnDeleteClick(Sender: TObject);
var id: integer;
begin
if(treeDiagnozes.Selected<>nil) then
  begin
  if(treeDiagnozes.Selected.Count>0)then
    begin
    ShowMessage('Сначала необходимо удалить дочерние элементы!');
    end
  else
    begin
    if MessageDlg( 'Удаление диагноза "'+treeDiagnozes.Selected.Text+'". Продолжить?',    mtConfirmation, [mbYes, mbNo],0) = mrYes then
      begin
      id:=returnId(ListDiagsNodes,treeDiagnozes.Selected);
      mainDataModule.queryDeleteDiag.Parameters.ParamValues['diagId']:=IntToStr(id);
      mainDataModule.queryDeleteDiag.ExecSQL;
      treeDiagnozes.Selected.Delete;
      DeleteFromNodes(id,ListDiagsNodes);
      end;
    end;
  end;
end;

procedure TDictEditForm.DeleteFromNodes(id1:integer;idsList:TList);
type
PNodeList = ^ANodeList;
ANodeList = record
    id: Integer;
    node: TTreeNode;
end;
var i:integer; ARecord: PNodeList;

begin
for i:= 0 to idsList.Count-1 do
  begin
  ARecord := idsList.Items[i];
   if(ARecord^.id=id1) then
    begin
    idsList.Delete(i);
    Exit;
    end;
  end;
end;

{Сохранение изменений в ноде}
procedure TDictEditForm.btnSaveClick(Sender: TObject);
var id:integer;
begin
if(cbLetterDiag.ItemIndex>0) then
  begin
  mainDataModule.queryDiagUpdate.SQL.Clear;
  mainDataModule.queryDiagUpdate.SQL.Add('Update Spr_Diag set name = :name_, St_Zhal = :zhal_ , ShortName=:shortName_, St_An_morbi = :anMorbi, ');
  mainDataModule.queryDiagUpdate.SQL.Add('St_obno=:obno, St_slizist = :slizist, St_Rsnimok = :rsnimok, Is_diag = :isdiag, ');
  mainDataModule.queryDiagUpdate.SQL.Add('  UseParentZhal=:UseParentZhal_, UseParentAnMorbi=:UseParentAnMorbi_,UseParentObno = :UseParentObno_, UseParentSlizist=:UseParentSlizist_,UseParentXRay=:UseParentXRay_ , letterId = :letterId_ where diag = :diagId');
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['letterId_']:=IntToStr(Integer(cbLetterDiag.Items.Objects[cbLetterDiag.ItemIndex]));
  end
else
  begin
  mainDataModule.queryDiagUpdate.SQL.Clear;
  mainDataModule.queryDiagUpdate.SQL.Add('Update Spr_Diag set name = :name_, St_Zhal = :zhal_ , ShortName=:shortName_, St_An_morbi = :anMorbi, St_obno=:obno, letterId=null, ');
  mainDataModule.queryDiagUpdate.SQL.Add('St_slizist = :slizist, St_Rsnimok = :rsnimok, Is_diag = :isdiag, UseParentZhal=:UseParentZhal_, UseParentAnMorbi=:UseParentAnMorbi_,UseParentObno = :UseParentObno_, UseParentSlizist=:UseParentSlizist_,UseParentXRay=:UseParentXRay_  where diag = :diagId');
  end;
id:=returnId(ListDiagsNodes,treeDiagnozes.Selected);
mainDataModule.queryDiagUpdate.Parameters.ParamValues['name_']:=edtDiagName.Text;
mainDataModule.queryDiagUpdate.Parameters.ParamValues['zhal_']:=memZhal.Text;
mainDataModule.queryDiagUpdate.Parameters.ParamValues['shortName_']:=edtDiagShortName.Text;
mainDataModule.queryDiagUpdate.Parameters.ParamValues['anMorbi']:=memAnMorbi.Text;
mainDataModule.queryDiagUpdate.Parameters.ParamValues['obno']:=memObno.Text;
mainDataModule.queryDiagUpdate.Parameters.ParamValues['slizist']:=memSliz.Text;
mainDataModule.queryDiagUpdate.Parameters.ParamValues['rsnimok']:=memXRay.Text;
if(chkIsDiag.Checked) then
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['isdiag']:=IntToStr(1);
  end
else
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['isdiag']:=IntToStr(0);
  end;
if(chkUseParentZhal.Checked) then
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentZhal_']:=IntToStr(1);
  end
else
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentZhal_']:=IntToStr(0);
  end;
if(chkUseParentAnMorbi.Checked) then
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentAnMorbi_']:=IntToStr(1);
  end
else
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentAnMorbi_']:=IntToStr(0);
  end;
if(chkUseParentObno.Checked) then
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentObno_']:=IntToStr(1);
  end
else
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentObno_']:=IntToStr(0);
  end;
if(chkUseParentSlizist.Checked) then
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentSlizist_']:=IntToStr(1);
  end
else
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentSlizist_']:=IntToStr(0);
  end;
if(chkUseParentXRay.Checked) then
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentXRay_']:=IntToStr(1);
  end
else
  begin
  mainDataModule.queryDiagUpdate.Parameters.ParamValues['UseParentXRay_']:=IntToStr(0);
  end;
mainDataModule.queryDiagUpdate.Parameters.ParamValues['diagId']:=IntToStr(id);
mainDataModule.queryDiagUpdate.ExecSQL;
treeDiagnozes.Selected.Text:=edtDiagName.Text;
end;

{Далее обработка мувов для выставление надписи в панели хелпа}
procedure TDictEditForm.btnNewDiagnozMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Добавить диагноз в этой ветке (сначала выберите ветку в дереве)';
end;

procedure TDictEditForm.btnNewSubDiagnozMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Добавить диагноз в дочерней ветке (сначала выберите ветку в дереве)';
end;

procedure TDictEditForm.btnDeleteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Удалить выделенный диагноз (сначала выберите ветку в дереве)';
end;

procedure TDictEditForm.btnSaveMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Сохранить сделанные изменения';
end;

procedure TDictEditForm.ToolBar2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

procedure TDictEditForm.treeDiagnozesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Выберите диагноз для редактирования';
end;

procedure TDictEditForm.edtDiagNameMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените название и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.memZhalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените стандартные жалобы для данного диагноза (название зуба замените на знак $$) и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.memAnVitMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените стандартный An Vital для данного диагноза (название зуба замените на знак $$) и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.memAnMorbiMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените стандартный An morbi для данного диагноза (название зуба замените на знак $$) и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.memObnoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените стандартное "Объективно" для данного диагноза (название зуба замените на знак $$) и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.memSlizMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените стандартное описание слизистой для данного диагноза (название зуба замените на знак $$) и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.memXRayMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените стандартное описание рентгеновского снимка для данного диагноза (название зуба замените на знак $$) и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.chkIsDiagMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Поставьте галочку, если диагноз не используется для группировки и может быть поставлен в качестве диагноза и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;


{*******Отсюда начинается работа со страницей "Справочники"*******}
procedure TDictEditForm.makeTree(parentId:integer);
var treeNode:TTreeNode; count1,i:integer;
begin
count1:= mainDataModule.dataSetDictBranch.RecordCount;
SetLength(idsByNodes,count1);
with treeElements.Items do
  begin
  mainDataModule.dataSetDictBranch.First;
      for i:=1 to count1 do
        begin
        treeNode:=Add(nil,mainDataModule.dataSetDictBranch.FieldByName('Name').AsString);
        idsByNodes[treeNode.AbsoluteIndex]:=mainDataModule.dataSetDictBranch.FieldByName('DictId').AsInteger;
        mainDataModule.dataSetDictBranch.Next;
        end;
    end;

end;

procedure TDictEditForm.cbBranchesChange(Sender: TObject);
begin
if(cbBranches.ItemIndex>-1) then
  begin
  mainDataModule.dataSetDictBranch.active:=false;
  mainDataModule.dataSetDictBranch.CommandText:='select * from Dict where ParentDictId = '+IntToStr(ids[cbBranches.ItemIndex]);
  mainDataModule.dataSetDictBranch.active:=true;
  end;
if(mainDataModule.dataSetDictBranch.RecordCount>0) then
  begin
  SetLength(idsByNodes,0);
  treeElements.Items.Clear;
  makeTree(0);
  end;
end;

{*********Отсюда начинается работа со страницей "Лечение"***********}
procedure TDictEditForm.makeLechList;
var i:integer;
begin
lbLechs.Clear;
mainDataModule.dataSetLechs.Active:=true;
mainDataModule.dataSetLechs.First;
for i:=1 to mainDataModule.dataSetLechs.RecordCount do
  begin
  lbLechs.AddItem(mainDataModule.dataSetLechs.FieldByName('Name').AsString, TObject(mainDataModule.dataSetLechs.FieldByName('LechId').AsInteger));
  mainDataModule.dataSetLechs.Next;
  end;
end;

procedure TDictEditForm.lbLechsMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var id, i:integer;
begin
If(lbLechs.ItemIndex>=0) then
  begin
  id:= Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
  {Очищаем поля}
  edtLechName.Text:='';
  edtLechShortName.Text:='';
  memLechDesc.Text:='';
  memReccs.Text:='';
  memNazn.Text:='';
  {Заполняем}
  mainDataModule.dataSetLech.Active:=false;
  mainDataModule.dataSetLech.CommandText:='select Description, Name, ShortName, Nazn, Reccs, letterId, IsOrt from Lech where LechId ='+IntToStr(id);
  mainDataModule.dataSetLech.Active:=true;
  mainDataModule.dataSetLech.First;
  chkOrt.Checked:=(mainDataModule.dataSetLech.FieldByName('IsORt').AsInteger<>0);
  edtLechName.Text:=mainDataModule.dataSetLech.FieldByName('Name').AsString;
  edtLechShortName.Text:=mainDataModule.dataSetLech.FieldByName('ShortName').AsString;
  memLechDesc.Text:=mainDataModule.dataSetLech.FieldByName('Description').AsString;
  memReccs.Text:=mainDataModule.dataSetLech.FieldByName('Reccs').AsString;
  memNazn.Text:=mainDataModule.dataSetLech.FieldByName('Nazn').AsString;
  cbLetterLech.ItemIndex:=getIndexById(cbLetterLech, mainDataModule.dataSetLech.FieldByName('LetterId').AsInteger);
  {Очищаем бокс с дигнозами}
  lbLechDiags.Clear;
  mainDataModule.dataSetLechDiags.Active:=false;
  mainDataModule.dataSetLechDiags.CommandText:='select Spr_diag.Diag, Spr_diag.Name from Spr_diag, Diag_lech where Spr_diag.Diag = Diag_lech.Diag and Diag_lech.LechId = '+IntToStr(id);
  mainDataModule.dataSetLechDiags.Active:=true;
  mainDataModule.dataSetLechDiags.First;
  for i:=1 to mainDataModule.dataSetLechDiags.RecordCount do
    begin
    lbLechDiags.AddItem(mainDataModule.dataSetLechDiags.FieldByName('Name').AsString, TObject(mainDataModule.dataSetLechDiags.FieldByName('Diag').AsInteger));
    mainDataModule.dataSetLechDiags.Next;
    end;
  {Бокс с услугами}
  lbLechPrices.Clear;
  mainDataModule.dataSetLechPrices.Active:=false;
  mainDataModule.dataSetLechPrices.CommandText:='select Price.PriceId, Price.Name, Lech_price.num from Price, lech_price where lech_price.priceId = price.priceId and lech_Price.LechId = '+IntToStr(id)+' order by lech_price.num';
  mainDataModule.dataSetLechPrices.Active:=true;
  mainDataModule.dataSetLechPrices.First;
  for i:=1 to mainDataModule.dataSetLechPrices.RecordCount do
    begin
    lbLechPrices.AddItem(mainDataModule.dataSetLechPrices.FieldByName('Name').AsString + ' ($$'+mainDataModule.dataSetLechPrices.FieldByName('Num').AsString+')', TObject(mainDataModule.dataSetLechPrices.FieldByName('priceId').AsInteger));
    mainDataModule.dataSetLechPrices.Next;
    end;
  end;
end;

procedure TDictEditForm.btnNewLechClick(Sender: TObject);
var id:integer;
begin
mainDataModule.dataSetMaxLech.Active:=false;
mainDataModule.dataSetMaxLech.Active:=true;
mainDataModule.dataSetMaxLech.First;
id:=mainDataModule.dataSetMaxLech.FieldByName('maxLech').AsInteger+1;
{Добавляем элемент в бокс}
lbLechs.AddItem('Новый', TObject(id));
{Добавляем в базу}
mainDataModule.queryInsertEmptyLech.Parameters.ParamValues['id']:=id;
mainDataModule.queryInsertEmptyLech.Parameters.ParamValues['name_']:='Новый';
mainDataModule.queryInsertEmptyLech.ExecSQL;
end;

procedure TDictEditForm.btnDelLechClick(Sender: TObject);
var id:integer;
begin
if(lbLechs.ItemIndex>=0) then
  begin
  if MessageDlg( 'Удаление лечения "'+lbLechs.Items[lbLechs.ItemIndex]+'". Продолжить?',    mtConfirmation, [mbYes, mbNo],0) = mrYes then
      begin
      id:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
      mainDataModule.queryDeleteLech.Parameters.ParamValues['id']:=IntToStr(id);
      mainDataModule.queryDeleteLech.ExecSQL;
      lbLechs.Items.Delete(lbLechs.ItemIndex);
      end;
  end
else
  begin
  ShowMessage('Сначала выберите лечение, которое вы хотите удалить.');
  end;
end;

procedure TDictEditForm.btnDiagToRightClick(Sender: TObject);
var diagId:integer;
begin
if(lbLechs.ItemIndex>=0) then
  begin
  if(treeDiagnozesForLech.Selected<>nil) then
    begin
    diagId:=returnId(ListDiagsNodesForLech,treeDiagnozesForLech.Selected);
    if(not contains(lbLechDiags,diagId)) then
      begin
      mainDataModule.queryInsertDiagLech.Parameters.ParamValues['lechId_']:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
      mainDataModule.queryInsertDiagLech.Parameters.ParamValues['diagId_']:=diagId;
      mainDataModule.queryInsertDiagLech.ExecSQL;
      lbLechDiags.AddItem(treeDiagnozesForLech.Selected.Text,TObject(diagId));
      end
    else
      begin
      ShowMessage('В списке диагнозов такой диагноз уже содержится.');
      end;
    end
  else
    begin
    ShowMessage('Сначала выберите диагноз, который вы хотите добавить в список.');
    end;
  end
else
  begin
  ShowMessage('Сначала выберите лечение, к которому вы хотите привязать диагнозы.');
  end;
end;

procedure TDictEditForm.btnDiagToLeftClick(Sender: TObject);
var diagId:integer;
begin
  if(lbLechDiags.ItemIndex>=0) then
    begin
    diagId:=Integer(lbLechDiags.Items.Objects[lbLechDiags.ItemIndex]);
    mainDataModule.queryDeleteDiagLech.Parameters.ParamValues['lechId_']:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
    mainDataModule.queryDeleteDiagLech.Parameters.ParamValues['diagId_']:=diagId;
    mainDataModule.queryDeleteDiagLech.ExecSQL;
    lbLechDiags.Items.Delete(lbLechDiags.ItemIndex);
    end
  else
    begin
    ShowMessage('Сначала выберите диагноз, который вы хотите убрать из списка.');
    end;
end;

procedure TDictEditForm.btnSaveLechClick(Sender: TObject);
var id:integer;
begin
if(lbLechs.ItemIndex>=0) then
  begin
  id:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
  lbLechs.Items[lbLechs.ItemIndex]:= edtLechName.Text;
  with mainDataModule.queryUpdateLech do
    begin
    sql.Clear;
     if(cbLetterLech.ItemIndex>0) then
        begin
        sql.Add('Update Lech set Name = :name_, ShortName=:shortName_,');
        Sql.Add('Description = :desc_, Reccs = :reccs_, Nazn=:nazn_, letterId = :letterId_, IsOrt=:isOrt_');
        Sql.Add('where LechId = :lechId_');
        Parameters.ParamValues['letterId_']:=IntToStr(Integer(cbLetterLech.Items.Objects[cbLetterLech.ItemIndex]));
        end
      else
        begin
        sql.Add('Update Lech set Name = :name_, ShortName=:shortName_, letterId=null, ');
        Sql.Add('Description = :desc_, Reccs = :reccs_, Nazn=:nazn_, IsOrt=:isOrt_ where LechId = :lechId_');
        end;
    with Parameters do
      begin
      ParamValues['lechId_']:=id;
      ParamValues['name_']:=edtLechName.Text;
      ParamValues['shortName_']:=edtLechShortName.Text;
      ParamValues['desc_']:=memLechDesc.Text;
      ParamValues['reccs_']:=memReccs.Text;
      ParamValues['nazn_']:=memNazn.Text;
      if(chkOrt.Checked) then
        begin
        ParamValues['IsOrt_']:=IntToStr(1);
        end
      else
        begin
        ParamValues['IsOrt_']:=IntToStr(0);
        end;
      end;
    ExecSQL;
    end;
  end
else
  begin
  ShowMessage('Сначала выберите лечение, для того, чтобы редактируемые данные были сохранены.');
  end;
end;

function TDictEditForm.Contains(lb:TListBox;id:integer):Boolean;
var i:integer;
begin
for i:=0 to lb.Items.Count-1 do
  begin
  if(Integer(lb.Items.Objects[i])=id) then
    begin
    Contains:=true;
    exit;
    end;
  end;
Contains:=false;
end;

procedure TDictEditForm.edtDiagNameKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtDiagName.Text:=AnsiUpperCase(Copy(edtDiagName.Text,1,1))+Copy(edtDiagName.Text,2,length(edtDiagName.Text)-1);
  edtDiagShortName.SetFocus;
  end;
end;

procedure TDictEditForm.edtDiagShortNameKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtDiagShortName.Text:=AnsiUpperCase(Copy(edtDiagShortName.Text,1,1))+Copy(edtDiagShortName.Text,2,length(edtDiagShortName.Text)-1);
  memZhal.SetFocus;
  end;
end;

procedure TDictEditForm.edtLechNameKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtLechName.Text:=AnsiUpperCase(Copy(edtLechName.Text,1,1))+Copy(edtLechName.Text,2,length(edtLechName.Text)-1);
  edtLechShortName.SetFocus;
  end;
end;

procedure TDictEditForm.edtLechShortNameKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Ord(Key)=13 then
  begin
  edtLechShortName.Text:=AnsiUpperCase(Copy(edtLechShortName.Text,1,1))+Copy(edtLechShortName.Text,2,length(edtLechShortName.Text)-1);
  memLechDesc.SetFocus;
  end;
end;


procedure TDictEditForm.btnNewLechMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите, чтобы добавить новое лечение';
end;

procedure TDictEditForm.btnDelLechMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите для того, чтобы удалить выбранное лечение';
end;

procedure TDictEditForm.lbLechsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Выберите лечение для просмотра и редактирования';
end;

procedure TDictEditForm.treeDiagnozesForLechMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Выберите диагноз для добавления к списку диагнозов, привязанных к лечению';
end;

procedure TDictEditForm.btnDiagToRightMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите, для того чтобы добавить выбранный диагноз к списку диагнозов';
end;

procedure TDictEditForm.btnDiagToLeftMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите для того, чтобы удалить выбранный вами элемент из списка диагнозов';
end;

procedure TDictEditForm.lbLechDiagsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Выберите элемент из списка и нажмите стрелку влево, если желаете удалить диагноз из списка';
end;

procedure TDictEditForm.edtLechNameMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените название лечения и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.edtLechShortNameMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените краткое название и нажмите "Сохранить изменения"';
end;

procedure TDictEditForm.memLechDescMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените описание, заменив название зуба на знак $$ и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.btnSaveLechMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите "Сохранить изменения", если желаете сохранить внесенные изменения';
end;

procedure TDictEditForm.Panel4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

procedure TDictEditForm.Panel9MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

procedure TDictEditForm.pControlMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

procedure TDictEditForm.Panel7MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

{*******Отсюда начинается работа со страницей "Услуги"*******}
{добавление услуги в той же ветке}
procedure TDictEditForm.btnNewPriceClick(Sender: TObject);
begin
if(treePrice.Selected<>nil) then
  begin
  addNode(treePrice.Selected.Parent, mainDataModule.dataSetMaxPrice,'maxPriceId', treePrice, ListPriceNodes, 'Insert into Price (PriceId ,parentPriceId, Name) values (:id,:parent,:name)', 'Insert into Price (PriceId, Name) values (:id,:name)');
  end
else
  begin
  addNode(nil, mainDataModule.dataSetMaxPrice,'maxPriceId', treePrice, ListPriceNodes, 'Insert into Price (PriceId ,parentPriceId, Name) values (:id,:parent,:name)', 'Insert into Price (PriceId, Name) values (:id,:name)');
  end;
end;

{добавление услуги в дочерней ветке}
procedure TDictEditForm.BitBtn1Click(Sender: TObject);
begin
if(treePrice.Selected<>nil) then
  begin
  addNode(treePrice.Selected, mainDataModule.dataSetMaxPrice,'maxPriceId', treePrice, ListPriceNodes, 'Insert into Price (PriceId ,parentPriceId, Name) values (:id,:parent,:name)', 'Insert into Price (PriceId, Name) values (:id,:name)');
  end
end;

{Удаление услуги}
procedure TDictEditForm.btnDelPriceClick(Sender: TObject);
var id: integer;
begin
if(treePrice.Selected<>nil) then
  begin
  if(treePrice.Selected.Count>0)then
    begin
    ShowMessage('Сначала необходимо удалить дочерние элементы!');
    end
  else
    begin
    if MessageDlg( 'Удаление услуги "'+treePrice.Selected.Text+'". Продолжить?',    mtConfirmation, [mbYes, mbNo],0) = mrYes then
      begin
      id:=returnId(ListPriceNodes,treePrice.Selected);
      mainDataModule.queryDeletePrice.Parameters.ParamValues['priceId_']:=IntToStr(id);
      mainDataModule.queryDeletePrice.ExecSQL;
      treePrice.Selected.Delete;
      DeleteFromNodes(id,ListPriceNodes);
      end;
    end;
  end;

end;

procedure TDictEditForm.treePriceChange(Sender: TObject; Node: TTreeNode);
var id:integer;
begin
  id:=returnId(ListPriceNodes,Node);
  mainDataModule.dataSetPrice.Active:=False;
  mainDataModule.dataSetPrice.CommandText:='select Name, ShortName, Description, Cost from Price where PriceId = '+IntToStr(id);
  mainDataModule.dataSetPrice.Active:=true;
  {очищаем}
  edtPriceName.Text:='';
  edtShortPriceName.Text:='';
  memPriceDesc.Text:='';
  edtCost.Text:='';
  {заполняем}
  mainDataModule.dataSetPrice.First;
  edtPriceName.Text:=mainDataModule.dataSetPrice.FieldByName('name').AsString;
  edtShortPriceName.Text:=mainDataModule.dataSetPrice.FieldByName('shortName').AsString;
  memPriceDesc.Text:=mainDataModule.dataSetPrice.FieldByName('Description').AsString;
  edtCost.Text:=mainDataModule.dataSetPrice.FieldByName('cost').AsString;
end;

procedure TDictEditForm.btnSavePriceClick(Sender: TObject);
var id:integer; sum:double;
begin
if (TryStrToFloat(edtCost.Text, sum)) then
  begin
  id:=returnId(ListPriceNodes,treePrice.Selected);
  mainDataModule.queryPriceUpdate.Parameters.ParamValues['name_']:=edtPriceName.Text;
  mainDataModule.queryPriceUpdate.Parameters.ParamValues['shortName_']:=edtShortPriceName.Text;
  mainDataModule.queryPriceUpdate.Parameters.ParamValues['description_']:=memPriceDesc.Text;
  mainDataModule.queryPriceUpdate.Parameters.ParamValues['cost_']:=edtCost.Text;
  mainDataModule.queryPriceUpdate.Parameters.ParamValues['priceId_']:=IntToStr(id);
  mainDataModule.queryPriceUpdate.ExecSQL;
  treePrice.Selected.Text:=edtPriceName.Text;
  end
else
  begin
  ShowMessage('Значение цены должно быть числовым!');
  end;
end;

procedure TDictEditForm.btnNewPriceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите, чтобы добавить услугу в этой ветке';
end;

procedure TDictEditForm.BitBtn1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите, чтобы добавить услугу в дочерней ветке';
end;

procedure TDictEditForm.btnDelPriceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите, чтобы удалить услугу';
end;

procedure TDictEditForm.Panel11MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

procedure TDictEditForm.treePriceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Выберите услугу для редактирования';
end;

procedure TDictEditForm.edtPriceNameMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените название и нажмите "Сохранить изменения"';
end;

procedure TDictEditForm.edtShortPriceNameMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените краткое название и нажмите "Сохранить изменения"';
end;

procedure TDictEditForm.edtCostMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените стоимость услуги и нажмите "Сохранить изменения"';
end;

procedure TDictEditForm.memPriceDescMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените описание и нажмите "Сохранить изменения"';
end;

procedure TDictEditForm.btnSavePriceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Нажмите чтобы сохранить изменения';
end;

procedure TDictEditForm.Panel10MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;


procedure TDictEditForm.btnPriceToRightClick(Sender: TObject);
var priceId, lechId, priceLechId:integer;
begin
if(lbLechs.ItemIndex>=0) then
  begin
  if(treePriceForLech.Selected<>nil) then
    begin
    priceId:=returnId(ListPriceNodesForLech,treePriceForLech.Selected);
    if(not contains(lbLechPrices,priceId)) then
      begin
      lechId:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
      mainDataModule.dataSetMaxLechPrice.Active:=false;
      mainDataModule.dataSetMaxLechPrice.Parameters.ParamValues['lechId_']:=lechId;
      mainDataModule.dataSetMaxLechPrice.Active:=true;
      priceLechId:= mainDataModule.dataSetMaxLechPrice.FieldByName('MaxLechPrice').AsInteger+1;
      mainDataModule.queryInsertLechPrice.Parameters.ParamValues['lechId_']:=lechId;
      mainDataModule.queryInsertLechPrice.Parameters.ParamValues['priceId_']:=priceId;
      mainDataModule.queryInsertLechPrice.Parameters.ParamValues['num_']:=priceLechId;
      mainDataModule.queryInsertLechPrice.ExecSQL;
      lbLechPrices.AddItem(treePriceForLech.Selected.Text+' ($$'+IntToStr(priceLechId)+')',TObject(priceId));
      end
    else
      begin
      ShowMessage('В списке услуг такая услуга уже содержится');
      end;
    end
  else
    begin
    ShowMessage('Сначала выберите услугу, который вы хотите добавить в список.');
    end;
  end
else
  begin
  ShowMessage('Сначала выберите лечение, к которому вы хотите привязать услуги.');
  end;
end;

procedure TDictEditForm.btnPriceToLeftClick(Sender: TObject);
var priceId:integer;
begin
  if(lbLechPrices.ItemIndex>=0) then
    begin
    priceId:=Integer(lbLechPrices.Items.Objects[lbLechPrices.ItemIndex]);
    mainDataModule.queryDeletePricesLech.Parameters.ParamValues['lechId_']:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
    mainDataModule.queryDeletePricesLech.Parameters.ParamValues['priceId_']:=priceId;
    mainDataModule.queryDeletePricesLech.ExecSQL;
    lbLechPrices.Items.Delete(lbLechPrices.ItemIndex);
    end
  else
    begin
    ShowMessage('Сначала выберите услугу, которую вы хотите убрать из списка.');
    end;
end;

procedure TDictEditForm.memReccsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените рекомендации и нажмите кнопку "Сохранить изменения"';
end;

procedure TDictEditForm.memNaznMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Измените назначения и нажмите кнопку "Сохранить изменения"';
end;

end.
