unit NewPacientForm;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, ComCtrls, ToolWin, Buttons,
  Mask, DBCtrls, Types, Constants;

type
  TNewPacientFrm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtSurname: TEdit;
    edtname: TEdit;
    edtPatronymic: TEdit;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    dateBirth: TDateTimePicker;
    GroupBox3: TGroupBox;
    cbSex: TComboBox;
    GroupBox4: TGroupBox;
    edtAdress: TEdit;
    GroupBox5: TGroupBox;
    edtProfession: TEdit;
    GroupBox6: TGroupBox;
    edtRemarks: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox7: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtHomeNum: TEdit;
    edtWorkNum: TEdit;
    edtMobileNum: TEdit;
    edtOtherNum: TEdit;
    GroupBox8: TGroupBox;
    chkAllergy: TCheckBox;
    chkGepatit: TCheckBox;
    chkDolzhn: TCheckBox;
    chkOther: TCheckBox;
    GroupBox9: TGroupBox;
    dateOpen: TDateTimePicker;
    Panel5: TPanel;
    GroupBox10: TGroupBox;
    edtDolzhn: TEdit;
    DBEdit1: TDBEdit;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    chkOthCities: TCheckBox;
    GroupBox11: TGroupBox;
    cbPsz: TComboBox;
    btnAddPsz: TButton;
    memPsz: TMemo;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSurnameKeyPress(Sender: TObject; var Key: Char);
    procedure edtnameKeyPress(Sender: TObject; var Key: Char);
    procedure edtPatronymicKeyPress(Sender: TObject; var Key: Char);
    procedure dateBirthKeyPress(Sender: TObject; var Key: Char);
    procedure cbSexKeyPress(Sender: TObject; var Key: Char);
    procedure edtAdressKeyPress(Sender: TObject; var Key: Char);
    procedure edtProfessionKeyPress(Sender: TObject; var Key: Char);
    procedure edtDolzhnKeyPress(Sender: TObject; var Key: Char);
    procedure edtRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure edtHomeNumKeyPress(Sender: TObject; var Key: Char);
    procedure edtWorkNumKeyPress(Sender: TObject; var Key: Char);
    procedure edtMobileNumKeyPress(Sender: TObject; var Key: Char);
    procedure edtOtherNumKeyPress(Sender: TObject; var Key: Char);
    procedure chkAllergyKeyPress(Sender: TObject; var Key: Char);
    procedure chkGepatitKeyPress(Sender: TObject; var Key: Char);
    procedure chkDolzhnKeyPress(Sender: TObject; var Key: Char);
    procedure chkOtherKeyPress(Sender: TObject; var Key: Char);
    procedure dateOpenKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddPszClick(Sender: TObject);
  private
    { Private declarations }
  public
    isNew:bool;
    pacientId: string;
    { Public declarations }
  end;

var
  NewPacientFrm: TNewPacientFrm;

implementation

uses dataModule, DateUtils, DB, ADODB, Wizard;

{$R *.dfm}

{нажали отменить}
procedure TNewPacientFrm.btnCancelClick(Sender: TObject);
begin
  Close;
end;

