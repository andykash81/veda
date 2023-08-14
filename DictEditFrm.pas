unit DictEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, ToolWin, Buttons, ADODB, Grids,
  DBGrids, DBCtrls, Data.DB, FireDAC.Comp.Client, IdCoder, IdCoder3to4,
  IdCoder00E, IdCoderXXE, IdBaseComponent, FireDAC.Phys.PGWrapper;

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
    connectBD: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt5: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    Label26: TLabel;
    Button1: TButton;
    IncoderSym: TIdEncoderXXE;
    DecoderSym: TIdDecoderXXE;
    procedure FormShow(Sender: TObject);
    procedure cbBranchesChange(Sender: TObject);
    procedure makeTree(parentId:integer);
    procedure makeDiagnozesTree(treeView:TTreeView;nodesIdsList:TList);
    procedure makeTreeFromDataSet(treeView:TTreeView;nodesIdsList:TList;dataSet:TFDQuery; keyField:string;parentField:string);
    procedure makeLechList;
    procedure Copyy(destList:TList;sourceList:TList);
    function returnNode(idsList:TList;id1:integer):TTreeNode;
    function returnId(idsList:TList;node1:TTreeNode):integer;
    procedure treeDiagnozesChange(Sender: TObject; Node: TTreeNode);
    procedure btnNewDiagnozClick(Sender: TObject);
    procedure DeleteFromNodes(id1:integer;idsList:TList);
    procedure btnNewSubDiagnozClick(Sender: TObject);
    procedure addNode(node: TTreeNode; dataSetMax:TFDQuery;maxField:string; treeView:TTreeView; idsList:TList; insertStatement:string; insertStatementNil:string);
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
    procedure readSettingFromFile;
    procedure saveSettingtoFileClick(Sender: TObject);
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
try
readSettingFromFile;
mainDataModule.dataSetDictBranches1.Active:=false;
mainDataModule.dataSetDictBranches1.Active:=true;
count:=mainDataModule.dataSetDictBranches1.RecordCount;
   if(count>0) then
    begin
    SetLength(ids, count);
    mainDataModule.dataSetDictBranches1.First;
      for i:=1 to count do
        begin
        index:=cbBranches.Items.Add(mainDataModule.dataSetDictBranches1.FieldByName('Name').AsString);
        ids[index]:=mainDataModule.dataSetDictBranches1.FieldByName('DictId').AsInteger;
        mainDataModule.dataSetDictBranches1.Next;
        end;
    end;
ListDiagsNodes:=TList.Create;
ListDiagsNodesForLech:=TList.Create;
ListPriceNodes:=Tlist.Create;
ListPriceNodesForLech:=Tlist.Create;
makeDiagnozesTree(treeDiagnozes,ListDiagsNodes);
makeLechList;
makeDiagnozesTree(treeDiagnozesForLech,ListDiagsNodesForLech);
makeTreeFromDataSet(treePrice,ListPriceNodes, mainDataModule.dataSetPrices1,'PriceId', 'ParentPriceId');
makeTreeFromDataSet(treePriceForLech,ListPriceNodesForLech, mainDataModule.dataSetPrices1,'PriceId', 'ParentPriceId');
mainDataModule.dataSetLetters1.Active:=false;
mainDataModule.dataSetLetters1.SQL.Text:='select "Dict"."DictId", "Dict"."Name", "Dict"."ShortName" from "Dict" where "ParentDictId" = '+IntToStr(BRANCH_LETTERS);
mainDataModule.dataSetLetters1.Active:=true;
mainDataModule.dataSetLetters1.First;
fill(cbLetterDiag);
mainDataModule.dataSetLetters1.First;
fill(cbLetterLech);
mainDataModule.dataSetDict1.Active:=true;
except
  on E: EPgNativeException do
    ShowMessage('Ошибка загрузки');
end;


end;

