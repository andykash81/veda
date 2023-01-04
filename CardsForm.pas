unit CardsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, ComCtrls, ToolWin, Buttons,
  Mask, DBCtrls, DB, Types, ADOdb;

type
  TCardsFrm = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    edtSurname: TEdit;
    edtName: TEdit;
    edtPatronymic: TEdit;
    edtCardNum: TEdit;
    edtAdress: TEdit;
    edtProffession: TEdit;
    ToolBar1: TToolBar;
    btnNew: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    btnSearch: TToolButton;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    cbSex: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtPlaceWork: TEdit;
    dateOpenFrom: TDateTimePicker;
    dateOpenTo: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label11: TLabel;
    edtNumPh: TEdit;
    Label12: TLabel;
    btnClear: TBitBtn;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    _edtCode: TDBEdit;
    btnWizard: TToolButton;
    Panel1: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBText2: TDBText;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label25: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText1: TDBText;
    shpAllergy: TShape;
    shpGepatit: TShape;
    shpDolzhn: TShape;
    shpOther: TShape;
    ToolButton38: TToolButton;
    ToolButton37: TToolButton;
    Label7: TLabel;
    edtNewCardNum: TEdit;
    cbOnlyNew: TCheckBox;
    btnFiles: TToolButton;
    Label27: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnNewMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnEditMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnDeleteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnNewClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSearchMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnClearClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnWizardClick(Sender: TObject);
    procedure btnWizardMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure redrawPanel();
    procedure paramsChanged();
    procedure edtSurnameChange(Sender: TObject);
    procedure ToolButton38Click(Sender: TObject);
    procedure ToolButton38MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton37MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ToolButton37Click(Sender: TObject);
    procedure cbOnlyNewClick(Sender: TObject);
    procedure btnFilesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CardsFrm: TCardsFrm;
  defDateOpenFrom: TDateTime;
  birthdayFrom : TDateTime;
  birthdayTo : TDateTime;
implementation

uses dataModule, MAIN, NewPacientForm, BaseFormUnit, Unit1, DateUtils,
  Wizard, Constants, HistFrm, FilesFrm;

{$R *.dfm}

procedure TCardsFrm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if(DBGrid1.Fields[2].AsString='Ж') then
begin
  DBGrid1.Canvas.Brush.Color := $00FFB0FF;
  DBGrid1.Canvas.FillRect(rect);
  DBGrid1.Canvas.TextOut(rect.Left,rect.Top,Column.Field.AsString);
end  else if(DBGrid1.Fields[2].AsString='М') then
begin
  DBGrid1.Canvas.Brush.Color := $00E8E7C8;
  DBGrid1.Canvas.FillRect(rect);
  DBGrid1.Canvas.TextOut(rect.Left, rect.Top,Column.Field.AsString);
end;
end;

procedure TCardsFrm.FormShow(Sender: TObject);
begin
CardsFrm.WindowState:=wsMaximized;
DateTimePicker1.Date := Today;
dateOpenTo.Date:=Today;
dateOpenFrom.MaxDate:=dateOpenTo.Date;
defDateOpenFrom:= dateOpenFrom.DateTime;
birthdayFrom:=DateTimePicker2.DateTime;
birthdayTo:=DateTimePicker1.DateTime;
dateOpenTo.MinDate:=dateOpenFrom.Date;
DateTimePicker2.MaxDate:= DateTimePicker1.Date;
DateTimePicker1.MinDate:= DateTimePicker2.Date;
redrawPanel;
dateOpenFrom.DateTime:=Now;
DateTimePicker2.DateTime:=Now;
mainDataModule.DataSetLast.Active:=true;
paramsChanged;
end;

procedure TCardsFrm.btnNewMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Внести нового пациента';
end;

procedure TCardsFrm.btnEditMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Редактировать данные выделенного пациента';
end;

procedure TCardsFrm.btnDeleteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Удалить выбранного пациента';
end;

procedure TCardsFrm.ToolBar1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

procedure TCardsFrm.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='';
end;

procedure TCardsFrm.btnNewClick(Sender: TObject);
begin
NewPacientFrm.isNew:=true;
NewPacientFrm.pacientId:='';
NewPacientFrm.ShowModal;
mainDataModule.dataSetPacList.Active:=false;
mainDataModule.dataSetPacList.Active:=true;
mainDataModule.DataSetLast.Active:=false;
mainDataModule.dataSetLast.Active:=true;
end;

procedure TCardsFrm.btnSearchClick(Sender: TObject);
begin
GroupBox1.Visible:=btnSearch.Down;
end;

procedure TCardsFrm.btnSearchMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if btnSearch.Down then
    MainForm.pnlHelp.Caption:='Скрыть панель поиска'
else
    MainForm.pnlHelp.Caption:='Отобразить панель поиска';
end;

