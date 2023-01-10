object LoginForm: TLoginForm
  Left = 192
  Top = 107
  Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100
  ClientHeight = 82
  ClientWidth = 181
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object edtPass: TMaskEdit
    Left = 32
    Top = 16
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    Text = ''
  end
  object btnOk: TButton
    Left = 56
    Top = 56
    Width = 75
    Height = 25
    Caption = #1054#1050
    Default = True
    TabOrder = 1
    OnClick = btnOkClick
  end
end
