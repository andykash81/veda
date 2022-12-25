unit FilesFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ShellApi, ComCtrls;

type
  TFilesForm = class(TForm)
    pnlButtons: TPanel;
    btnNewFile: TBitBtn;
    btnOpen: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    lbFiles: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memDesc: TMemo;
    edtFileName: TEdit;
    edtLoadDate: TEdit;
    btnSave: TBitBtn;
    OpenDialog: TOpenDialog;
    edtCreateDate: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnNewFileClick(Sender: TObject);
    function  getFileFolder:string;
    procedure btnOpenClick(Sender: TObject);
    procedure lbFilesDblClick(Sender: TObject);
    procedure lbFilesClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    PacientId:string;
    { Public declarations }
  end;

var
  FilesForm: TFilesForm;

implementation

uses dataModule, Functions, ADODB, DateUtils, DB;

{$R *.dfm}

procedure TFilesForm.FormShow(Sender: TObject);
var i:integer;
begin
Functions.ActivateDataSetWithParam('pacientId_',pacientId,mainDataModule.dataSetFilesById);
with mainDataModule.dataSetFilesById do
  begin
  lbFiles.Items.Clear;
  for i:=0 to RecordCount-1 do
    begin
    lbFiles.Items.AddObject(FieldByName('Name').AsString, TObject(FieldByName('FileId').AsInteger));
    Next;
    end;
  end;
end;

procedure TFilesForm.btnNewFileClick(Sender: TObject);
var i:integer;id:LongInt; fileName, folderName, cuttedFolderName:string; fileDt:TDateTime;
begin
OpenDialog.Execute;
for i:=0 to OpenDialog.Files.Count-1 do
  begin
  with mainDataModule.queryInsertFile do
    begin
    with Parameters do
      begin
      mainDataModule.dataSetMaxFileID.Active:=false;
      mainDataModule.dataSetMaxFileID.Active:=true;
      mainDataModule.dataSetMaxFileID.First;
      id:=mainDataModule.dataSetMaxFileID.fieldByName('maxFileId').AsInteger+1;
      fileName:=ExtractFileName(OpenDialog.Files[i]);
      cuttedFolderName:=getFileFolder+'\';
      folderName:=getConectStr+'\veda_files\'+cuttedFolderName;
      ParamValues['FileId_']:=id;
      ParamValues['Name_']:=fileName;
      ParamValues['LoadDate_']:=Today;
      FileAge(OpenDialog.Files[i], fileDt);
      ParamValues['FileDate_']:= fileDt;
      ParamValues['FileName_']:=cuttedFolderName+FloatToStr(id)+fileName;
      ParamValues['cardId_']:=PacientId;
      ExecSQL;
      lbFiles.AddItem(fileName,TObject(id));
      CopyFile(PChar(OpenDialog.Files[i]), PChar(folderName+FloatToStr(id)+fileName),true);
      end;
    end;
  end;
end;

function TFilesForm.getFileFolder:string;
begin
if not(DirectoryExists(getConectStr+'\veda_files')) then
  begin
  CreateDir(getConectStr+'\veda_files');
  end;
if not(DirectoryExists(getConectStr+'\veda_files\'+PacientId)) then
  begin
  CreateDir(getConectStr+'\veda_files\'+PacientId);
  end;
getFileFolder:=pacientId;
end;

procedure TFilesForm.btnOpenClick(Sender: TObject);
begin
if(lbFiles.ItemIndex<>-1) then
  begin
  functions.ActivateDataSetWithParam('FileId_',IntToStr(Integer(lbFiles.Items.Objects[lbFiles.ItemIndex])), mainDataModule.dataSetFileNameById);
  ShellExecute(0,'open',PChar(Functions.getConectStr+'\veda_files\'+mainDataModule.dataSetFileNameById.FieldByName('FileName').AsString),nil,nil,SW_SHOWNORMAL);
  end;
end;

procedure TFilesForm.lbFilesDblClick(Sender: TObject);
begin
btnOpenClick(nil);
end;

procedure TFilesForm.lbFilesClick(Sender: TObject);
var i:integer;
begin
Functions.ActivateDataSetWithParam('FileId_',IntTOStr(Integer(lbFiles.Items.Objects[lbFiles.ItemIndex])),mainDataModule.dataSetFileById);
i:=Integer(lbFiles.Items.Objects[lbFiles.ItemIndex]);
with mainDataModule.dataSetFileById do
  begin
  edtFileName.Text:=FieldByName('Name').AsString;
  edtLoadDate.Text:=DateToStr(FieldByName('LoadDate').AsDateTime);
  edtCreateDate.DateTime:=FieldByName('FileDate').AsDateTime;
  memDesc.Text:=FieldByName('Description').AsString;
  end;
end;

procedure TFilesForm.btnSaveClick(Sender: TObject);
begin
if (lbFiles.ItemIndex<>-1) then
  begin
  with mainDataModule.queryUpdateFile do
    begin
    with Parameters do
      begin
      ParamValues['Name_']:=edtFileName.Text;
      ParamValues['FileDate_']:=edtCreateDate.DateTime;
      ParamValues['Desc_']:=memDesc.Text;
      ParamValues['FileId_']:=Integer(lbFiles.Items.Objects[lbFiles.ItemIndex]);
      end;
    ExecSQL;
    lbFiles.Items[lbFiles.ItemIndex]:=edtFileName.Text;
    end;
  end;
end;

end.
