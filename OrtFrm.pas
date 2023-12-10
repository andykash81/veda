unit OrtFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TOrtForm = class(TForm)
    tvl8: TButton;
    tvl7: TButton;
    tvl6: TButton;
    tvl5: TButton;
    tvl4: TButton;
    tvl3: TButton;
    tvl2: TButton;
    tvl1: TButton;
    tnl1: TButton;
    tnl2: TButton;
    tnl3: TButton;
    tnl4: TButton;
    tnl5: TButton;
    tnl6: TButton;
    tnl7: TButton;
    tnl8: TButton;
    tnr1: TButton;
    tvr1: TButton;
    tvr2: TButton;
    tnr2: TButton;
    tnr3: TButton;
    tvr3: TButton;
    tvr4: TButton;
    tnr4: TButton;
    tnr5: TButton;
    tvr5: TButton;
    tvr6: TButton;
    tnr6: TButton;
    tnr7: TButton;
    tvr7: TButton;
    tvr8: TButton;
    tnr8: TButton;
    btnOk: TButton;
    procedure btnClick(Sender: TObject);
    procedure disableButtons(Sender:TButton);
    procedure FormShow(Sender: TObject);
    procedure makeLabel(sender:TButton; capt:string;count:integer);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
  private
    lastBtn:TButton;
    { Private declarations }
  public
      ostr:string;
      incLs:string;
    { Public declarations }
  end;

   type
  PGlMost = ^GlMost;
    GlMost = record
    begins: TButton;
    ends: TButton;
    incls: string;
  end;

var
  OrtForm: TOrtForm;
  mostList:TList;
  btnsList:TList;
implementation

{$R *.dfm}

procedure TOrtForm.btnClick(Sender: TObject);
var i:integer;most:PGlMost; listZubO, zublst:TStringList;
begin
listZubO:=TStringList.Create;
ExtractStrings([' '],[],PCHar(ostr),listZubO);
if(lastBtn=nil) then
  begin
  disableButtons(TButton(Sender));
  Canvas.Pen.Color:=COLOR_BTNTEXT;
//  makeLabel(TButton(Sender),'K',1);
//  TButton(Sender).Enabled:=false;
//  incLs:=incLs+TButton(Sender).Caption+' ';
  if (listZubO.IndexOf(TButton(Sender).Caption)=-1) then
    begin
      makeLabel(TButton(Sender),'K',1);
      TButton(Sender).Enabled:=false;
      incLs:=incLs+TButton(Sender).Caption+' ';
    end
  else makeLabel(TButton(Sender),'�',2);
  lastBtn:=TButton(Sender);
  if(TButton(Sender).Name[2]='n') then
    begin
    Canvas.MoveTo(TButton(Sender).Left+Round(TButton(Sender).Width/2),180);
    Canvas.LineTo(TButton(Sender).Left+Round(TButton(Sender).Width/2),185);
    end
  else
    begin
    Canvas.MoveTo(TButton(Sender).Left+Round(TButton(Sender).Width/2),65);
    Canvas.LineTo(TButton(Sender).Left+Round(TButton(Sender).Width/2),55);
    end;
  end
else
  begin
  if(lastBtn<>TButton(Sender))then
    begin
    new(most);
    most^.begins:=lastBtn;
    most^.ends:=TButton(Sender);
//    makeLabel(most^.begins,'�',1);    // ���������� � ��������� ���
//    makeLabel(most^.ends,'�',1);
//    incLs:=incLs+most^.begins.Caption+' ';
//    incLs:=incLs+most^.ends.Caption+' ';
    if (listZubO.IndexOf(most^.begins.Caption)=-1) then
      begin
        makeLabel(most^.begins,'�',1);
        most^.begins.Enabled:=false;
        incLs:=incLs+most^.begins.Caption+' ';
      end
    else makeLabel(most^.begins,'�',2);

    if (listZubO.IndexOf(most^.ends.Caption)=-1) then
      begin
        makeLabel(most^.ends,'�',1);
        most^.ends.Enabled:=false;
        incLs:=incLs+most^.ends.Caption+' ';
      end
    else makeLabel(most^.ends,'�',2);

    for i:=0 to btnsList.Count-1 do
      begin
      if(most^.begins.Left>most^.ends.Left) then
        begin
        if((TButton(btnsList[i]).Left<most^.begins.Left)and(TButton(btnsList[i]).Left>most^.ends.Left)) then
          begin
          if (listZubO.IndexOf(TButton(btnsList[i]).Caption)=-1) then                //(TButton(btnsList[i]).Enabled)
            begin
            if(TButton(btnsList[i]).Name[2]=most^.begins.Name[2]) then
              begin
              makeLabel(TButton(btnsList[i]),'K',1);
              TButton(btnsList[i]).Enabled:=false;
              incLs:=incLs+TButton(btnsList[i]).Caption+' ';
              end;
            end
          else
            begin
            if(TButton(btnsList[i]).Name[2]=most^.begins.Name[2]) then
              begin
              makeLabel(TButton(btnsList[i]),'�',2);
              end;
            end;
          end;
        end
      else
        begin
        if((TButton(btnsList[i]).Left>most^.begins.Left)and(TButton(btnsList[i]).Left<most^.ends.Left)) then
          begin
          if(listZubO.IndexOf(TButton(btnsList[i]).Caption)=-1) then            //(TButton(btnsList[i]).Enabled)
            begin
            if(TButton(btnsList[i]).Name[2]=most^.begins.Name[2]) then
              begin
                makeLabel(TButton(btnsList[i]),'K',1);
                TButton(btnsList[i]).Enabled:=false;
                incLs:=incLs+TButton(btnsList[i]).Caption+' ';
              end;
            end
          else
            begin
            if(TButton(btnsList[i]).Name[2]=most^.begins.Name[2]) then
              begin
              makeLabel(TButton(btnsList[i]),'�',2);
              end;
            end;
          end;
        end;
      end;
    mostList.Add(most);
    FormPaint(nil);
    end
  else
    begin
    Invalidate;
    end;
  lastBtn:=nil;
  disableButtons(nil);
  end;