procedure TDictEditForm.fill(cb:TComboBox);
var i:integer;
begin
cb.Items.Clear;
cb.Items.Add('Нет буквы');
for i:=1 to mainDataModule.dataSetLetters1.RecordCount do
  begin
  cb.AddItem(mainDataModule.dataSetLetters1.FieldByName('shortName').AsString+'-'+ mainDataModule.dataSetLetters1.FieldByName('Name').AsString, TObject(mainDataModule.dataSetLetters1.FieldByName('DictId').asInteger));
  mainDataModule.dataSetLetters1.Next;
  end;
end;

{*******Отсюда начинается работа со страницей "Диагнозы"*******}
{Построение дерева}
procedure TDictEditForm.makeDiagnozesTree(treeView:TTreeView;nodesIdsList:TList);
begin
mainDataModule.dataSetDiags1.Active:=true;
makeTreeFromDataSet(treeView,nodesIdsList,mainDataModule.dataSetDiags1,'Diag','ParentDiagId');
end;

procedure  TDictEditForm.makeTreeFromDataSet(treeView:TTreeView;nodesIdsList:TList;dataSet:TFDQuery; keyField:string;parentField:string);
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
dataSet.Last;
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

procedure TDictEditForm.readSettingFromFile;
var
  lineFile: TStringList;
  i: integer;
begin
    lineFile:=TStringList.Create;
      try
        lineFile.LoadFromFile(ExtractFilePath(Application.ExeName)+'\bd.sys');
        for i:=0 to lineFile.Count-1 do
        begin
          TEdit(FindComponent('edt'+IntToStr(i+1))).Text:=DecoderSym.DecodeString(lineFile[i]);
        end;
      finally
        lineFile.Free;
      end;
end;


procedure TDictEditForm.saveSettingtoFileClick(Sender: TObject);
var
  sysFile: TextFile;
  i, p: integer;
begin
  try
    AssignFile(sysFile, ExtractFilePath(Application.ExeName)+'\bd.sys');
    Rewrite(sysFile);
    for i := 0 to ComponentCount-1 do
      begin
      if (Components[i].Name = 'edt1') or (Components[i].Name = 'edt2') or (Components[i].Name = 'edt3') or (Components[i].Name = 'edt4') or (Components[i].Name = 'edt5') then
//        ShowMessage((Components[i] As TEdit).Text);
        Writeln(sysFile, IncoderSym.Encode((Components[i] As TEdit).Text));
      end;
  finally
     CloseFile(sysFile);
     mainDataModule.DataModuleCreate(Sender);
  end;

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
  mainDataModule.dataSetDiag1.Active:=False;
  mainDataModule.dataSetDiag1.SQL.Text:='select "Spr_diag"."Is_diag", "Spr_diag"."Name", "Spr_diag"."St_An_morbi", "Spr_diag"."ShortName",'+'"Spr_diag"."St_obno", "Spr_diag"."St_RSnimok", "Spr_diag"."St_slizist", "Spr_diag"."St_Zhal", "Spr_diag"."UseParentZhal", "Spr_diag"."UseParentAnMorbi",'+'"Spr_diag"."UseParentObno", "Spr_diag"."UseParentSlizist", "Spr_diag"."UseParentXRay", "Spr_diag"."LetterId" from "Spr_diag" where "Diag" = '+IntToStr(id);
  mainDataModule.dataSetDiag1.Active:=true;
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
  mainDataModule.dataSetDiag1.First;
  edtDiagName.Text:=  mainDataModule.dataSetDiag1.FieldByName('Name').AsString;
  memZhal.Text:=mainDataModule.dataSetDiag1.FieldByName('St_Zhal').AsString;
  edtDiagShortName.Text:=mainDataModule.dataSetDiag1.FieldByName('ShortName').AsString;
  memAnMorbi.Text:=mainDataModule.dataSetDiag1.FieldByName('St_An_morbi').AsString;
  memXRay.Text:=mainDataModule.dataSetDiag1.FieldByName('St_RSnimok').AsString;
  memSliz.Text:=mainDataModule.dataSetDiag1.FieldByName('St_slizist').AsString;
  memObno.Text:=mainDataModule.dataSetDiag1.FieldByName('St_obno').AsString;
  chkIsDiag.Checked:=mainDataModule.dataSetDiag1.FieldByName('Is_diag').AsInteger=1;
  chkUseParentZhal.Checked:=mainDataModule.dataSetDiag1.FieldByName('UseParentZhal').AsInteger=1;
  chkUseParentAnMorbi.Checked:=mainDataModule.dataSetDiag1.FieldByName('UseParentAnMorbi').AsInteger=1;
  chkUseParentObno.Checked:=mainDataModule.dataSetDiag1.FieldByName('UseParentObno').AsInteger=1;
  chkUseParentSlizist.Checked:=mainDataModule.dataSetDiag1.FieldByName('UseParentSlizist').AsInteger=1;
  chkUseParentXRay.Checked:=mainDataModule.dataSetDiag1.FieldByName('UseParentXRay').AsInteger=1;
  cbLetterDiag.ItemIndex:=getIndexById(cbLetterDiag, mainDataModule.dataSetDiag1.FieldByName('LetterId').AsInteger);
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
  addNode(treeDiagnozes.Selected.Parent, mainDataModule.dataSetMaxDiag1,'maxDiag', treeDiagnozes, ListDiagsNodes, 'Insert into "Spr_diag" ("Diag","ParentDiagId", "Name") values (:id,:parent,:name)', 'Insert into "Spr_diag" ("Diag", "Name") values (:id,:name)');
  end