{нажали сохранить}
procedure TNewPacientFrm.btnSaveClick(Sender: TObject);
var ind: integer; name,patr, text:string; toCopy:boolean; newId:double;
begin
if(Trim(edtSurname.Text)<>'') then
  begin
  if(isNew) then
    begin
    mainDataModule.dataSetLikePac.Active:=false;
    mainDataModule.dataSetLikePac.Parameters.ParamValues['surname_']:=edtSurname.Text;
    mainDataModule.dataSetLikePac.Parameters.ParamValues['name_']:=edtName.Text;
    mainDataModule.dataSetLikePac.Parameters.ParamValues['sec_name_']:=edtPatronymic.Text;
    mainDataModule.dataSetLikePac.Active:=true;
    toCopy:=true;
    if(mainDataModule.dataSetLikePac.RecordCount<>0) then
     begin
      toCopy:=false;
      text:= 'Пациент с похожими данными уже создан в системе ('
         +VarToStr(mainDataModule.dataSetLikePac.FieldValues['Surname'])
         +' '
         +VarToStr(mainDataModule.dataSetLikePac.FieldValues['Name'])
         +' '
         +VarToStr(mainDataModule.dataSetLikePac.FieldValues['Sec_name'])
         +', код карты:'
         +VarToStr(mainDataModule.dataSetLikePac.FieldValues['Num_fam2'])
         +'). Создать пациента?';
        if MessageDlg(
         text,
         mtConfirmation,
         [mbYes, mbNo],
         0) = mrYes then
        toCopy:=true;
      end;
      if(toCopy) then
      begin
      mainDataModule.dsMaxNum.Active:=false;
      mainDataModule.dsMaxNum.Parameters.ParamValues['p']:=edtSurname.Text[1]+'%';
      mainDataModule.dsMaxNum.Active:=true;

      with mainDataModule.dsMaxNum2 do
        begin
        Active:=false;
        Parameters.ParamValues['sur']:=edtSurname.Text[1]+'%';
        Active:=true;
        First;
        newId:=FieldByName('MaxNewNum').AsFloat+1;
        end;

        if(DBEdit1.Text='') then
          ind:=0
        else
          ind:=Strtoint(DBEdit1.Text);
      mainDataModule.queryPacientInsert.Parameters.ParamValues['num_fam_']:=ind+1;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['surname_'] := edtSurname.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['name_'] := edtname.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['sec_name_'] := edtPatronymic.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['day_bir_'] := DayOfTheMonth(dateBirth.DateTime);
      mainDataModule.queryPacientInsert.Parameters.ParamValues['month_bir_'] := MonthOfTheYear(dateBirth.DateTime);
      mainDataModule.queryPacientInsert.Parameters.ParamValues['year_bir_'] := YearOf(dateBirth.DateTime);
      mainDataModule.queryPacientInsert.Parameters.ParamValues['sex_'] := cbSex.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['address_'] := edtAdress.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['profession_pl_w_'] := edtProfession.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['svedenia_'] := edtRemarks.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['num_fam_2_'] := edtSurname.Text[1]+ IntToStr(ind+1);
      mainDataModule.queryPacientInsert.Parameters.ParamValues['newNum_']:=FloatToStr(newId);
      mainDataModule.queryPacientInsert.Parameters.ParamValues['newNum2_']:= edtSurname.Text[1]+edtSurname.Text[1]+FloatTostr(newId);
      mainDataModule.queryPacientInsert.Parameters.ParamValues['Date_open_'] := dateOpen.DateTime;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['date_birth_'] := dateBirth.DateTime;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['ph1_'] := edtMobileNum.Text;
        if(edtname.Text<>'')then
          name:=edtname.Text[1]+'. '
        else
          name:='';
        if(edtPatronymic.Text<>'')then
          patr:=edtPatronymic.Text[1]+'.'
        else
          patr:='';
      mainDataModule.queryPacientInsert.Parameters.ParamValues['initials_'] := edtSurname.Text+' '+name+patr;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['ph2_'] := edtHomeNum.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['ph3_'] := edtWorkNum.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['ph4_'] := edtOtherNum.Text;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['place_work_dolzhn_'] := edtDolzhn.Text;
      if(chkOthCities.Checked) then mainDataModule.queryPacientInsert.Parameters.ParamValues['OthCities_']:=1 else mainDataModule.queryPacientInsert.Parameters.ParamValues['OthCities_']:=0;
      mainDataModule.queryPacientInsert.Parameters.ParamValues['psz_']:=memPsz.Text;
      mainDataModule.queryPacientInsert.ExecSQL;
      if(chkAllergy.Checked) then
        begin
            mainDataModule.queryPSZInsert.Parameters.ParamValues['code_']:= edtSurname.Text[1]+ IntToStr(ind+1);
            mainDataModule.queryPSZInsert.Parameters.ParamValues['zab_']:= PSZ_ALLERGY;
            mainDataModule.queryPSZInsert.ExecSQL;
       end;

      if(chkGepatit.Checked) then
        begin
          mainDataModule.queryPSZInsert.Parameters.ParamValues['code_']:= edtSurname.Text[1]+ IntToStr(ind+1);
          mainDataModule.queryPSZInsert.Parameters.ParamValues['zab_']:= PSZ_GEPATIT;
          mainDataModule.queryPSZInsert.ExecSQL;
        end;

      if(chkDolzhn.Checked) then
        begin
          mainDataModule.queryPSZInsert.Parameters.ParamValues['code_']:= edtSurname.Text[1]+ IntToStr(ind+1);
          mainDataModule.queryPSZInsert.Parameters.ParamValues['zab_']:= PSZ_DOLZHN;
          mainDataModule.queryPSZInsert.ExecSQL;
        end;

      if(chkOther.Checked) then
        begin
          mainDataModule.queryPSZInsert.Parameters.ParamValues['code_']:= edtSurname.Text[1]+ IntToStr(ind+1);
          mainDataModule.queryPSZInsert.Parameters.ParamValues['zab_']:= PSZ_OTHER;
          mainDataModule.queryPSZInsert.ExecSQL;
        end;
      Close;
      end;
    end
  else
    begin
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['surname_'] := edtSurname.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['name_'] := edtname.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['sec_name_'] := edtPatronymic.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['day_bir_'] := DayOfTheMonth(dateBirth.DateTime);
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['month_bir_'] := MonthOfTheYear(dateBirth.DateTime);
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['year_bir_'] := YearOf(dateBirth.DateTime);
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['sex_'] := cbSex.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['address_'] := edtAdress.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['profession_pl_w_'] := edtProfession.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['svedenia_'] := edtRemarks.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['Date_open_'] := dateOpen.DateTime;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['date_birth_'] := dateBirth.DateTime;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['ph1_'] := edtMobileNum.Text;
      if(edtname.Text<>'')then
        name:=edtname.Text[1]+'. '
      else
        name:='';
      if(edtPatronymic.Text<>'')then
        patr:=edtPatronymic.Text[1]+'.'
      else
        patr:='';
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['initials_'] := edtSurname.Text+' '+name+patr;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['ph2_'] := edtHomeNum.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['ph3_'] := edtWorkNum.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['ph4_'] := edtOtherNum.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['pl_w_dolzh_'] := edtDolzhn.Text;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['num_fam_2_'] := pacientId;
    if(chkOthCities.Checked) then mainDataModule.queryPacientUpdate.Parameters.ParamValues['OthCities_']:=1 else mainDataModule.queryPacientUpdate.Parameters.ParamValues['OthCities_']:=0;
    mainDataModule.queryPacientUpdate.Parameters.ParamValues['psz_']:=memPsz.Text;
    mainDataModule.queryPacientUpdate.ExecSQL;
    mainDataModule.queryPSZDelete.Parameters.ParamValues['cardCode_']:=pacientId;
    mainDataModule.queryPSZDelete.ExecSQL;
    if(chkAllergy.Checked) then
      begin
        mainDataModule.queryPSZInsert.Parameters.ParamValues['code_']:= pacientId;
        mainDataModule.queryPSZInsert.Parameters.ParamValues['zab_']:= PSZ_ALLERGY;
        mainDataModule.queryPSZInsert.ExecSQL;
      end;

    if(chkGepatit.Checked) then
      begin
        mainDataModule.queryPSZInsert.Parameters.ParamValues['code_']:= pacientId;
        mainDataModule.queryPSZInsert.Parameters.ParamValues['zab_']:= PSZ_GEPATIT;
        mainDataModule.queryPSZInsert.ExecSQL;
      end;

    if(chkDolzhn.Checked) then
      begin
        mainDataModule.queryPSZInsert.Parameters.ParamValues['code_']:= pacientId;
        mainDataModule.queryPSZInsert.Parameters.ParamValues['zab_']:= PSZ_DOLZHN;
        mainDataModule.queryPSZInsert.ExecSQL;
      end;

    if(chkOther.Checked) then
      begin
        mainDataModule.queryPSZInsert.Parameters.ParamValues['code_']:=pacientId;
        mainDataModule.queryPSZInsert.Parameters.ParamValues['zab_']:= PSZ_OTHER;
        mainDataModule.queryPSZInsert.ExecSQL;
      end;
    Close;
    end;
  end else
    begin
      ShowMessage('Поле "Фамилия" обязательно для заполнения!');
    end;
