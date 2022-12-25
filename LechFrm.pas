unit LechFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TlechForm = class(TForm)
    btnOk: TButton;
    btnZubCard: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnZubCardClick(Sender: TObject);
  private
    { Private declarations }
  public
    lechStr:string;
    IsOrt:Boolean;
    Ostr:string;
    IncStr:string;
    { Public declarations }
  end;

var
  lechForm: TlechForm;

implementation

uses StrUtils, OrtFrm;

{$R *.dfm}

procedure TlechForm.FormClose(Sender: TObject; var Action: TCloseAction);
var i,j,count:integer;
begin
j:=0;
i:=0;
//Узнаем сколько контролов
count:=ControlCount;
while i<count do
  begin
  if(Controls[i-j] is TComboBox) then//Отнимаем j для того чтобы не вылезти из индекса, поскольку мы удаляем контролы
    begin
    if(Controls[i-j].Name[1] = 's') then
      begin
      Controls[i-j].Free;
      j:=j+1;//После удаления увеличиваем j
      end;
    end;
    i:=i+1;
  end;
end;

procedure TlechForm.btnOkClick(Sender: TObject);
var i:integer;
begin
lechStr:='';
for i:=0 to ControlCount-1 do
  begin
  if(Controls[i] is TComboBox) then
    begin
    if(Controls[i].Name[1]='s') then
      lechStr:=lechStr+RightStr(PChar(Controls[i].Name),StrLen(PAnsiChar(Controls[i].Name))-4)+','+IntTostr(Integer(TComboBox(Controls[i]).Items.Objects[TComboBox(Controls[i]).ItemIndex]))+',';
    end;
  end;
ModalResult:=mrOk;
end;

procedure TlechForm.FormShow(Sender: TObject);
begin
IncStr:='';
if(IsOrt) then
  begin
  btnZubCard.Show;
  btnOk.Left:=225;
  end
else
  begin
  btnZubCard.Hide;
  btnOk.Left:=161;
  end;
end;

procedure TlechForm.btnZubCardClick(Sender: TObject);
begin
OrtForm.ostr:=Ostr;
if(OrtForm.ShowModal=mrOk) then
  begin
  IncStr:=OrtForm.incLs;
  end;
end;

end.