else
  begin
  addNode(nil, mainDataModule.dataSetMaxDiag1,'maxDiag', treeDiagnozes, ListDiagsNodes, 'Insert into "Spr_diag" ("Diag","ParentDiagId", "Name") values (:id,:parent,:name)', 'Insert into "Spr_diag" ("Diag", "Name") values (:id,:name)');
  end;
end;

{Нажали "Создать диагноз в дочерней ветке"}
procedure TDictEditForm.btnNewSubDiagnozClick(Sender: TObject);
begin
if(treeDiagnozes.Selected<>nil) then
  begin
  addNode(treeDiagnozes.Selected, mainDataModule.dataSetMaxDiag1,'maxDiag', treeDiagnozes, ListDiagsNodes, 'Insert into "Spr_diag" ("Diag","ParentDiagId", "Name") values (:id,:parent,:name)', 'Insert into "Spr_diag" ("Diag", "Name") values (:id,:name)');
  end;
end;

{Добавление пустой ноды}
procedure TDictEditForm.addNode(node: TTreeNode; dataSetMax:TFDQuery; maxField:String; treeView:TTreeView; idsList:TList; insertStatement:string; insertStatementNil:string);
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
  mainDataModule.queryInsertEmptyDiag1.SQL.Clear;
  mainDataModule.queryInsertEmptyDiag1.SQL.Add(insertStatement);
  mainDataModule.queryInsertEmptyDiag1.Params.ParamValues['parent']:=parentId;
  end
else
  begin
  mainDataModule.queryInsertEmptyDiag1.SQL.Clear;
  mainDataModule.queryInsertEmptyDiag1.SQL.Add(insertStatementNil);
  end;
mainDataModule.queryInsertEmptyDiag1.Params.ParamValues['id']:=id;
mainDataModule.queryInsertEmptyDiag1.Params.ParamValues['name']:='Новый';
mainDataModule.queryInsertEmptyDiag1.ExecSQL;
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
    if Dialogs.MessageDlg( 'Удаление диагноза "'+treeDiagnozes.Selected.Text+'". Продолжить?',    mtConfirmation, [mbYes, mbNo],0) = mrYes then
      begin
      id:=returnId(ListDiagsNodes,treeDiagnozes.Selected);
      mainDataModule.queryDeleteDiag1.Params.ParamValues['diagId']:=IntToStr(id);
      mainDataModule.queryDeleteDiag1.ExecSQL;
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
  mainDataModule.queryDiagUpdate1.SQL.Clear;
  mainDataModule.queryDiagUpdate1.SQL.Add('Update "Spr_diag" set "Name" = :name_, "St_Zhal" = :zhal_ , "ShortName"=:shortName_, "St_An_morbi" = :anMorbi, ');
  mainDataModule.queryDiagUpdate1.SQL.Add('"St_obno"=:obno, "St_slizist" = :slizist, "St_RSnimok" = :rsnimok, "Is_diag" = :isdiag, ');
  mainDataModule.queryDiagUpdate1.SQL.Add('  "UseParentZhal"=:UseParentZhal_, "UseParentAnMorbi"=:UseParentAnMorbi_,"UseParentObno" = :UseParentObno_, "UseParentSlizist"=:UseParentSlizist_,"UseParentXRay"=:UseParentXRay_ , "LetterId" = :letterId_ where "Diag" = :diagId');
  mainDataModule.queryDiagUpdate1.Params.ParamValues['letterId_']:=Integer(cbLetterDiag.Items.Objects[cbLetterDiag.ItemIndex]);
  end
