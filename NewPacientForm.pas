unit NewPacientForm;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, ComCtrls, ToolWin, Buttons,
  Mask, DBCtrls, Types, Constants, CardsForm;

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
var ind: integer; name,patr, text:string; toCopy:boolean; newId, id:double;
begin
if(Trim(edtSurname.Text)<>'') then
  begin
  if(isNew) then
    begin
    mainDataModule.dataSetLikePac1.Active:=false;
    mainDataModule.dataSetLikePac1.Params.ParamValues['surname_']:=edtSurname.Text;
    mainDataModule.dataSetLikePac1.Params.ParamValues['name_']:=edtName.Text;
    mainDataModule.dataSetLikePac1.Params.ParamValues['sec_name_']:=edtPatronymic.Text;
    mainDataModule.dataSetLikePac1.Active:=true;
    toCopy:=true;
    if(mainDataModule.dataSetLikePac1.RecordCount<>0) then
     begin
      toCopy:=false;
      text:= 'Пациент с похожими данными уже создан в системе ('
         +VarToStr(mainDataModule.dataSetLikePac1.FieldValues['Surname'])
         +' '
         +VarToStr(mainDataModule.dataSetLikePac1.FieldValues['Name'])
         +' '
         +VarToStr(mainDataModule.dataSetLikePac1.FieldValues['Sec_name'])
         +', код карты:'
         +VarToStr(mainDataModule.dataSetLikePac1.FieldValues['Num_fam2'])
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
      mainDataModule.dsMaxNum1.Active:=false;
      mainDataModule.dsMaxNum1.Params.ParamValues['p']:=edtSurname.Text[1]+'%';
      mainDataModule.dsMaxNum1.Active:=true;
      id:=mainDataModule.dsMaxNum1.FieldByName('MaxNum').AsFloat+1;
      DBEdit1.Text:=FloatToStr(id);

      with mainDataModule.dsMaxNum2_1 do
        begin
        Active:=false;
        Params.ParamValues['sur']:=edtSurname.Text[1]+'%';
        Active:=true;
        First;
        newId:=FieldByName('MaxNewNum').AsFloat+1;
        end;

        if(DBEdit1.Text='') then
          ind:=0
        else
          ind:=Strtoint(DBEdit1.Text);

      mainDataModule.queryPacientInsert1.Params.ParamValues['num_fam_']:=ind+1;
      mainDataModule.queryPacientInsert1.Params.ParamValues['surname_'] := edtSurname.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['name_'] := edtname.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['sec_name_'] := edtPatronymic.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['day_bir_'] := DayOfTheMonth(dateBirth.DateTime);
      mainDataModule.queryPacientInsert1.Params.ParamValues['month_bir_'] := MonthOfTheYear(dateBirth.DateTime);
      mainDataModule.queryPacientInsert1.Params.ParamValues['year_bir_'] := YearOf(dateBirth.DateTime);
      mainDataModule.queryPacientInsert1.Params.ParamValues['sex_'] := cbSex.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['address_'] := edtAdress.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['profession_pl_w_'] := edtProfession.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['svedenia_'] := edtRemarks.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['num_fam_2_'] := edtSurname.Text[1]+ IntToStr(ind+1); // Старый номер карточки пациента.
      mainDataModule.queryPacientInsert1.Params.ParamValues['newNum_']:=FloatToStr(newId);
      mainDataModule.queryPacientInsert1.Params.ParamValues['newNum2_']:= edtSurname.Text[1]+edtSurname.Text[1]+FloatTostr(newId);
      mainDataModule.queryPacientInsert1.Params.ParamValues['Date_open_'] := dateOpen.DateTime;
      mainDataModule.queryPacientInsert1.Params.ParamValues['date_birth_'] := dateBirth.DateTime;
      mainDataModule.queryPacientInsert1.Params.ParamValues['ph1_'] := edtMobileNum.Text;
        if(edtname.Text<>'')then
          name:=edtname.Text[1]+'. '
        else
          name:='';
        if(edtPatronymic.Text<>'')then
          patr:=edtPatronymic.Text[1]+'.'
        else
          patr:='';
      mainDataModule.queryPacientInsert1.Params.ParamValues['initials_'] := edtSurname.Text+' '+name+patr;
      mainDataModule.queryPacientInsert1.Params.ParamValues['ph2_'] := edtHomeNum.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['ph3_'] := edtWorkNum.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['ph4_'] := edtOtherNum.Text;
      mainDataModule.queryPacientInsert1.Params.ParamValues['place_work_dolzhn_'] := edtDolzhn.Text;
      if(chkOthCities.Checked) then mainDataModule.queryPacientInsert1.Params.ParamValues['OthCities_']:=1 else mainDataModule.queryPacientInsert1.Params.ParamValues['OthCities_']:=0;
      mainDataModule.queryPacientInsert1.Params.ParamValues['psz_']:=memPsz.Text;
      mainDataModule.queryPacientInsert1.ExecSQL;
      if(chkAllergy.Checked) then
        begin
            mainDataModule.queryPSZInsert1.Params.ParamValues['code_']:= edtSurname.Text[1]+ IntToStr(ind+1);
            mainDataModule.queryPSZInsert1.Params.ParamValues['zab_']:= PSZ_ALLERGY;
            mainDataModule.queryPSZInsert1.ExecSQL;
       end;

      if(chkGepatit.Checked) then
        begin
          mainDataModule.queryPSZInsert1.Params.ParamValues['code_']:= edtSurname.Text[1]+ IntToStr(ind+1);
          mainDataModule.queryPSZInsert1.Params.ParamValues['zab_']:= PSZ_GEPATIT;
          mainDataModule.queryPSZInsert1.ExecSQL;
        end;

      if(chkDolzhn.Checked) then
        begin
          mainDataModule.queryPSZInsert1.Params.ParamValues['code_']:= edtSurname.Text[1]+ IntToStr(ind+1);
          mainDataModule.queryPSZInsert1.Params.ParamValues['zab_']:= PSZ_DOLZHN;
          mainDataModule.queryPSZInsert1.ExecSQL;
        end;

      if(chkOther.Checked) then
        begin
          mainDataModule.queryPSZInsert1.Params.ParamValues['code_']:= edtSurname.Text[1]+ IntToStr(ind+1);
          mainDataModule.queryPSZInsert1.Params.ParamValues['zab_']:= PSZ_OTHER;
          mainDataModule.queryPSZInsert1.ExecSQL;
        end;
      Close
      end;
    end
  else
    begin
    mainDataModule.queryPacientUpdate1.Params.ParamValues['surname_'] := edtSurname.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['name_'] := edtname.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['sec_name_'] := edtPatronymic.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['day_bir_'] := DayOfTheMonth(dateBirth.DateTime);
    mainDataModule.queryPacientUpdate1.Params.ParamValues['month_bir_'] := MonthOfTheYear(dateBirth.DateTime);
    mainDataModule.queryPacientUpdate1.Params.ParamValues['year_bir_'] := YearOf(dateBirth.DateTime);
    mainDataModule.queryPacientUpdate1.Params.ParamValues['sex_'] := cbSex.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['address_'] := edtAdress.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['profession_pl_w_'] := edtProfession.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['svedenia_'] := edtRemarks.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['Date_open_'] := dateOpen.DateTime;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['date_birth_'] := dateBirth.DateTime;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['ph1_'] := edtMobileNum.Text;
      if(edtname.Text<>'')then
        name:=edtname.Text[1]+'. '
      else
        name:='';
      if(edtPatronymic.Text<>'')then
        patr:=edtPatronymic.Text[1]+'.'
      else
        patr:='';
    mainDataModule.queryPacientUpdate1.Params.ParamValues['initials_'] := edtSurname.Text+' '+name+patr;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['ph2_'] := edtHomeNum.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['ph3_'] := edtWorkNum.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['ph4_'] := edtOtherNum.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['pl_w_dolzh_'] := edtDolzhn.Text;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['num_fam_2_'] := pacientId;
    if(chkOthCities.Checked) then
      mainDataModule.queryPacientUpdate1.Params.ParamValues['OthCities_']:=1
    else
      mainDataModule.queryPacientUpdate1.Params.ParamValues['OthCities_']:=0;
    mainDataModule.queryPacientUpdate1.Params.ParamValues['psz_']:=memPsz.Text;
    mainDataModule.queryPacientUpdate1.ExecSQL;
    mainDataModule.queryPSZDelete1.Params.ParamValues['cardCode_']:=pacientId;
    mainDataModule.queryPSZDelete1.ExecSQL;
    if(chkAllergy.Checked) then
      begin
        mainDataModule.queryPSZInsert1.Params.ParamValues['code_']:= pacientId;
        mainDataModule.queryPSZInsert1.Params.ParamValues['zab_']:= PSZ_ALLERGY;
        mainDataModule.queryPSZInsert1.ExecSQL;
      end;

    if(chkGepatit.Checked) then
      begin
        mainDataModule.queryPSZInsert1.Params.ParamValues['code_']:= pacientId;
        mainDataModule.queryPSZInsert1.Params.ParamValues['zab_']:= PSZ_GEPATIT;
        mainDataModule.queryPSZInsert1.ExecSQL;
      end;

    if(chkDolzhn.Checked) then
      begin
        mainDataModule.queryPSZInsert1.Params.ParamValues['code_']:= pacientId;
        mainDataModule.queryPSZInsert1.Params.ParamValues['zab_']:= PSZ_DOLZHN;
        mainDataModule.queryPSZInsert1.ExecSQL;
      end;

    if(chkOther.Checked) then
      begin
        mainDataModule.queryPSZInsert1.Params.ParamValues['code_']:=pacientId;
        mainDataModule.queryPSZInsert1.Params.ParamValues['zab_']:= PSZ_OTHER;
        mainDataModule.queryPSZInsert1.ExecSQL;
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
    mainDataModule.dsPacientQuery1.Active:=false;
    mainDataModule.dsPacientQuery1.Params.ParamValues['CardCode']:=pacientId;
    mainDataModule.dsPacientQuery1.Active:=true;
    edtSurname.Text:=mainDataModule.dsPacientQuery1.FieldByName('Surname').AsString;
    edtname.Text:=mainDataModule.dsPacientQuery1.FieldByName('Name').AsString;
    edtPatronymic.Text:=mainDataModule.dsPacientQuery1.FieldByName('Sec_name').AsString;
    edtAdress.Text:=mainDataModule.dsPacientQuery1.FieldByName('Adress').AsString;
    edtProfession.Text:=mainDataModule.dsPacientQuery1.FieldByName('Profession_pl_w').AsString;
    edtRemarks.Text:=mainDataModule.dsPacientQuery1.FieldByName('Svedenia').AsString;
    edtHomeNum.Text:=mainDataModule.dsPacientQuery1.FieldByName('ph1').AsString;
    edtWorkNum.Text:=mainDataModule.dsPacientQuery1.FieldByName('ph2').AsString;
    edtMobileNum.Text:=mainDataModule.dsPacientQuery1.FieldByName('ph3').AsString;
    edtOtherNum.Text:=mainDataModule.dsPacientQuery1.FieldByName('ph4').AsString;
    edtDolzhn.Text:=mainDataModule.dsPacientQuery1.FieldByName('Place_work_dolzhn').AsString;
    dateBirth.DateTime:=mainDataModule.dsPacientQuery1.FieldByName('Date_birth').AsDateTime;
    dateOpen.DateTime:=mainDataModule.dsPacientQuery1.FieldByName('Date_open').AsDateTime;
    cbSex.Text:= mainDataModule.dsPacientQuery1.FieldByName('Sex').AsString;
    chkOthCities.Checked:=mainDataModule.dsPacientQuery1.FieldByName('OthCities').AsInteger=1;
    memPsz.Text:=mainDataModule.dsPacientQuery1.FieldByName('Psz').AsString;
    mainDataModule.PSZByCode1.Active:=false;
    mainDataModule.PSZByCode1.Params.ParamValues['code']:=pacientId;
    mainDataModule.PSZByCode1.Active:=true;

    chkGepatit.Checked:=false;
    chkAllergy.Checked:=false;
    chkDolzhn.Checked:=false;
    chkOther.Checked:=false;

    if(mainDataModule.PSZByCode1.RecordCount>0) then
      begin
          mainDataModule.PSZByCode1.First;
          for i:=0 to mainDataModule.PSZByCode1.RecordCount do
            begin
            if(mainDataModule.PSZByCode1.FieldByName('Zabolev').AsInteger=PSZ_GEPATIT) then
              begin
                 chkGepatit.Checked:=true;
              end;

            if(mainDataModule.PSZByCode1.FieldByName('Zabolev').AsInteger=PSZ_ALLERGY) then
              begin
                 chkAllergy.Checked:=true;
              end;

            if(mainDataModule.PSZByCode1.FieldByName('Zabolev').AsInteger=PSZ_DOLZHN) then
              begin
                 chkDolzhn.Checked:=true;
              end;

           if(mainDataModule.PSZByCode1.FieldByName('Zabolev').AsInteger=PSZ_OTHER) then
              begin
                 chkOther.Checked:=true;
              end;
            mainDataModule.PSZByCode1.Next;
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
