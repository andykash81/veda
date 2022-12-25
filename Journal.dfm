object JournalForm: TJournalForm
  Left = 313
  Top = 130
  Caption = #1046#1091#1088#1085#1072#1083' '#1087#1088#1080#1077#1084#1072
  ClientHeight = 502
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Splitter1: TSplitter
    Left = 696
    Top = 153
    Width = 8
    Height = 349
    Align = alRight
    Color = clNavy
    ParentColor = False
    ExplicitHeight = 350
  end
  object Splitter2: TSplitter
    Left = 297
    Top = 153
    Width = 8
    Height = 349
    Color = clNavy
    ParentColor = False
    ExplicitHeight = 350
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1029
    Height = 153
    Align = alTop
    TabOrder = 0
    OnMouseMove = Panel1MouseMove
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 48
      Height = 20
      Caption = #1042#1088#1072#1095':'
    end
    object Label2: TLabel
      Left = 392
      Top = 16
      Width = 49
      Height = 20
      Caption = #1044#1072#1090#1072':'
    end
    object cbDoctors: TComboBox
      Left = 64
      Top = 8
      Width = 233
      Height = 28
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbDoctorsChange
    end
    object dtpDatePriem: TDateTimePicker
      Left = 448
      Top = 8
      Width = 233
      Height = 28
      Date = 40018.000000000000000000
      Time = 0.806651828701433300
      TabOrder = 1
      OnChange = dtpDatePriemChange
    end
    object btnBackWeek: TButton
      Left = 16
      Top = 56
      Width = 113
      Height = 25
      Caption = '<< '#1053#1077#1076#1077#1083#1103
      TabOrder = 2
      OnClick = btnBackWeekClick
    end
    object btnBackDay: TButton
      Left = 144
      Top = 56
      Width = 81
      Height = 25
      Caption = '< '#1044#1077#1085#1100
      TabOrder = 3
      OnClick = btnBackDayClick
    end
    object btnToday: TButton
      Left = 240
      Top = 56
      Width = 89
      Height = 25
      Caption = #1057#1077#1075#1086#1076#1085#1103
      TabOrder = 4
      OnClick = btnTodayClick
    end
    object btnForDay: TButton
      Left = 344
      Top = 56
      Width = 89
      Height = 25
      Caption = #1044#1077#1085#1100' >'
      TabOrder = 5
      OnClick = btnForDayClick
    end
    object btnForWeek: TButton
      Left = 448
      Top = 56
      Width = 113
      Height = 25
      Caption = #1053#1077#1076#1077#1083#1103' >>'
      TabOrder = 6
      OnClick = btnForWeekClick
    end
    object btnExport: TButton
      Left = 16
      Top = 96
      Width = 185
      Height = 49
      Caption = #1051#1080#1089#1090#1086#1082' '#1077#1078#1077#1076#1085#1077#1074#1085#1086#1075#1086' '#1091#1095#1077#1090#1072
      TabOrder = 7
      WordWrap = True
      OnClick = btnExportClick
      OnMouseMove = btnExportMouseMove
    end
    object btnOpenFolder: TButton
      Left = 264
      Top = 96
      Width = 161
      Height = 49
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1072#1087#1082#1091
      TabOrder = 8
      OnClick = btnOpenFolderClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 153
    Width = 297
    Height = 349
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 350
    object lbYesterday: TListBox
      Left = 1
      Top = 1
      Width = 295
      Height = 348
      Align = alClient
      ItemHeight = 20
      PopupMenu = pMnu
      TabOrder = 0
      OnMouseMove = lbTodayMouseMove
    end
  end
  object Panel3: TPanel
    Left = 704
    Top = 153
    Width = 325
    Height = 349
    Align = alRight
    TabOrder = 2
    ExplicitHeight = 350
    object lbTomorrow: TListBox
      Left = 1
      Top = 1
      Width = 323
      Height = 348
      Align = alClient
      ItemHeight = 20
      PopupMenu = pMnu
      TabOrder = 0
      OnMouseMove = lbTodayMouseMove
    end
  end
  object Panel4: TPanel
    Left = 305
    Top = 153
    Width = 391
    Height = 349
    Align = alClient
    TabOrder = 3
    ExplicitHeight = 350
    object lbToday: TListBox
      Left = 1
      Top = 1
      Width = 389
      Height = 348
      Align = alClient
      ItemHeight = 20
      PopupMenu = pMnu
      TabOrder = 0
      OnMouseMove = lbTodayMouseMove
    end
  end
  object pMnu: TPopupMenu
    Left = 592
    Top = 88
    object N1: TMenuItem
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1073#1086#1083#1077#1079#1085#1080
      OnClick = N1Click
    end
  end
end