else
  begin
  mainDataModule.queryDiagUpdate1.SQL.Clear;
  mainDataModule.queryDiagUpdate1.SQL.Add('Update "Spr_diag" set "Name" = :name_, "St_Zhal" = :zhal_ , "ShortName"=:shortName_, "St_An_morbi" = :anMorbi, "St_obno"=:obno, "LetterId"=null, ');
  mainDataModule.queryDiagUpdate1.SQL.Add('"St_slizist" = :slizist, "St_RSnimok" = :rsnimok, "Is_diag" = :isdiag, "UseParentZhal"=:UseParentZhal_,'+' "UseParentAnMorbi"=:UseParentAnMorbi_,"UseParentObno" = :UseParentObno_, "UseParentSlizist"=:UseParentSlizist_,"UseParentXRay"=:UseParentXRay_  where "Diag" = :diagId');
  end;
id:=returnId(ListDiagsNodes,treeDiagnozes.Selected);
mainDataModule.queryDiagUpdate1.Params.ParamValues['name_']:=edtDiagName.Text;
mainDataModule.queryDiagUpdate1.Params.ParamValues['zhal_']:=memZhal.Text;
mainDataModule.queryDiagUpdate1.Params.ParamValues['shortName_']:=edtDiagShortName.Text;
mainDataModule.queryDiagUpdate1.Params.ParamValues['anMorbi']:=memAnMorbi.Text;
mainDataModule.queryDiagUpdate1.Params.ParamValues['obno']:=memObno.Text;
mainDataModule.queryDiagUpdate1.Params.ParamValues['slizist']:=memSliz.Text;
mainDataModule.queryDiagUpdate1.Params.ParamValues['rsnimok']:=memXRay.Text;
if(chkIsDiag.Checked) then
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['isdiag']:=1;
  end
else
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['isdiag']:=0;
  end;
if(chkUseParentZhal.Checked) then
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentZhal_']:=1;
  end
else
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentZhal_']:=0;
  end;
if(chkUseParentAnMorbi.Checked) then
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentAnMorbi_']:=1;
  end
else
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentAnMorbi_']:=0;
  end;
if(chkUseParentObno.Checked) then
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentObno_']:=1;
  end
else
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentObno_']:=0;
  end;
if(chkUseParentSlizist.Checked) then
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentSlizist_']:=1;
  end
else
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentSlizist_']:=0;
  end;
if(chkUseParentXRay.Checked) then
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentXRay_']:=1;
  end
else
  begin
  mainDataModule.queryDiagUpdate1.Params.ParamValues['UseParentXRay_']:=0;
  end;
mainDataModule.queryDiagUpdate1.Params.ParamValues['diagId']:=id;
mainDataModule.queryDiagUpdate1.ExecSQL;
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
mainDataModule.dataSetDictBranch1.Last;
count1:= mainDataModule.dataSetDictBranch1.RecordCount;
SetLength(idsByNodes,count1);
with treeElements.Items do
  begin
  mainDataModule.dataSetDictBranch1.First;
      for i:=1 to count1 do
        begin
        treeNode:=Add(nil,mainDataModule.dataSetDictBranch1.FieldByName('Name').AsString);
        idsByNodes[treeNode.AbsoluteIndex]:=mainDataModule.dataSetDictBranch1.FieldByName('DictId').AsInteger;
        mainDataModule.dataSetDictBranch1.Next;
        end;
    end;

end;