end;

procedure TOrtForm.disableButtons(Sender:TButton);
var i:integer; zubList, incList:TStringList;
begin
for i:=0 to ControlCount-1 do
  begin
  if(Controls[i] is TButton) then
    begin
    Controls[i].Enabled:=true;
    end;
  end;
if(Sender<>nil) then
  begin
  for i:=0 to ControlCount-1 do
    begin
    if((Controls[i] is TButton)and(Controls[i].Name[2]<>Sender.Name[2])) then
      begin
      Controls[i].Enabled:=false;
      end
    else
      begin
      Controls[i].Enabled:=true;
      end;
    end
  end;
//�������� � ������ � � �
//zubList:=TStringList.Create;
incList:=TStringList.Create;
//ExtractStrings([' '],[],PCHar(ostr),zubList);
ExtractStrings([' '],[],PCHar(incls),incList);
for i:=0 to ControlCount-1 do
  begin
  if(Controls[i] is TButton) then
    begin
    If(incList.IndexOf(TButton(Controls[i]).Caption)<>-1) then         // (zubList.IndexOf(TButton(Controls[i]).Caption)<>-1)or
      begin
      controls[i].Enabled:=false;
      end;
    end;
  end;
end;

procedure TOrtForm.FormShow(Sender: TObject);
var i:integer;zubList:TStringList;
begin
mostList:=TList.Create;
btnsList:=TList.Create;
incLs:='';
for i:=0 to ControlCount-1 do
  begin
  if((Controls[i] is TButton)and(controls[i].Name[1]='t')) then
    begin
    btnsList.Add(controls[i]);
    end;
  end;
zubList:=TStringList.Create;
ExtractStrings([' '],[],PCHar(ostr),zubList);
for i:=0 to btnsList.Count-1 do
  begin
    If(zubList.IndexOf(TButton(btnsList[i]).Caption)<>-1) then
      begin
      makeLabel(TButton(btnsList[i]),'O',1);
      end;
    end;
disableButtons(nil);
end;

procedure TOrtForm.makeLabel(sender:TButton; capt:string;count:integer);
var lbl, Instance:Tlabel; Result: String;
begin
try
sender.Enabled:=false;
lbl:=tlabel.Create(OrtForm);
Instance:=Tlabel(FindComponent('lblO'+sender.Name+intToStr(count)));
if (Instance = nil ) then
  begin
    lbl.Name:='lblO'+sender.Name+intToStr(count);
  end
else
  begin
    lbl.Name:='lblO'+sender.Name+intToStr(count+2);
  end;

lbl.Left:=sender.Left+6;

if(sender.Name[2]='n') then
  begin
  lbl.Top:=sender.Top+25*count;
  end
else
  begin
  lbl.Top:=sender.Top-25*count;
  end;
lbl.Caption:=capt;
lbl.Parent:=OrtForm;
lbl.BringToFront;
except
ShowMessage('������� �������� ����!');
end;
end;

procedure TOrtForm.FormPaint(Sender: TObject);
var most:PGlMost;i:integer;
begin
if(mostList<>nil) then
  begin
  if(mostList.Count>0)then
    begin
    for i:=0 to mostList.Count-1 do
      begin
      most:=mostList[i];
      Canvas.Pen.Color:=COLOR_BTNTEXT;
      if(most^.begins.Name[2]='n') then
        begin
        Canvas.MoveTo(most^.begins.Left+Round(most^.begins.Width/2),180);
        Canvas.LineTo(most^.begins.Left+Round(most^.begins.Width/2),185);
        Canvas.LineTo(most^.ends.Left+Round(most^.ends.Width/2),185);
        Canvas.LineTo(most^.ends.Left+Round(most^.ends.Width/2),180);
        end
      else
        begin
        Canvas.MoveTo(most^.begins.Left+Round(most^.begins.Width/2),65);
        Canvas.LineTo(most^.begins.Left+Round(most^.begins.Width/2),55);
        Canvas.LineTo(most^.ends.Left+Round(most^.ends.Width/2),55);
        Canvas.LineTo(most^.ends.Left+Round(most^.ends.Width/2),65);
        end;
      end;
    end;
  end;
end;

procedure TOrtForm.FormClose(Sender: TObject; var Action: TCloseAction);
var i,count:integer;
begin
count:=ControlCount;
i:=0;
while i<count do
  begin
  if(Controls[i] is TLabel) then
    begin
    Controls[i].Free;
    count:=count-1;
    i:=i-1;
    end;
  i:=i+1;
  end;
end;

procedure TOrtForm.btnOkClick(Sender: TObject);
begin
ModalResult:=mrOk;
end;

end.