end;
procedure TNewPacientFrm.FormShow(Sender: TObject);
var i:integer;
begin
WizardForm.fillCbFromDict(Constants.PSZ,cbPsz);
if(pacientId<>'') then
  begin
    Caption:='Редактирование пациента';
    mainDataModule.dataSetPacient.Active:=false;
    mainDataModule.dataSetPacient.Parameters.ParamValues['CardCode']:=pacientId;
    mainDataModule.dataSetPacient.Active:=true;
    edtSurname.Text:=mainDataModule.dataSetPacient.Fields.Fields[1].AsString;
    edtname.Text:=mainDataModule.dataSetPacient.Fields.Fields[2].AsString;
    edtPatronymic.Text:=mainDataModule.dataSetPacient.Fields.Fields[3].AsString;
    edtAdress.Text:=mainDataModule.dataSetPacient.Fields.Fields[6].AsString;
    edtProfession.Text:=mainDataModule.dataSetPacient.Fields.Fields[7].AsString;
    edtRemarks.Text:=mainDataModule.dataSetPacient.Fields.Fields[14].AsString;
    edtHomeNum.Text:=mainDataModule.dataSetPacient.Fields.Fields[11].AsString;
    edtWorkNum.Text:=mainDataModule.dataSetPacient.Fields.Fields[12].AsString;
    edtMobileNum.Text:=mainDataModule.dataSetPacient.Fields.Fields[10].AsString;
    edtOtherNum.Text:=mainDataModule.dataSetPacient.Fields.Fields[13].AsString;
    edtDolzhn.Text:=mainDataModule.dataSetPacient.Fields.Fields[8].AsString;
    dateBirth.DateTime:=mainDataModule.dataSetPacient.Fields.Fields[5].AsDateTime;
    dateOpen.DateTime:=mainDataModule.dataSetPacient.Fields.Fields[9].AsDateTime;
    cbSex.Text:= mainDataModule.dataSetPacient.Fields.Fields[4].AsString;
    chkOthCities.Checked:=mainDataModule.dataSetPacient.FieldByName('OthCities').AsInteger=1;
    memPsz.Text:=mainDataModule.dataSetPacient.FieldByName('Psz').AsString;
    mainDataModule.PSZByCode.Active:=false;
    mainDataModule.PSZByCode.Parameters.ParamValues['code']:=pacientId;
    mainDataModule.PSZByCode.Active:=true;

    chkGepatit.Checked:=false;
    chkAllergy.Checked:=false;
    chkDolzhn.Checked:=false;
    chkOther.Checked:=false;

    if(mainDataModule.PSZByCode.RecordCount>0) then
      begin
          mainDataModule.PSZByCode.First;
          for i:=0 to mainDataModule.PSZByCode.RecordCount do
            begin
            if(mainDataModule.PSZByCode.FieldByName('Zabolev').AsInteger=PSZ_GEPATIT) then
              begin
                 chkGepatit.Checked:=true;
              end;

            if(mainDataModule.PSZByCode.FieldByName('Zabolev').AsInteger=PSZ_ALLERGY) then
              begin
                 chkAllergy.Checked:=true;
              end;

            if(mainDataModule.PSZByCode.FieldByName('Zabolev').AsInteger=PSZ_DOLZHN) then
              begin
                 chkDolzhn.Checked:=true;
              end;

           if(mainDataModule.PSZByCode.FieldByName('Zabolev').AsInteger=PSZ_OTHER) then
              begin
                 chkOther.Checked:=true;
              end;
            mainDataModule.PSZByCode.Next;
            end;
      end;
  end else
    begin
    Caption:='Новый пациент';
    edtSurname.Text:='';
    edtname.Text:='';
    edtPatronymic.Text:='';
    edtAdress.Text:='';
    edtProfession.Text:='';
    edtRemarks.Text:='';
    edtHomeNum.Text:='';
    edtWorkNum.Text:='';
    edtMobileNum.Text:='';
    edtOtherNum.Text:='';
    edtDolzhn.Text:='';
    dateBirth.DateTime:=22000;
    dateOpen.DateTime:=Date();
    cbSex.Text:= '';

    memPsz.Text:='';
    chkGepatit.Checked:=false;
    chkAllergy.Checked:=false;
    chkDolzhn.Checked:=false;
    chkOther.Checked:=false;
    end;