procedure TDictEditForm.cbBranchesChange(Sender: TObject);
begin
if(cbBranches.ItemIndex>-1) then
  begin
  mainDataModule.dataSetDictBranch1.Active:=false;
  mainDataModule.dataSetDictBranch1.SQL.Text:='select * from "Dict" where "ParentDictId" = '+IntToStr(ids[cbBranches.ItemIndex]);
  mainDataModule.dataSetDictBranch1.Active:=true;
  end;
if(mainDataModule.dataSetDictBranch1.RecordCount>0) then
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
mainDataModule.dataSetLechs1.Active:=true;
mainDataModule.dataSetLechs1.Last;
mainDataModule.dataSetLechs1.First;
for i:=1 to mainDataModule.dataSetLechs1.RecordCount do
  begin
  lbLechs.AddItem(mainDataModule.dataSetLechs1.FieldByName('Name').AsString, TObject(mainDataModule.dataSetLechs1.FieldByName('LechId').AsInteger));
  mainDataModule.dataSetLechs1.Next;
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
  mainDataModule.dataSetLech1.Active:=false;
  mainDataModule.dataSetLech1.SQL.Text:='select "Lech"."Description", "Lech"."Name", "Lech"."ShortName", "Lech"."Nazn", "Lech"."Reccs", "Lech"."letterId", "Lech"."IsOrt" from "Lech" where "LechId" ='+IntToStr(id);
  mainDataModule.dataSetLech1.Active:=true;
  mainDataModule.dataSetLech1.First;
  chkOrt.Checked:=(mainDataModule.dataSetLech1.FieldByName('IsORt').AsInteger<>0);
  edtLechName.Text:=mainDataModule.dataSetLech1.FieldByName('Name').AsString;
  edtLechShortName.Text:=mainDataModule.dataSetLech1.FieldByName('ShortName').AsString;
  memLechDesc.Text:=mainDataModule.dataSetLech1.FieldByName('Description').AsString;
  memReccs.Text:=mainDataModule.dataSetLech1.FieldByName('Reccs').AsString;
  memNazn.Text:=mainDataModule.dataSetLech1.FieldByName('Nazn').AsString;
  cbLetterLech.ItemIndex:=getIndexById(cbLetterLech, mainDataModule.dataSetLech1.FieldByName('LetterId').AsInteger);
  {Очищаем бокс с диагнозами}
  lbLechDiags.Clear;
  mainDataModule.dataSetLechDiags1.Active:=false;
  mainDataModule.dataSetLechDiags1.SQL.Text:='select "Spr_diag"."Diag", "Spr_diag"."Name" from "Spr_diag", "Diag_lech" where "Spr_diag"."Diag" = "Diag_lech"."Diag" and "Diag_lech"."LechId" = '+IntToStr(id);
  mainDataModule.dataSetLechDiags1.Active:=true;
  mainDataModule.dataSetLechDiags1.First;
  for i:=1 to mainDataModule.dataSetLechDiags1.RecordCount do
    begin
    lbLechDiags.AddItem(mainDataModule.dataSetLechDiags1.FieldByName('Name').AsString, TObject(mainDataModule.dataSetLechDiags1.FieldByName('Diag').AsInteger));
    mainDataModule.dataSetLechDiags1.Next;
    end;
  {Бокс с услугами}
  lbLechPrices.Clear;
  mainDataModule.dataSetLechPrices1.Active:=false;
  mainDataModule.dataSetLechPrices1.SQL.Text:='select "Price"."PriceId", "Price"."Name", "Lech_price"."Num" from "Price", "Lech_price" where "Lech_price"."PriceId" = "Price"."PriceId" and "Lech_price"."LechId" = '+IntToStr(id)+' order by "Lech_price"."Num"';
  mainDataModule.dataSetLechPrices1.Active:=true;
  mainDataModule.dataSetLechPrices1.First;
  for i:=1 to mainDataModule.dataSetLechPrices1.RecordCount do
    begin
    lbLechPrices.AddItem(mainDataModule.dataSetLechPrices1.FieldByName('Name').AsString + ' ($$'+mainDataModule.dataSetLechPrices1.FieldByName('Num').AsString+')', TObject(mainDataModule.dataSetLechPrices1.FieldByName('priceId').AsInteger));
    mainDataModule.dataSetLechPrices1.Next;
    end;
  end;
