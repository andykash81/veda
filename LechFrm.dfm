object lechForm: TlechForm
  Left = 193
  Top = 108
  Caption = #1057#1082#1086#1088#1088#1077#1082#1090#1080#1088#1091#1081#1090#1077' '#1083#1077#1095#1077#1085#1080#1077
  ClientHeight = 535
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    359
    535)
  TextHeight = 13
  object btnOk: TButton
    Left = 206
    Top = 505
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'OK'
    TabOrder = 0
    OnClick = btnOkClick
    ExplicitLeft = 220
    ExplicitTop = 504
  end
  object btnZubCard: TButton
    Left = 72
    Top = 504
    Width = 89
    Height = 25
    Caption = #1050#1072#1088#1090#1072' '#1079#1091#1073#1086#1074
    TabOrder = 1
    OnClick = btnZubCardClick
  end
end
