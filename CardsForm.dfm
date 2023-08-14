object CardsFrm: TCardsFrm
  Left = 0
  Top = 0
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072
  ClientHeight = 545
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 20
  object Panel2: TPanel
    Left = 0
    Top = 206
    Width = 1020
    Height = 147
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1016
    ExplicitHeight = 146
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1018
      Height = 145
      Align = alClient
      Ctl3D = True
      DataSource = mainDataModule.dsPacList
      FixedColor = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnMouseMove = DBGrid1MouseMove
      Columns = <
        item
          Expanded = False
          FieldName = 'Num_fam2'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1076' '#1082#1072#1088#1090#1099
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'newNum2'
          Title.Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Surname'
          Title.Alignment = taCenter
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Title.Caption = #1048#1084#1103
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sec_name'
          Title.Alignment = taCenter
          Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Date_birth'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Width = 141
          Visible = True
        end>
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1020
    Height = 41
    ButtonHeight = 30
    ButtonWidth = 33
    Caption = 'ToolBar1'
    Images = MainForm.ImageList1
    TabOrder = 1
    Transparent = False
    OnMouseMove = ToolBar1MouseMove
    ExplicitWidth = 1016
    object btnNew: TToolButton
      Left = 0
      Top = 0
      Hint = #1053#1086#1074#1099#1081' '#1087#1072#1094#1080#1077#1085#1090
      ImageIndex = 44
      OnClick = btnNewClick
      OnMouseMove = btnNewMouseMove
    end
    object Label31: TLabel
      Left = 33
      Top = 0
      Width = 4
      Height = 30
      Transparent = False
    end
    object btnEdit: TToolButton
      Left = 37
      Top = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1091
      Caption = 'btnEdit'
      ImageIndex = 46
      OnClick = btnEditClick
      OnMouseMove = btnEditMouseMove
    end
    object Label27: TLabel
      Left = 70
      Top = 0
      Width = 4
      Height = 30
      Transparent = False
    end
    object btnSearch: TToolButton
      Left = 74
      Top = 0
      Hint = #1055#1086#1080#1089#1082
      Caption = #1055#1086#1080#1089#1082
      Down = True
      ImageIndex = 43
      Style = tbsCheck
      Visible = False
      OnClick = btnSearchClick
      OnMouseMove = btnSearchMouseMove
    end
    object Label32: TLabel
      Left = 107
      Top = 0
      Width = 4
      Height = 30
      Transparent = False
    end
    object btnWizard: TToolButton
      Left = 111
      Top = 0
      Caption = 'btnWizard'
      ImageIndex = 24
      Visible = False
      OnClick = btnWizardClick
      OnMouseMove = btnWizardMouseMove
    end
    object Label28: TLabel
      Left = 144
      Top = 0
      Width = 4
      Height = 30
      Transparent = False
    end
    object ToolButton38: TToolButton
      Left = 148
      Top = 0
      Caption = 'ToolButton38'
      ImageIndex = 55
      OnClick = ToolButton38Click
      OnMouseMove = ToolButton38MouseMove
    end
    object Label30: TLabel
      Left = 181
      Top = 0
      Width = 4
      Height = 30
      Transparent = False
    end
    object btnFiles: TToolButton
      Left = 185
      Top = 0
      ImageIndex = 57
      OnClick = btnFilesClick
    end
    object ToolButton37: TToolButton
      Left = 218
      Top = 0
      Caption = 'btnHistory'
      ImageIndex = 56
      OnClick = ToolButton37Click
      OnMouseMove = ToolButton37MouseMove
    end
    object Label29: TLabel
      Left = 251
      Top = 0
      Width = 4
      Height = 30
      Transparent = False
    end
    object Label15: TLabel
      Left = 255
      Top = 0
      Width = 257
      Height = 30
      Align = alBottom
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1076#1086#1073#1072#1074#1083#1077#1085#1085#1099#1081' '#1082#1086#1076':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object DBEdit1: TDBEdit
      Left = 512
      Top = 0
      Width = 121
      Height = 30
      DataField = 'newNum2'
      DataSource = mainDataModule.dsLast
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object _edtCode: TDBEdit
      Left = 633
      Top = 0
      Width = 121
      Height = 30
      DataField = 'Num_fam2'
      DataSource = mainDataModule.dsPacList
      TabOrder = 1
      Visible = False
    end
    object Label26: TLabel
      Left = 754
      Top = 0
      Width = 4
      Height = 30
      Transparent = False
    end
    object btnDelete: TToolButton
      Left = 758
      Top = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1094#1080#1077#1085#1090#1072
      Caption = 'btnDelete'
      ImageIndex = 39
      Visible = False
      OnClick = btnDeleteClick
      OnMouseMove = btnDeleteMouseMove
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 1020
    Height = 165
    Align = alTop
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 2
    ExplicitWidth = 1016
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 35
      Height = 20
      Caption = #1048#1084#1103':'
    end
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 76
      Height = 20
      Caption = #1060#1072#1084#1080#1083#1080#1103':'
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 78
      Height = 20
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
    end
    object Label4: TLabel
      Left = 768
      Top = 24
      Width = 84
      Height = 20
      Caption = #1050#1086#1076' '#1082#1072#1088#1090#1099':'
    end
    object Label6: TLabel
      Left = 304
      Top = 56
      Width = 52
      Height = 20
      Caption = #1040#1076#1088#1077#1089':'
    end
    object Label8: TLabel
      Left = 8
      Top = 120
      Width = 35
      Height = 20
      Caption = #1055#1086#1083':'
    end
    object Label9: TLabel
      Left = 304
      Top = 88
      Width = 112
      Height = 20
      Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099':'
    end
    object Label10: TLabel
      Left = 272
      Top = 120
      Width = 147
      Height = 20
      Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103'/'#1044#1086#1083#1078#1085'.'
    end
    object Label12: TLabel
      Left = 304
      Top = 24
      Width = 102
      Height = 20
      Caption = #8470' '#1090#1077#1083#1077#1092#1086#1085#1072':'
    end
    object Label7: TLabel
      Left = 768
      Top = 64
      Width = 104
      Height = 20
      Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099':'
    end
    object GroupBox3: TGroupBox
      Left = 568
      Top = 78
      Width = 185
      Height = 83
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      TabOrder = 11
      object Label13: TLabel
        Left = 16
        Top = 25
        Width = 12
        Height = 20
        Caption = 'c:'
      end
      object Label14: TLabel
        Left = 8
        Top = 54
        Width = 22
        Height = 20
        Caption = #1087#1086':'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 32
        Top = 50
        Width = 121
        Height = 26
        Date = 44925.000000000000000000
        Time = 0.805255254628718800
        TabOrder = 0
        OnChange = edtSurnameChange
      end
      object DateTimePicker2: TDateTimePicker
        Left = 32
        Top = 20
        Width = 121
        Height = 26
        Date = 2.000000000000000000
        Time = 2.000000000000000000
        MinDate = 2.000000000000000000
        TabOrder = 1
        OnChange = edtSurnameChange
      end
    end
    object GroupBox2: TGroupBox
      Left = 568
      Top = 0
      Width = 185
      Height = 81
      Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1082#1072#1088#1090#1099
      TabOrder = 8
      object Label5: TLabel
        Left = 16
        Top = 22
        Width = 12
        Height = 20
        Caption = 'c:'
      end
      object Label11: TLabel
        Left = 8
        Top = 52
        Width = 22
        Height = 20
        Caption = #1087#1086':'
      end
      object dateOpenTo: TDateTimePicker
        Left = 32
        Top = 50
        Width = 121
        Height = 26
        Date = 39796.000000000000000000
        Time = 0.805255254628718800
        TabOrder = 0
        OnChange = edtSurnameChange
      end
      object dateOpenFrom: TDateTimePicker
        Left = 32
        Top = 20
        Width = 121
        Height = 26
        Date = 2.000000000000000000
        Time = 2.000000000000000000
        MaxDate = 69399.999988425930000000
        MinDate = 2.000000000000000000
        TabOrder = 1
        OnChange = edtSurnameChange
      end
    end
    object edtSurname: TEdit
      Left = 136
      Top = 16
      Width = 129
      Height = 28
      TabOrder = 0
      OnChange = edtSurnameChange
    end
    object edtProffession: TEdit
      Left = 424
      Top = 112
      Width = 128
      Height = 28
      TabOrder = 1
      OnChange = edtSurnameChange
    end
    object edtPatronymic: TEdit
      Left = 136
      Top = 80
      Width = 129
      Height = 28
      TabOrder = 2
      OnChange = edtSurnameChange
    end
    object edtName: TEdit
      Left = 136
      Top = 48
      Width = 129
      Height = 28
      TabOrder = 3
      OnChange = edtSurnameChange
    end
    object edtCardNum: TEdit
      Left = 880
      Top = 16
      Width = 97
      Height = 28
      TabOrder = 4
      OnChange = edtSurnameChange
    end
    object edtAdress: TEdit
      Left = 368
      Top = 48
      Width = 184
      Height = 28
      TabOrder = 5
      OnChange = edtSurnameChange
    end
    object cbSex: TComboBox
      Left = 136
      Top = 112
      Width = 57
      Height = 28
      Color = clBtnHighlight
      TabOrder = 6
      OnChange = edtSurnameChange
      Items.Strings = (
        #1052
        #1046)
    end
    object edtPlaceWork: TEdit
      Left = 424
      Top = 80
      Width = 129
      Height = 28
      TabOrder = 7
      OnChange = edtSurnameChange
    end
    object edtNumPh: TEdit
      Left = 424
      Top = 16
      Width = 129
      Height = 28
      TabOrder = 9
      OnChange = edtSurnameChange
    end
    object btnClear: TBitBtn
      Left = 840
      Top = 124
      Width = 161
      Height = 33
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1080#1089#1082
      TabOrder = 10
      OnClick = btnClearClick
    end
    object edtNewCardNum: TEdit
      Left = 880
      Top = 56
      Width = 97
      Height = 28
      TabOrder = 12
      OnChange = edtSurnameChange
    end
    object cbOnlyNew: TCheckBox
      Left = 768
      Top = 96
      Width = 125
      Height = 17
      Alignment = taLeftJustify
      Caption = #1058#1086#1083#1100#1082#1086' '#8470#8470
      TabOrder = 13
      OnClick = cbOnlyNewClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 353
    Width = 1020
    Height = 192
    Align = alBottom
    Color = 16573658
    TabOrder = 3
    ExplicitTop = 352
    ExplicitWidth = 1016
    object Label16: TLabel
      Left = 8
      Top = 32
      Width = 170
      Height = 20
      Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1082#1072#1088#1090#1099':'
    end
    object Label17: TLabel
      Left = 8
      Top = 56
      Width = 52
      Height = 20
      Caption = #1040#1076#1088#1077#1089':'
    end
    object DBText2: TDBText
      Left = 64
      Top = 56
      Width = 70
      Height = 20
      AutoSize = True
      DataField = 'Adress'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 8
      Top = 8
      Width = 89
      Height = 20
      Caption = #1058#1077#1083#1077#1092#1086#1085#1099': '
    end
    object Label19: TLabel
      Left = 96
      Top = 8
      Width = 33
      Height = 20
      Caption = #1057#1086#1090':'
    end
    object Label20: TLabel
      Left = 288
      Top = 8
      Width = 40
      Height = 20
      Caption = #1044#1086#1084'.:'
    end
    object Label21: TLabel
      Left = 488
      Top = 8
      Width = 36
      Height = 20
      Caption = #1056#1072#1073'.:'
    end
    object Label22: TLabel
      Left = 688
      Top = 8
      Width = 29
      Height = 20
      Caption = #1044#1088'.:'
    end
    object DBText3: TDBText
      Left = 128
      Top = 8
      Width = 145
      Height = 17
      DataField = 'ph1'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 328
      Top = 8
      Width = 145
      Height = 17
      DataField = 'ph2'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 720
      Top = 8
      Width = 249
      Height = 17
      DataField = 'ph4'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 528
      Top = 8
      Width = 161
      Height = 17
      DataField = 'ph3'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 8
      Top = 80
      Width = 112
      Height = 20
      Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099':'
    end
    object Label24: TLabel
      Left = 8
      Top = 104
      Width = 186
      Height = 20
      Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103'/ '#1044#1086#1083#1078#1085#1086#1089#1090#1100':'
    end
    object DBText7: TDBText
      Left = 120
      Top = 80
      Width = 70
      Height = 20
      AutoSize = True
      DataField = 'Profession_pl_w'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 200
      Top = 104
      Width = 70
      Height = 20
      AutoSize = True
      DataField = 'Place_work_dolzhn'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 8
      Top = 136
      Width = 99
      Height = 20
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
    end
    object TDBText
      Left = 118
      Top = 136
      Width = 6
      Height = 20
      AutoSize = True
      DataField = 'Svedenia'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 736
      Top = 136
      Width = 65
      Height = 17
      DataField = 'Sex'
      DataSource = mainDataModule.dsPacList
      Visible = False
    end
    object DBText1: TDBText
      Left = 176
      Top = 32
      Width = 70
      Height = 20
      AutoSize = True
      DataField = 'Date_open'
      DataSource = mainDataModule.dsPacList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object shpAllergy: TShape
      Left = 840
      Top = 40
      Width = 41
      Height = 41
      Brush.Color = clRed
      Shape = stCircle
    end
    object shpGepatit: TShape
      Left = 792
      Top = 40
      Width = 41
      Height = 41
      Brush.Color = clYellow
      Shape = stCircle
    end
    object shpDolzhn: TShape
      Left = 744
      Top = 40
      Width = 41
      Height = 41
      Brush.Color = clTeal
      Shape = stCircle
    end
    object shpOther: TShape
      Left = 696
      Top = 40
      Width = 41
      Height = 41
      Shape = stCircle
    end
  end
end