end;

procedure TDictEditForm.btnNewLechClick(Sender: TObject);
var id:integer;
begin
mainDataModule.dataSetMaxLech1.Active:=false;
mainDataModule.dataSetMaxLech1.Active:=true;
mainDataModule.dataSetMaxLech1.First;
id:=mainDataModule.dataSetMaxLech1.FieldByName('maxLech').AsInteger+1;
{Добавляем элемент в бокс}
lbLechs.AddItem('Новый', TObject(id));
{Добавляем в базу}
mainDataModule.queryInsertEmptyLech1.Params.ParamValues['id']:=id;
mainDataModule.queryInsertEmptyLech1.Params.ParamValues['name_']:='Новый';
mainDataModule.queryInsertEmptyLech1.ExecSQL;
end;

procedure TDictEditForm.btnDelLechClick(Sender: TObject);
var id:integer;
begin
if(lbLechs.ItemIndex>=0) then
  begin
  if Dialogs.MessageDlg( 'Удаление лечения "'+lbLechs.Items[lbLechs.ItemIndex]+'". Продолжить?',    mtConfirmation, [mbYes, mbNo],0) = mrYes then
      begin
      id:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
      mainDataModule.queryDeleteLech1.Params.ParamValues['id']:=IntToStr(id);
      mainDataModule.queryDeleteLech1.ExecSQL;
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
      mainDataModule.queryInsertDiagLech1.Params.ParamValues['lechId_']:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
      mainDataModule.queryInsertDiagLech1.Params.ParamValues['diagId_']:=diagId;
      mainDataModule.queryInsertDiagLech1.ExecSQL;
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
    mainDataModule.queryDeleteDiagLech1.Params.ParamValues['lechId_']:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
    mainDataModule.queryDeleteDiagLech1.Params.ParamValues['diagId_']:=diagId;
    mainDataModule.queryDeleteDiagLech1.ExecSQL;
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
  with mainDataModule.queryUpdateLech1 do
    begin
    sql.Clear;
     if(cbLetterLech.ItemIndex>0) then
        begin
        sql.Add('Update "Lech" set "Name" = :name_, "ShortName"=:shortName_,');
        Sql.Add('"Description" = :desc_, "Reccs" = :reccs_, "Nazn"=:nazn_, "letterId" = :letterId_, "IsOrt"=:isOrt_');
        Sql.Add('where "LechId" = :lechId_');
        Params.ParamValues['letterId_']:=Integer(cbLetterLech.Items.Objects[cbLetterLech.ItemIndex]);
        end
      else
        begin
        SQL.Add('Update "Lech" set "Name" = :name_, "ShortName"=:shortName_, "letterId"=null, ');
        SQL.Add('"Description" = :desc_, "Reccs" = :reccs_, "Nazn"=:nazn_, "IsOrt"=:isOrt_ where "LechId" = :lechId_');
        end;
    with Params do
      begin
      ParamValues['lechId_']:=id;
      ParamValues['name_']:=edtLechName.Text;
      ParamValues['shortName_']:=edtLechShortName.Text;
      ParamValues['desc_']:=memLechDesc.Text;
      ParamValues['reccs_']:=memReccs.Text;
      ParamValues['nazn_']:=memNazn.Text;
      if(chkOrt.Checked) then
        begin
        ParamValues['IsOrt_']:=1;
        end
      else
        begin
        ParamValues['IsOrt_']:=0;
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
  addNode(treePrice.Selected.Parent, mainDataModule.dataSetMaxPrice1,'maxPriceId', treePrice, ListPriceNodes, 'Insert into "Price" ("PriceId" ,"ParentPriceId", "Name") values (:id,:parent,:name)', 'Insert into "Price" ("PriceId", "Name") values (:id,:name)');
  end
else
  begin
  addNode(nil, mainDataModule.dataSetMaxPrice1,'maxPriceId', treePrice, ListPriceNodes, 'Insert into "Price" ("PriceId" ,"ParentPriceId", "Name") values (:id,:parent,:name)', 'Insert into "Price" ("PriceId", "Name") values (:id,:name)');
  end;
