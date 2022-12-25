unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TLoginForm = class(TForm)
    edtPass: TMaskEdit;
    btnOk: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

procedure TLoginForm.btnOkClick(Sender: TObject);
begin
if(edtPass.Text='0973') then
  begin
  ModalResult := mrOk;
  end;
end;

procedure TLoginForm.FormShow(Sender: TObject);
begin
edtPass.Text:='';
end;

end.
