unit PrintFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TPrintForm = class(TForm)
    rg: TRadioGroup;
    Panel1: TPanel;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    btnOk: TButton;
    btnCancel: TButton;
    procedure FormShow(Sender: TObject);
    procedure dtpFromChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintForm: TPrintForm;

implementation

uses DateUtils;

{$R *.dfm}

procedure TPrintForm.FormShow(Sender: TObject);
begin
dtpFrom.DateTime:=Today;
dtpTo.DateTime:=Today;
rg.ItemIndex:=0;
end;

procedure TPrintForm.dtpFromChange(Sender: TObject);
begin
rg.ItemIndex:=3;
end;

end.
