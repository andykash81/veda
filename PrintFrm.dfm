object PrintForm: TPrintForm
  Left = 313
  Top = 302
  Caption = #1055#1077#1095#1072#1090#1100
  ClientHeight = 312
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    568
    312)
  PixelsPerInch = 96
  TextHeight = 20
  object rg: TRadioGroup
    Left = 0
    Top = 0
    Width = 568
    Height = 267
    Align = alClient
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1080#1072#1087#1072#1079#1086#1085' '#1074#1099#1075#1088#1091#1079#1082#1080
    ItemIndex = 0
    Items.Strings = (
      #1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1087#1088#1080#1077#1084
      #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1087#1088#1080#1077#1084
      #1055#1077#1088#1074#1099#1081' '#1087#1088#1080#1077#1084
      #1057'                                           '#1087#1086
      #1042#1089#1077' '#1087#1088#1080#1077#1084#1099)
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 267
    Width = 568
    Height = 45
    Align = alBottom
    TabOrder = 1
    object btnOk: TButton
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 296
      Top = 8
      Width = 89
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dtpFrom: TDateTimePicker
    Left = 57
    Top = 180
    Width = 184
    Height = 31
    Anchors = []
    Date = 40013.000000000000000000
    Time = 0.577514282413176300
    TabOrder = 2
    OnChange = dtpFromChange
  end
  object dtpTo: TDateTimePicker
    Left = 292
    Top = 182
    Width = 178
    Height = 28
    Anchors = []
    Date = 40013.000000000000000000
    Time = 0.578815462962666100
    TabOrder = 3
    OnChange = dtpFromChange
  end
end