procedure TCardsFrm.btnClearClick(Sender: TObject);
begin
  edtSurname.Text:='';
  edtName.Text:='';
  edtPatronymic.Text:='';
  cbSex.Text:='';
  edtNumPh.Text:='';
  edtAdress.Text:='';
  edtProffession.Text:='';
  edtPlaceWork.Text:='';
  edtCardNum.Text:='';
  dateOpenFrom.Date := dateOpenFrom.MinDate;
  dateOpenTo.DateTime:=Date();
  DateTimePicker2.Date:=DateTimePicker2.MinDate;
  DateTimePicker1.DateTime:=Date();
  edtNewCardNum.Text:='';
  paramsChanged;
end;

procedure TCardsFrm.btnEditClick(Sender: TObject);
begin
NewPacientFrm.isNew:=false;
NewPacientFrm.pacientId:=_edtCode.Text;
NewPacientFrm.ShowModal;
mainDataModule.dataSetPacList.Active:=false;
mainDataModule.dataSetPacList.Active:=true;
end;

procedure TCardsFrm.btnDeleteClick(Sender: TObject);
begin
if MessageDlg( 'Удаление пациента. Продолжить?',    mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
    if MessageDlg('Подтвердите удаление выбранного пациента.',      mtConfirmation, [mbYes, mbNo],0) = mrYes then
        begin
        mainDataModule.queryPacientDelete.Parameters.ParamValues['p']:= _edtCode.Text;
        mainDataModule.queryPacientDelete.ExecSQL;
        mainDataModule.dataSetPacList.Active:=false;
        mainDataModule.dataSetPacList.Active:=true;
        end;
    end;
end;

procedure TCardsFrm.DBGrid1DblClick(Sender: TObject);
begin
NewPacientFrm.isNew:=false;
NewPacientFrm.pacientId:=_edtCode.Text;
NewPacientFrm.ShowModal;
mainDataModule.dataSetPacList.Active:=false;
mainDataModule.dataSetPacList.Active:=true;
end;

procedure TCardsFrm.btnWizardClick(Sender: TObject);
begin
if(DBGrid1.Focused) then
  begin
  WizardForm.PacientId:=_edtCode.Text;
  WizardForm.ShowModal;
  end
else
  begin
  ShowMessage('Выберите пациента, для которого нужно ввести прием!');
  end;
end;

procedure TCardsFrm.btnWizardMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    MainForm.pnlHelp.Caption:='Провести прием пациента';
end;

procedure TCardsFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CardsFrm.Close;
end;

procedure TCardsFrm.redrawPanel();
var i:integer;
begin
  if(DBText10.Caption='Ж') then
    begin
        Panel1.Color :=$00EAD0F4;
    end
  else if(DBText10.Caption='М') then
  begin
        Panel1.Color :=$00FCE4DA;
  end;

    mainDataModule.PSZByCode.Active:=false;
    mainDataModule.PSZByCode.Parameters.ParamValues['code']:=_edtCode.Text;
    mainDataModule.PSZByCode.Active:=true;

    shpAllergy.Visible:=false;
    shpGepatit.Visible:=false;
    shpDolzhn.Visible:=false;
    shpOther.Visible:=false;

    if(mainDataModule.PSZByCode.RecordCount>0) then
      begin
          mainDataModule.PSZByCode.First;
          for i:=0 to mainDataModule.PSZByCode.RecordCount do
            begin
            if(mainDataModule.PSZByCode.FieldByName('Zabolev').AsInteger=PSZ_GEPATIT) then
              begin
                  shpGepatit.Visible:=true;
              end;

            if(mainDataModule.PSZByCode.FieldByName('Zabolev').AsInteger=PSZ_ALLERGY) then
              begin
                  shpAllergy.Visible:=true;
              end;

            if(mainDataModule.PSZByCode.FieldByName('Zabolev').AsInteger=PSZ_DOLZHN) then
              begin
                  shpDolzhn.Visible:=true;
              end;

           if(mainDataModule.PSZByCode.FieldByName('Zabolev').AsInteger=PSZ_OTHER) then
              begin
                  shpOther.Visible:=true;
              end;
          mainDataModule.PSZByCode.Next;
            end;
      end;
end;

procedure TCardsFrm.edtSurnameChange(Sender: TObject);
begin
paramsChanged;
end;

procedure TcardsFrm.paramsChanged();
var query: string;
begin
query:='';
if(Trim(edtSurname.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ ' Surname like "' + edtSurname.Text+'%"';
  end;

if(Trim(edtName.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ ' Name like "' + edtName.Text+'%"';
  end;

if(Trim(edtPatronymic.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ ' Sec_name like "' + edtPatronymic.Text+'%"';
  end;

if(Trim(cbSex.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ ' Sex like "' + cbSex.Text+'%"';
  end;


if(Trim(edtAdress.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ ' Adress like "' + edtAdress.Text+'%"';
  end;

if(Trim(edtPlaceWork.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;

  query:=query+ ' Profession_pl_w like "' + edtPlaceWork.Text+'%"';
  end;

  if(Trim(edtProffession.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;

  query:=query+ ' Place_work_dolzhn like "' + edtProffession.Text+'%"';
  end;

if(Trim(edtCardNum.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ ' Num_fam2 like "' + edtCardNum.Text+'%"';
  end;

if(Trim(edtNewCardNum.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ ' newNum2 like "' + edtNewCardNum.Text+'%"';
  end;

  if(Trim(edtNumPh.Text)<>'') then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ 'ph1 like "' + edtNumPh.Text+'%"';
  end;

  if(cbOnlyNew.Checked) then
  begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
  query:=query+ 'newNum2 is not null';
  end;


if((dateOpenFrom.DateTime<>0)and(DateTimePicker2.DateTime<>0)and(DateTimePicker1.DateTime<>Today)and(dateOpenTo.DateTime<>Today)) then
begin
  if query='' then
    begin
    query :=query+' where ';
    end else
    begin
    query:=query+' and ';
    end;
query:=query+ ' Date_open > :dof and Date_open < :dot and Date_birth > :bdf and Date_birth < :bdt';
end;
mainDataModule.dataSetPacList.Active:=false;
mainDataModule.dataSetPacList.CommandText:='select Num_fam2, NewNum2, Surname, Name, Sec_Name, Date_birth, Date_open, ph1, ph2, ph3, ph4, Place_work_dolzhn, Profession_pl_w, Sex, Svedenia, Adress from Kartochka ' + query+ ' order by Surname';
if((dateOpenFrom.DateTime<>0)and(DateTimePicker2.DateTime<>0)and(DateTimePicker1.DateTime<>Today)and(dateOpenTo.DateTime<>Today)) then
begin
mainDataModule.dataSetPacList.Parameters.ParamValues['dof'] := dateOpenFrom.DateTime;
mainDataModule.dataSetPacList.Parameters.ParamValues['dot']:=dateOpenTo.DateTime;
mainDataModule.dataSetPacList.Parameters.ParamValues['bdf']:=DateTimePicker2.DateTime;
mainDataModule.dataSetPacList.Parameters.ParamValues['bdt']:= DateTimePicker1.DateTime;
end;
mainDataModule.dataSetPacList.Active:=true;
end;

procedure TCardsFrm.ToolButton38Click(Sender: TObject);
var pacientId:string;newId:double;
begin
if(DBGrid1.Focused) then
  begin
  pacientId:=_edtCode.Text;
  with mainDataModule.dataSetHaveNewNum do
    begin
    Active:=false;
    Parameters.ParamValues['numFam2_']:=pacientId;
    Active:=true;
    First;
    if(Trim(FieldByName('NewNum2').AsString)='') then
      begin
      with mainDataModule.dsMaxNum2 do
        begin
        Active:=false;
        Parameters.ParamValues['sur']:=pacientId[1]+'%';
        Active:=true;
        First;
        newId:=FieldByName('MaxNewNum').AsFloat+1;
        end;
      with mainDataModule.queryGenerateNewNum do
        begin
        mainDataModule.queryGenerateNewNum.Parameters.ParamValues['newNum_']:=newId;
        mainDataModule.queryGenerateNewNum.Parameters.ParamValues['newNum2_']:=pacientId[1]+pacientId[1]+FloatToStr(newId);
        mainDataModule.queryGenerateNewNum.parameters.ParamValues['num_fam2_']:=pacientId;
        ExecSQL;
        ShowMessage('Сгенерирован номер: '+pacientId[1]+pacientId[1]+FloatToStr(newId));
        mainDataModule.DataSetLast.Active:=false;
        mainDataModule.DataSetLast.Active:=true;
        mainDataModule.dataSetPacList.Active:=false;
        mainDataModule.dataSetPacList.Active:=true;
        mainDataModule.DataSetLast.First;
        end;
      end
    else
      begin
      ShowMessage('Для этого пациента уже был сгенерирован номер ('+FieldByName('NewNum2').AsString+')');
      end;
    end;
  end
else
  begin
  ShowMessage('Выберите пациента, для которого нужно ввести прием!');
  end;
end;

procedure TCardsFrm.ToolButton38MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Сгенерировать новый номер карты';
end;

procedure TCardsFrm.ToolButton37MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
MainForm.pnlHelp.Caption:='Просмотр истории болезни';
end;

procedure TCardsFrm.ToolButton37Click(Sender: TObject);
begin
HistForm.pacientId:=_edtCode.Text;
HistForm.ShowModal;
end;

procedure TCardsFrm.cbOnlyNewClick(Sender: TObject);
begin
paramsChanged;
end;

procedure TCardsFrm.btnFilesClick(Sender: TObject);
begin
if(DBGrid1.Focused) then
  begin
  FilesForm.PacientId:=_edtCode.Text;
  FilesForm.ShowModal;
  end
else
  begin
  ShowMessage('Выберите пациента, для которого нужно ввести прием!');
  end;
end;

end.