end;

procedure TNewPacientFrm.edtSurnameKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtSurname.Text:=AnsiUpperCase(Copy(edtSurname.Text,1,1))+Copy(edtSurname.Text,2,length(edtSurname.Text)-1);
  edtName.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtnameKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtName.Text:=AnsiUpperCase(Copy(edtName.Text,1,1))+Copy(edtName.Text,2,length(edtName.Text)-1);
  edtPatronymic.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtPatronymicKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtPatronymic.Text:=AnsiUpperCase(Copy(edtPatronymic.Text,1,1))+Copy(edtPatronymic.Text,2,length(edtPatronymic.Text)-1);
  dateBirth.SetFocus;
  end;
end;

procedure TNewPacientFrm.dateBirthKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key)=13 then
  begin
  cbSex.SetFocus;
  end;
end;

procedure TNewPacientFrm.cbSexKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtAdress.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtAdressKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtProfession.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtProfessionKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtDolzhn.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtDolzhnKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtRemarks.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtRemarksKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtHomeNum.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtHomeNumKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtWorkNum.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtWorkNumKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtMobileNum.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtMobileNumKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  edtOtherNum.SetFocus;
  end;
end;

procedure TNewPacientFrm.edtOtherNumKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  chkAllergy.SetFocus;
  end;
end;

procedure TNewPacientFrm.chkAllergyKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  chkGepatit.SetFocus;
  end;
end;

procedure TNewPacientFrm.chkGepatitKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key)=13 then
  begin
  chkDolzhn.SetFocus;
  end;
end;

procedure TNewPacientFrm.chkDolzhnKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key)=13 then
  begin
  chkOther.SetFocus;
  end;
end;

procedure TNewPacientFrm.chkOtherKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key)=13 then
  begin
  dateOpen.SetFocus;
  end;
end;

procedure TNewPacientFrm.dateOpenKeyPress(Sender: TObject; var Key: Char);
begin
if Ord(Key)=13 then
  begin
  btnSave.SetFocus;
  end;
end;

procedure TNewPacientFrm.btnAddPszClick(Sender: TObject);
begin
memPsz.Text:=memPsz.Text+cbPsz.Text;
end;

end.