end;

{добавление услуги в дочерней ветке}
procedure TDictEditForm.BitBtn1Click(Sender: TObject);
begin
if(treePrice.Selected<>nil) then
  begin
  addNode(treePrice.Selected, mainDataModule.dataSetMaxPrice1,'maxPriceId', treePrice, ListPriceNodes, 'Insert into "Price" ("PriceId" ,"ParentPriceId", "Name") values (:id,:parent,:name)', 'Insert into "Price" ("PriceId", "Name") values (:id,:name)');
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
    if Dialogs.MessageDlg( 'Удаление услуги "'+treePrice.Selected.Text+'". Продолжить?',    mtConfirmation, [mbYes, mbNo],0) = mrYes then
      begin
      id:=returnId(ListPriceNodes,treePrice.Selected);
      mainDataModule.queryDeletePrice1.Params.ParamValues['priceId_']:=IntToStr(id);
      mainDataModule.queryDeletePrice1.ExecSQL;
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
  mainDataModule.dataSetPrice1.Active:=False;
  mainDataModule.dataSetPrice1.SQL.Text:='select "Price"."Name", "Price"."ShortName", "Price"."Description", "Price"."Cost" from "Price" where "PriceId" = '+IntToStr(id);
  mainDataModule.dataSetPrice1.Active:=true;
  {очищаем}
  edtPriceName.Text:='';
  edtShortPriceName.Text:='';
  memPriceDesc.Text:='';
  edtCost.Text:='';
  {заполняем}
  mainDataModule.dataSetPrice1.First;
  edtPriceName.Text:=mainDataModule.dataSetPrice1.FieldByName('name').AsString;
  edtShortPriceName.Text:=mainDataModule.dataSetPrice1.FieldByName('shortName').AsString;
  memPriceDesc.Text:=mainDataModule.dataSetPrice1.FieldByName('Description').AsString;
  edtCost.Text:=mainDataModule.dataSetPrice1.FieldByName('cost').AsString;
end;

procedure TDictEditForm.btnSavePriceClick(Sender: TObject);
var id:integer; sum:double;
begin
if (TryStrToFloat(edtCost.Text, sum)) then
  begin
  id:=returnId(ListPriceNodes,treePrice.Selected);
  mainDataModule.queryPriceUpdate1.Params.ParamValues['name_']:=edtPriceName.Text;
  mainDataModule.queryPriceUpdate1.Params.ParamValues['shortName_']:=edtShortPriceName.Text;
  mainDataModule.queryPriceUpdate1.Params.ParamValues['description_']:=memPriceDesc.Text;
  mainDataModule.queryPriceUpdate1.Params.ParamValues['cost_']:=edtCost.Text;
  mainDataModule.queryPriceUpdate1.Params.ParamValues['priceId_']:=IntToStr(id);
  mainDataModule.queryPriceUpdate1.ExecSQL;
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
      mainDataModule.dataSetMaxLechPrice1.Active:=false;
      mainDataModule.dataSetMaxLechPrice1.Params.ParamValues['lechId_']:=lechId;
      mainDataModule.dataSetMaxLechPrice1.Active:=true;
      priceLechId:= mainDataModule.dataSetMaxLechPrice1.FieldByName('MaxLechPrice').AsInteger+1;
      mainDataModule.queryInsertLechPrice1.Params.ParamValues['lechId_']:=lechId;
      mainDataModule.queryInsertLechPrice1.Params.ParamValues['priceId_']:=priceId;
      mainDataModule.queryInsertLechPrice1.Params.ParamValues['num_']:=priceLechId;
      mainDataModule.queryInsertLechPrice1.ExecSQL;
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
    mainDataModule.queryDeletePricesLech1.Params.ParamValues['lechId_']:=Integer(lbLechs.Items.Objects[lbLechs.ItemIndex]);
    mainDataModule.queryDeletePricesLech1.Params.ParamValues['priceId_']:=priceId;
    mainDataModule.queryDeletePricesLech1.ExecSQL;
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
