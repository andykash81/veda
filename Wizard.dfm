object WizardForm: TWizardForm
  Left = 1
  Top = 42
  Caption = #1042#1074#1086#1076' '#1087#1088#1080#1077#1084#1072' '#1087#1072#1094#1080#1077#1085#1090#1072
  ClientHeight = 628
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 20
  object pnlData: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 590
    Align = alClient
    Caption = 'pnlData'
    TabOrder = 0
    ExplicitWidth = 965
    ExplicitHeight = 589
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 967
      Height = 588
      ActivePage = sheetCorrect
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 963
      ExplicitHeight = 587
      object sheetZubCard: TTabSheet
        Caption = #1050#1072#1088#1090#1072' '#1079#1091#1073#1086#1074
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ImageIndex = 4
        ParentFont = False
        object Label4: TLabel
          Left = 40
          Top = 360
          Width = 57
          Height = 17
          Caption = #1055#1088#1080#1082#1091#1089':'
        end
        object Label5: TLabel
          Left = 400
          Top = 352
          Width = 257
          Height = 41
          AutoSize = False
          Caption = #1055#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1080' '#1089#1086#1087#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1079#1072#1073#1086#1083#1077#1074#1072#1085#1080#1103':'
          WordWrap = True
        end
        object tvl8: TButton
          Left = 72
          Top = 96
          Width = 25
          Height = 25
          Caption = '18'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvl7: TButton
          Left = 104
          Top = 96
          Width = 25
          Height = 25
          Caption = '17'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvl6: TButton
          Left = 136
          Top = 96
          Width = 25
          Height = 25
          Caption = '16'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvl5: TButton
          Left = 168
          Top = 96
          Width = 25
          Height = 25
          Caption = '15'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvl2: TButton
          Left = 264
          Top = 96
          Width = 25
          Height = 25
          Caption = '12'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvl1: TButton
          Left = 296
          Top = 96
          Width = 25
          Height = 25
          Caption = '11'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvl3: TButton
          Left = 232
          Top = 96
          Width = 25
          Height = 25
          Caption = '13'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvl4: TButton
          Left = 200
          Top = 96
          Width = 25
          Height = 25
          Caption = '14'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnl8: TButton
          Left = 72
          Top = 144
          Width = 25
          Height = 25
          Caption = '48'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnl7: TButton
          Left = 104
          Top = 144
          Width = 25
          Height = 25
          Caption = '47'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnl6: TButton
          Left = 136
          Top = 144
          Width = 25
          Height = 25
          Caption = '46'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnl5: TButton
          Left = 168
          Top = 144
          Width = 25
          Height = 25
          Caption = '45'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnl4: TButton
          Left = 200
          Top = 144
          Width = 25
          Height = 25
          Caption = '44'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnl3: TButton
          Left = 232
          Top = 144
          Width = 25
          Height = 25
          Caption = '43'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnl2: TButton
          Left = 264
          Top = 144
          Width = 25
          Height = 25
          Caption = '42'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnl1: TButton
          Left = 296
          Top = 144
          Width = 25
          Height = 25
          Caption = '41'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvr1: TButton
          Left = 344
          Top = 96
          Width = 25
          Height = 25
          Caption = '21'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvr2: TButton
          Left = 376
          Top = 96
          Width = 25
          Height = 25
          Caption = '22'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvr3: TButton
          Left = 408
          Top = 96
          Width = 25
          Height = 25
          Caption = '23'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvr4: TButton
          Left = 440
          Top = 96
          Width = 25
          Height = 25
          Caption = '24'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvr5: TButton
          Left = 472
          Top = 96
          Width = 25
          Height = 25
          Caption = '25'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvr6: TButton
          Left = 504
          Top = 96
          Width = 25
          Height = 25
          Caption = '26'
          TabOrder = 21
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvr7: TButton
          Left = 536
          Top = 96
          Width = 25
          Height = 25
          Caption = '27'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tvr8: TButton
          Left = 568
          Top = 96
          Width = 25
          Height = 25
          Caption = '28'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnr1: TButton
          Left = 344
          Top = 144
          Width = 25
          Height = 25
          Caption = '31'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnr2: TButton
          Left = 376
          Top = 144
          Width = 25
          Height = 25
          Caption = '32'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnr3: TButton
          Left = 408
          Top = 144
          Width = 25
          Height = 25
          Caption = '33'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnr4: TButton
          Left = 440
          Top = 144
          Width = 25
          Height = 25
          Caption = '34'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnr5: TButton
          Left = 472
          Top = 144
          Width = 25
          Height = 25
          Caption = '35'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnr6: TButton
          Left = 504
          Top = 144
          Width = 25
          Height = 25
          Caption = '36'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnr7: TButton
          Left = 536
          Top = 144
          Width = 25
          Height = 25
          Caption = '37'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object tnr8: TButton
          Left = 568
          Top = 144
          Width = 25
          Height = 25
          Caption = '38'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
          OnClick = zubClick
          OnDragOver = tDragOver
        end
        object btnO: TButton
          Left = 78
          Top = 304
          Width = 25
          Height = 25
          Caption = 'O'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
          OnEndDrag = ButtonEndDrag
        end
        object btnR: TButton
          Left = 123
          Top = 304
          Width = 25
          Height = 25
          Caption = 'R'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
          OnEndDrag = ButtonEndDrag
        end
        object btnC: TButton
          Left = 168
          Top = 304
          Width = 25
          Height = 25
          Caption = 'C'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
          OnEndDrag = ButtonEndDrag
        end
        object btnP: TButton
          Left = 213
          Top = 304
          Width = 25
          Height = 25
          Caption = 'P'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
          OnEndDrag = ButtonEndDrag
        end
        object btnA: TButton
          Left = 348
          Top = 304
          Width = 25
          Height = 25
          Caption = #1040
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
          OnEndDrag = ButtonEndDrag
        end
        object btnI: TButton
          Left = 393
          Top = 304
          Width = 25
          Height = 25
          Caption = 'I'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 37
          OnEndDrag = ButtonEndDrag
        end
        object btnPl: TButton
          Left = 303
          Top = 304
          Width = 25
          Height = 25
          Caption = #1055
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 38
          OnEndDrag = ButtonEndDrag
        end
        object btnPt: TButton
          Left = 258
          Top = 304
          Width = 25
          Height = 25
          Caption = 'Pt'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 39
          OnEndDrag = ButtonEndDrag
        end
        object btnK: TButton
          Left = 528
          Top = 304
          Width = 25
          Height = 25
          Caption = 'K'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 40
          OnEndDrag = ButtonEndDrag
        end
        object btnIs: TButton
          Left = 573
          Top = 304
          Width = 25
          Height = 25
          Caption = #1048
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 41
          OnEndDrag = ButtonEndDrag
        end
        object btnIII: TButton
          Left = 483
          Top = 304
          Width = 25
          Height = 25
          Caption = 'III'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 42
          OnEndDrag = ButtonEndDrag
        end
        object btnII: TButton
          Left = 438
          Top = 304
          Width = 25
          Height = 25
          Caption = 'II'
          DragMode = dmAutomatic
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 43
          OnEndDrag = ButtonEndDrag
        end
        object memPrikus: TMemo
          Left = 40
          Top = 416
          Width = 273
          Height = 97
          ScrollBars = ssVertical
          TabOrder = 44
        end
        object memPsz: TMemo
          Left = 400
          Top = 416
          Width = 265
          Height = 97
          ScrollBars = ssVertical
          TabOrder = 45
        end
        object cbPrikus: TComboBox
          Left = 40
          Top = 384
          Width = 273
          Height = 25
          Style = csDropDownList
          TabOrder = 46
        end
        object cbPsz: TComboBox
          Left = 400
          Top = 384
          Width = 265
          Height = 25
          Style = csDropDownList
          TabOrder = 47
        end
        object btnAddPrikus: TButton
          Left = 320
          Top = 384
          Width = 25
          Height = 25
          Caption = '+'
          TabOrder = 48
          OnClick = btnAddPrikusClick
        end
        object btnAddPsz: TButton
          Left = 672
          Top = 384
          Width = 25
          Height = 25
          Caption = '+'
          TabOrder = 49
          OnClick = btnAddPszClick
        end
        object Button33: TButton
          Left = 800
          Top = 16
          Width = 147
          Height = 33
          Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1082#1072#1088#1090#1091
          TabOrder = 50
          OnClick = Button33Click
        end
        object btnLoadFiles: TButton
          Left = 800
          Top = 64
          Width = 145
          Height = 49
          Caption = #1055#1088#1080#1083#1086#1078#1080#1090#1100' '#1092#1072#1081#1083#1099'...'
          TabOrder = 51
          WordWrap = True
          OnClick = btnLoadFilesClick
        end
      end
      object sheetDoctor: TTabSheet
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1088#1072#1095#1072' '#1080' '#1076#1072#1090#1091' '#1087#1088#1080#1077#1084#1072
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 48
          Height = 20
          Caption = #1042#1088#1072#1095':'
        end
        object Label2: TLabel
          Left = 24
          Top = 112
          Width = 116
          Height = 20
          Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072':'
        end
        object cbDoctor: TComboBox
          Left = 88
          Top = 24
          Width = 289
          Height = 28
          Style = csDropDownList
          Sorted = True
          TabOrder = 0
          OnChange = edtDateChange
        end
        object edtDate: TEdit
          Left = 168
          Top = 104
          Width = 209
          Height = 28
          ReadOnly = True
          TabOrder = 1
          OnChange = edtDateChange
        end
        object calDate: TMonthCalendar
          Left = 168
          Top = 144
          Width = 209
          Height = 223
          Date = 39819.000000000000000000
          MaxDate = 69399.999988425930000000
          TabOrder = 2
          OnClick = calDateClick
        end
      end
      object sheetTeeth: TTabSheet
        Caption = #1054#1087#1080#1096#1080#1090#1077' '#1076#1080#1072#1075#1085#1086#1079' '#1080' '#1083#1077#1095#1077#1085#1080#1077
        ImageIndex = 1
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 959
          Height = 97
          Align = alTop
          Caption = #1047#1091#1073
          TabOrder = 0
          object Button1: TButton
            Left = 88
            Top = 16
            Width = 25
            Height = 25
            Caption = '18'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 120
            Top = 16
            Width = 25
            Height = 25
            Caption = '17'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button1Click
          end
          object Button3: TButton
            Left = 152
            Top = 16
            Width = 25
            Height = 25
            Caption = '16'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = Button1Click
          end
          object Button4: TButton
            Left = 184
            Top = 16
            Width = 25
            Height = 25
            Caption = '15'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = Button1Click
          end
          object Button5: TButton
            Left = 216
            Top = 16
            Width = 25
            Height = 25
            Caption = '14'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = Button1Click
          end
          object Button6: TButton
            Left = 248
            Top = 16
            Width = 25
            Height = 25
            Caption = '13'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnClick = Button1Click
          end
          object Button7: TButton
            Left = 280
            Top = 16
            Width = 25
            Height = 25
            Caption = '12'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnClick = Button1Click
          end
          object Button8: TButton
            Left = 312
            Top = 16
            Width = 25
            Height = 25
            Caption = '11'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = Button1Click
          end
          object Button9: TButton
            Left = 360
            Top = 16
            Width = 25
            Height = 25
            Caption = '21'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnClick = Button1Click
          end
          object Button10: TButton
            Left = 392
            Top = 16
            Width = 25
            Height = 25
            Caption = '22'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            OnClick = Button1Click
          end
          object Button11: TButton
            Left = 424
            Top = 16
            Width = 25
            Height = 25
            Caption = '23'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            OnClick = Button1Click
          end
          object Button12: TButton
            Left = 456
            Top = 16
            Width = 25
            Height = 25
            Caption = '24'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            OnClick = Button1Click
          end
          object Button13: TButton
            Left = 488
            Top = 16
            Width = 25
            Height = 25
            Caption = '25'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
            OnClick = Button1Click
          end
          object Button14: TButton
            Left = 520
            Top = 16
            Width = 25
            Height = 25
            Caption = '26'
            TabOrder = 13
            OnClick = Button1Click
          end
          object Button15: TButton
            Left = 552
            Top = 16
            Width = 25
            Height = 25
            Caption = '27'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
            OnClick = Button1Click
          end
          object Button16: TButton
            Left = 584
            Top = 16
            Width = 25
            Height = 25
            Caption = '28'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
            OnClick = Button1Click
          end
          object Button17: TButton
            Left = 584
            Top = 56
            Width = 25
            Height = 25
            Caption = '38'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
            OnClick = Button1Click
          end
          object Button18: TButton
            Left = 552
            Top = 56
            Width = 25
            Height = 25
            Caption = '37'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
            OnClick = Button1Click
          end
          object Button19: TButton
            Left = 520
            Top = 56
            Width = 25
            Height = 25
            Caption = '36'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 18
            OnClick = Button1Click
          end
          object Button20: TButton
            Left = 488
            Top = 56
            Width = 25
            Height = 25
            Caption = '35'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 19
            OnClick = Button1Click
          end
          object Button21: TButton
            Left = 456
            Top = 56
            Width = 25
            Height = 25
            Caption = '34'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 20
            OnClick = Button1Click
          end
          object Button22: TButton
            Left = 424
            Top = 56
            Width = 25
            Height = 25
            Caption = '33'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 21
            OnClick = Button1Click
          end
          object Button23: TButton
            Left = 392
            Top = 56
            Width = 25
            Height = 25
            Caption = '32'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 22
            OnClick = Button1Click
          end
          object Button24: TButton
            Left = 360
            Top = 56
            Width = 25
            Height = 25
            Caption = '31'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 23
            OnClick = Button1Click
          end
          object Button25: TButton
            Left = 312
            Top = 56
            Width = 25
            Height = 25
            Caption = '41'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 24
            OnClick = Button1Click
          end
          object Button26: TButton
            Left = 280
            Top = 56
            Width = 25
            Height = 25
            Caption = '42'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 25
            OnClick = Button1Click
          end
          object Button27: TButton
            Left = 248
            Top = 56
            Width = 25
            Height = 25
            Caption = '43'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 26
            OnClick = Button1Click
          end
          object Button28: TButton
            Left = 216
            Top = 56
            Width = 25
            Height = 25
            Caption = '44'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 27
            OnClick = Button1Click
          end
          object Button29: TButton
            Left = 184
            Top = 56
            Width = 25
            Height = 25
            Caption = '45'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 28
            OnClick = Button1Click
          end
          object Button30: TButton
            Left = 152
            Top = 56
            Width = 25
            Height = 25
            Caption = '46'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 29
            OnClick = Button1Click
          end
          object Button31: TButton
            Left = 120
            Top = 56
            Width = 25
            Height = 25
            Caption = '47'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 30
            OnClick = Button1Click
          end
          object Button32: TButton
            Left = 88
            Top = 56
            Width = 25
            Height = 25
            Caption = '48'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 31
            OnClick = Button1Click
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 97
          Width = 457
          Height = 456
          Align = alLeft
          Caption = #1044#1080#1072#1075#1085#1086#1079
          TabOrder = 1
          object diagnozesTree: TTreeView
            Left = 2
            Top = 22
            Width = 453
            Height = 373
            Align = alClient
            Indent = 19
            ReadOnly = True
            TabOrder = 0
            OnDblClick = diagnozesTreeDblClick
          end
          object Panel1: TPanel
            Left = 2
            Top = 395
            Width = 453
            Height = 59
            Align = alBottom
            TabOrder = 1
            DesignSize = (
              453
              59)
            object cbLech: TComboBox
              Left = 12
              Top = 15
              Width = 365
              Height = 28
              Style = csDropDownList
              Anchors = [akRight, akBottom]
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnChange = cbLechChange
            end
            object btnGoLech: TBitBtn
              Left = 384
              Top = 5
              Width = 57
              Height = 49
              Glyph.Data = {
                7E120000424D7E12000000000000360000002800000027000000270000000100
                18000000000048120000130B0000130B00000000000000000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFC7
                C2C4C9C1C4CBC2C5CDC2C6CDC2C6CEC3C6CBC2C5C8C1C4C6C1C3BEBEBEC0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0BFBFBFC6C1C3CDC3C7D9CCD380A3977BB49F62AE93
                4EA98A4DAE8B45A68661B19481B8A492ADA6EED8E0CDC2C6C6C1C3C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C5C1C3DBCED396B4A953A283058955179560058D5700864E00864F008853008A
                54008C56008F5B00915C0086513E997B9CB1ABD6C5CAC3BFC0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C1C0C1D2C5CA98B0A732986F1D96
                6300884D00884F008A52008B55008E58008F5A00915C00925E00936000946200
                966400986700986600935E28A07AC2C8C6CEC1C5BFBFBFC0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C4C1C2C8BFC45A9F83219A6700894E00884E008C54008D5600
                8F5800905A00915C00935E009460009562009764009866009A68009B6B009D6D
                009E6F009F6F00976369B19CDDC8CEC1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C6C2C3B7
                BABB2D956B17975E00894C008D54008F5600905800925A00935C00945E009560
                009662009864009966009B68009C6A009D6C00A06F00A07100A27300A37500A5
                7700A27133A583CCC0C3C4C2C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C5C2C3C0BABA32936809945A008D52
                00905700925900935A00945C00955E009760009862009964009A67009C68009E
                6A009E6D00A06F00A17100A37300A57500A67700A87900A97C00AB7E00AD7E0B
                9973BEB2B5C3C1C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C0C0C0C2C1C1C0BABD2F9D7108985C00915500945900955C00965D0097
                5F009861009A62009B64009D66009D68009F6A00A16D00A16F00A37100A47300
                A67500A77800A87A00AA7B00AB7E00AD8000AE8200B08500B38430AF8ED5C0C5
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0D5C5
                CB4FA280149F6500945800975D00985E009960009B62009C64009E66009E6800
                A06900A16B00A36D00A37000A57200A67300A97700AA7800AB7B00AB7C00AD7E
                00AE8000AF8200B18400B38700B48900B68C00B6895DB29ED0C1C4C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C8C2C47FA79A20A97100965900
                9B5F009C61009D62009E64009F6600A06700A16A00A36C00A46E00A57000A672
                00A87400A97700A977009865009A6C009F6D00B08100B18300B28400B38600B5
                8900B78B00B88E00B98F00BB9300B78AB7BFBDC3BFC0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0BFBFD6C8CD27A777009D5E009E6200A06400A16600A268
                00A36A00A46B00A56D00A66F00A77100A87300AA7500AB7700AC7900AE7A009B
                6AC6E3D9FFFFFF82C9B6009C6B00B68800B78900B88B00B98E00BB9100BC9200
                BD9400BF9700C1972ABF9FDCC2C8BFBFBFC0C0C0C0C0C0000000C0C0C0C0C0C0
                C7C0C379B09D1BAE7500A16200A36700A46900A56B00A66C00A76E00A87000AA
                7100AB7300AC7500AD7700AF7A00AF7B00B27E00A7728DCEBAFFFFFFFFFFFFFF
                FFFF83CBB700A27200BC8E00BC9100BE9200BF9400C09600C19800C29A00C49C
                00C296AEC7C2C4BFC0C0C0C0C0C0C0000000C0C0C0BEBFBEE1CDD532A87C00A6
                6700A76A00A96C00AA6E00AB6F00AC7100AD7300AE7500AF7700B07900B17A00
                B27C00B37E00B58000B68300AD787CCBB5FFFFFFFFFFFFFFFFFFFFFFFF83CDBB
                00A87900C19500C29700C39800C49A00C59D00C79E00C7A100CAA13FC1A7CDBE
                C1C0C0C0C0C0C0000000C0C0C0C2C0C1B9BFBF10B47700AA6B00AC6F00AD7100
                AE7300AF7400B07600B17800B27A00B37B00B47D00B57F00B78100B88300B985
                00BA8700BC8900A675ADDED1FFFFFFFFFFFFFFFFFFFFFFFF83D0BE00AE7F00C7
                9B00C79D00C89F00C9A100CAA200CBA500CDA700C69DEED1D6BEBEBEC0C0C000
                0000C0C0C0C9C1C46DB19913B97D00B07100B27400B37600B37800B47900B67B
                00B67D00B77F00B88000B98200BA8400BB8600BC8800BD8A00BE8B00C08E00BF
                8E00A877ADDFD3FFFFFFFFFFFFFFFFFFFFFFFF83D1C000B28600CCA100CCA300
                CDA500CEA600CFA900D0AA00D4AC95C1B9C6BFC0C0C0C0000000C0C0C0CBBFC3
                6CC9A900B47200B67700B67A00B87B00B97D00BA7F00BA7E00BB8000BC8200BD
                8500BE8600BF8700C08900C18B00C28D00C38F00C49100C69300C49400AE7EA8
                E0D3FFFFFFFFFFFFFFFFFFFFFFFF83D3C200B88C00D0A700D1A900D1AB00D2AC
                00D3AE00D7B07DD1C0C9BEC0C0C0C0000000C0C0C0CFC0C538BD9100BA7600BB
                7D00BC7E00BD8000BE8100B07516B27F16AF7F16B08016B18116B28316B38416
                B38616B58816B58916B58B16B78C16B78E16BA9013B98F00A37AB8E5DBFFFFFF
                FFFFFFFFFFFFFFFFFF82D5C500BD9300D5AD00D5AF00D6B000D7B100D8B258D8
                C1CCBDBFC0C0C0000000C0C0C0D2C0C61ABD8800C18200C08300C08200C28600
                B67787D3BCFFFFFFFBFBFCFAFBFBFAFBFBFAFBFCFAFCFBFAFBFBFAFBFBFAFBFB
                FAFBFBFAFBFBFAFBFCFAFBFCFAFCFCF7FCFBEDF8F6FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF7DD7C500C8A102DAB401D9B400DAB600DAB449E3CACEBCBFC0C0C000
                0000C0C0C0D2BEC51DCA920AC88B0FC88E06C68B00C78B00AC6CFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B
                CDB00BDEBA0FDFBC0EDEBD00DFBB4EEDD4CDBBBEC0C0C0000000C0C0C0D2BEC4
                1BC89315CE9518CD9619CF9917D19A00B77BEDF6F3FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FAFA13CCAC15E2C017E2C2
                18E2C30FE3C256EBD5CCBBBDC0C0C0000000C0C0C0D0BEC429C7981ED59E22D4
                9F22D5A022D6A31BD29F3AC8A0BBE7DBB6E5D8B5E5D9B0E4D7ADE4D7ACE4D6AD
                E4D7AFE5D8B5E6DBB6E6DCB6E7DCB6E7DCB6E7DCB6E8DEA9E2D7CCEEE7FFFFFF
                FFFFFFFFFFFFFFFFFFFBFBFB2ECAAF17E0BE22E7C722E6C722E7C81BE9CA5ADC
                C8CBBCBEC0C0C0000000C0C0C0CCBDC156D4B028DBA62DDAA82DDAA92DDBAA2D
                DDAD26D9A813CE9C11CD9C12CD9D13CE9F11CEA00FCFA110D0A213D1A512D2A7
                12D2A712D2A911D4AA13D5AE03CBA324BC9DF2FAF8FFFFFFFFFFFFFFFFFFFBFA
                FB33CCB11EE1C02EEACC2DE9CB2DEACD2CE9CD32EED27FE9D8C8BBBDC0C0C000
                0000C0C0C0C8BDC07FD9C036E2B038E0B139E0B139E1B339E1B439E2B63AE4B7
                3AE4BA3AE5BA3AE5BB3AE6BC3AE6BD3AE7BF3AE7C13AE7C13AE8C33AE9C33AEA
                C72DE1BD49D0B5FFFFFFFFFFFFFFFFFFFFFFFFF9FBFA3CCEB52BE5C63AEED139
                EBD039EDD039EED237EDD23FF4D989D2C7C6BDBEC0C0C0000000C0C0C0C3BFC0
                AEC3BE27E8B147E5BA46E5BA46E5BB46E6BC46E7BD46E7BD46E8BF46E8C046E8
                C146E8C246E9C346EAC546EAC646EAC746EAC846ECCA3CE5C351D2B8FFFEFFFF
                FFFFFFFFFFFFFFFFF9FBFA48D1B938E8CA47F1D446F0D446EFD546F0D646F0D7
                46F1D825F1D3D6C6C7C0BEBFC0C0C0000000C0C0C0BFBFBFDCC1C919CF9C58EC
                C453EAC253EAC353EBC353EAC553EBC553EAC653ECC753ECC853EDC953EDCB53
                ECCB53EECD53EDCD53F0CE51EFCF4EDABFFFFDFDFFFFFFFFFFFFFFFFFFFAFAFB
                52D3BD46EBCF54F2D953F1D853F1D953F2DA53F3DB52F2DC58F5E04CE1CACCBA
                BDC0C0C0C0C0C0000000C0C0C0C0C0C0C7BCBF7BDCC25AF1C861EEC960EECA60
                EECB60EFCC60EFCC60EFCD60EFCE60F0CF60F0D060F0D160F1D260F1D260F1D4
                60F2D45CF1D469DDC7FFFFFFFFFFFFFFFFFFF9FBFA5DD5C054EDD361F5DD60F4
                DD60F4DD60F4DE60F5DF60F5DF5EF5DF65FBE68FD4C9C5BDBEC0C0C0C0C0C000
                0000C0C0C0C0C0C0BFBEBEDBCFD331E5B673F3D36DF1D06DF1D06DF2D26DF2D2
                6DF2D36DF2D46DF3D56DF3D66DF3D66DF4D76DF4D86DF4D96DF4DA6EF6DC5CE5
                CCAFE6DBFFFFFFF6FAF969D8C561EFD86EF7E16DF6E06DF6E06DF6E16DF6E26D
                F7E26DF7E373F9E74BEFD8D8C2C5BFBFBFC0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C6BABD7FDAC570F9D67CF4D77AF5D77AF4D87AF4D87AF6D97AF5DA7AF5
                DA7AF5DC7AF5DC7AF6DD7AF6DD7AF6DE7AF6DF7AF7DF7AF7E167E8D07CE1D06B
                E0CD71F2DC7BF9E47AF7E37AF8E47AF8E47AF8E67AF8E67AF8E679F9E77DFCEC
                90CFC6C4BCBDC0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0BFBFBFD9C1
                C737DCB491FCE288F7DC88F7DD88F7DE88F7DF88F8DF88F8E088F8E188F8E188
                F8E288F8E288F8E388F9E388F9E488F9E488FAE685F9E587FAE788FAE888F9E7
                88F9E888FAE888FAE988FAE988FAE986FAEA99FFF25FDFCDDEC5C9BEBEBEC0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C1BEBFBDC3C24AF2C9A0
                FCE794F9E294F9E394F9E394F9E494F9E494F9E494F9E594FAE594FAE694FAE6
                94F9E794FAE894FAE894FAE994FBE994FBEA94FBEA94FBEA94FBEB94FBEB94FB
                EC94FBEC93FBEDA4FFF44FEDD8D3CFD0BEBCBDC0C0C0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C4BCBEB5D2CB54F0CBACFFECA0FBE7
                A0FBE7A0FBE8A0FBE9A0FBE8A0FBEAA0FBE9A0FBEAA0FBEAA0FBEBA0FCEBA0FC
                EBA0FCECA0FCECA0FCECA0FBEDA0FBEDA0FBEEA0FCEEA0FCEE9FFCEFB1FFF558
                E7D6B4C2BEC2BCBDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C5BABDB3D3CB5CF5D3B7FFF1ACFCEBAAFCEBAAFC
                EBAAFCECAAFBECAAFCEDAAFCEDAAFCEDAAFCEEAAFCEEAAFCEFAAFCEFAAFCEFAA
                FCEFAAFCF0AAFDF0AAFDF1AAFDF1ADFDF2BCFFF850F6E0C7CFCDC3BCBDC0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C3BABCCAD5D45EEACCB7FFF4BCFFF1B5FDEEB5FDEFB5FDEFB5
                FDF0B5FDF0B5FDF0B5FDF0B5FDF1B5FDF1B5FDF1B5FDF2B5FDF2B5FDF1B5FEF2
                B5FEF3C1FFF6B1FFF852E6D0CBCBCCC1BBBCC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0BCBDD2C0C479CCBC87F9E4C5FFF6C6FFF4C1FDF2BDFDF2BDFDF2BEFDF2
                BEFDF3BEFDF3BEFDF3BEFDF3BDFDF4BDFDF4C2FDF5CAFFF8C9FFFC6DFAE67DD0
                C3DFC7CBBFBCBDC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBF
                C6BBBDCECFCF90E7D775F5DEB1FFF6D3FFF9CFFFF7CFFFF7D0FFF7D0FFF7D0FF
                F8D0FFF8D1FFF9DAFFFD9AFFF562EDDB6ED5C5CBC0C2C6BCBEBEBEBEC0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBDBEC3BA
                BBD8C3C79BCDC382EBD880FCE76AF9E162FBE26AFFE962FAE267F2DE79F3E15D
                D7C3B1D1CBD8BFC3C6BCBDC0BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBFBEC3BDBEC5
                BBBCC6B9BBC8B9BBC9B9BBC8B8BBC9B9BBC8BABCC7BABCC8BCBEC2BDBEBEBFBF
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000}
              TabOrder = 1
              OnClick = btnGoLechClick
            end
          end
        end
        object GroupBox3: TGroupBox
          Left = 457
          Top = 97
          Width = 502
          Height = 456
          Align = alClient
          Caption = #1059#1078#1077' '#1076#1086#1073#1072#1074#1083#1077#1085#1099
          TabOrder = 2
          object Panel2: TPanel
            Left = 2
            Top = 22
            Width = 498
            Height = 59
            Align = alTop
            TabOrder = 0
            object btnDelRecord: TBitBtn
              Left = 13
              Top = 5
              Width = 49
              Height = 49
              Glyph.Data = {
                7E120000424D7E12000000000000360000002800000027000000270000000100
                18000000000048120000130B0000130B00000000000000000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFC0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFC0BFBFBFC1C1C1C7
                C7C3CDCDC5D2D2C7D6D6C7D6D6C5D6D6C7D2D2C6CCCCC4C6C6C2C0C0C1BFBFBF
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0BFBFBFBFBFC0C7C7C3DADACBC4C4B48686A36161994B4B95
                3C3C973A3A9C34349546469763639B9595A9D4D4BBD9D9CAC5C5C2BFBFBFBFBF
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBF
                C7C7C4DBDBC78585A04141900A0A8E17179607078F00008800008800008A0000
                8C00008F00009200009300008A2F2F8B9E9EACE0E0C8C4C4C2BFBFBFC0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DADAC989899F2B2B921F1F
                9A00008A00008800008900008B00008E00008F00009100009200009300009400
                009600009800009A0000961A1A94ACACADD7D7C7BFBFC0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0BFBFBFC3C3C2CDCDBD46468E24249E01018A00008800008C00008D00
                008F00009000009100009300009400009500009700009800009A00009B00009D
                00009E0000A000009D4F4F97DCDCC3C1C1C1BFBFC0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFC7C7C5C0
                C0B92B2B9319199900008900008D00008F000090000092000093000094000095
                00009600009800009900009B00009C00009D0000A00000A00000A20000A30000
                A50000A624249BD5D5BDC4C4C2BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0C0C0C0BFBFC0C5C5C3B5B5AA2F2F9409099500008D
                00009000009200009300009400009500009700009800009900009A00009C0000
                9E00009E0000A00000A10000A30000A50000A60000A80000A90000AB0000AF07
                0796CACAB4C2C2C2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C0C0C0C1C1C1C8C8BA30309C0808980000900000940000950000960000
                9700009800009A00009B00009D00009D00009F0000A10000A10000A30000A400
                00A60000A70000A80000AA0000AB0000AD0000AE0000B00000B52222A6DADABD
                BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0BFBFBFDDDD
                C84141961616A100009400009700009800009900009B00009C00009E00009E00
                00A00000A10000A30000A30000A50000A60000A80000A80000AA0000AB0000AE
                0000AF0000B00000B10000B30000B40000B60000B945459CDADAC6BFBFBFC0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0BFBFBFCBCBC47C7C9D2121AC00009600
                009B00009C00009D00009F00009F0000980000990000A30000A40000A50000A6
                0000A80000A90000AA0000AB0000AC0000AE0000B00000A90000AB0000B40000
                B60000B70000B80000B90000BB0000BCA4A4A9C6C6C2BFBFC0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0D6D6C02424A400009E00009E0000A00000A10000A2
                0000A30000926666BB6C6CBC0000920000A90000AB0000AB0000AC0000AE0000
                AF0000B00000B20000B300009F6C6CC36666C30000A60000BA0000BB0000BC00
                00BD0000BF0000C21C1CB4DADABBBFBFC0C0C0C0C0C0C0000000C0C0C0BFBFBF
                CACAC37171A21D1DB10000A10000A30000A40000A50000A70000A06161BBFFFF
                FFFFFFFF9A9ACC0000950000AF0000B00000B10000B20000B30000B50000B600
                009F9A9AD1FFFFFFFFFFFF6161C50000B70000BF0000C00000C10000C20000C4
                0000C69A9AADC6C6C1BFBFC0C0C0C0000000C0C0C0BFBFC0DDDDC42929A10000
                A70000A70000A90000AA0000AB0000AC0000A65858B9FFFFFFFFFFFFFFFFFF9A
                9ACF00009B0000B50000B60000B70000B80000B90000A29A9AD2FFFFFFFFFFFF
                FFFFFF5858C30000BB0000C30000C40000C50000C70000C70000CC2B2BAFDADA
                C3BFBFBFC0C0C0000000C0C0C0C4C4C2A9A9A91212B70000AA0000AC0000AD00
                00AE0000AF0000B00000B200009E7F7FC6FFFFFFFFFFFFFFFFFF9B9BD10000A1
                0000BA0000BC0000BD0000A59A9AD3FFFFFFFFFFFFFFFFFF7F7FCD0000B10000
                C60000C70000C80000C90000CA0000CB0000CD0000CBD4D4B4C0C0C0C0C0C000
                0000BFBFBFCACAC26D6DAA1414BA0000B00000B20000B30000B30000B40000B6
                0000B60000B80000A28080C8FFFFFFFFFFFFFFFFFF9A9AD30000A70000C00000
                AA9999D4FFFFFFFFFFFFFFFFFF8080CE0000B20000C90000CA0000CB0000CC00
                00CD0000CE0000CF0000D00000D69797B8C6C6C0C0C0C0000000BFBFBFD2D2C3
                5050AE0000B70000B60000B60000B80000B80000BA0000BA0000BC0000BC0000
                BF0000A88080CBFFFFFFFFFFFFFFFFFF9999D60000999999D6FFFFFFFFFFFFFF
                FFFF8080D00000B50000CD0000CD0000CE0000CF0000CF0000D00000D10000D2
                0000D30000D96060B6CCCCC1BFBFBF000000BFBFBFD9D9C22D2DB30000BB0000
                BB0000BC0000BD0000BD0000BF0000BF0000C00000C10000C20000C50000AE7F
                7FCDFFFFFFFFFFFFFFFFFFDADAECFFFFFFFFFFFFFFFFFF7F7FD10000B80000CF
                0000D00000D10000D10000D20000D30000D40000D50000D60000D70000DA4040
                C0D3D3C0BFBFBF000000BEBEBFDEDEC01616B90101C10000C00000C00000C100
                00C20000C30000C40000C50000C50000C60000C80000C90000B37F7FD1FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF7F7FD30000BB0000D30000D20000D40101D40202
                D50303D70303D80202D80101D90101D90000DA0000DC3737D1D6D6BDBFBFC000
                0000BFBFC0DCDCBF1818C50B0BC80E0EC80606C60000C50000C60000C70000C9
                0000C90000CA0000CA0000CB0000CD0000CF0000A4CECEEAFFFFFFFFFFFFFFFF
                FFCFCFE90000AA0000D60707D70D0DD80F0FD90F0FDB0F0FDB0F0FDC0F0FDC0F
                0FDD1010DE0F0FDF0E0EDE0202E03B3BDAD5D5BBBFBFC0000000BEBEC0DDDDBF
                1616C51515CE1818CD1919CF1717CF0C0CCD0202CC0000CC0000CD0000CE0000
                CE0000D00000D10000BA9898DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9CDE00
                00C61919DD1818DE1818DD1717DF1717DF1717E01717E01717E11717E11717E2
                1818E21111E54343DAD4D4BBBFBFC0000000BFBFBFDBDBC02020BE1F1FD72222
                D42222D52222D52424D72323D71E1ED71616D50C0CD50606D40303D50000BE99
                99DBFFFFFFFFFFFFFFFFFFC3C3E8FFFFFFFFFFFFFFFFFF9D9DDF0505CA2222E2
                2222E32222E22222E42222E42222E42222E52222E62222E62222E71D1DEB4646
                C9D3D3BFBFBFBF000000BFBFBFD4D4C03E3EBE2B2BDE2D2DDA2D2DDA2D2DDB2D
                2DDC2D2DDC2E2EDD2F2FDE3131DF3131E01313C9A2A2DFFFFFFFFFFFFFFFFFFF
                8C8CDB0000BB8C8CDCFFFFFFFFFFFFFFFFFFA2A2E11010CF2D2DE72D2DE72D2D
                E72D2DE82D2DE82D2DE92D2DE92D2DEA2B2BE93636F15959C4CDCDBEBFBFC000
                0000BFBFC0CBCBC06262B83939E53838E03939E03939E13939E13939E13939E2
                3939E33939E41D1DCDA5A5E1FFFFFFFFFFFFFFFFFF9090DC1D1DD23939E91D1D
                D39090DDFFFFFFFFFFFFFFFFFFA5A5E31D1DD43939EC3939EC3939EB3939ED39
                39EB3939ED3939EE3737ED4141F67F7FBDC7C7BFC0C0C0000000C0C0C0C4C4C0
                A2A2B12929EC4747E54646E54646E54646E64646E74646E84646E92E2ED4A9A9
                E1FFFFFFFFFFFFFFFFFF9797DE2A2AD74646EC4646EC4646ED2A2AD89797DFFF
                FFFFFFFFFFFFFFFFA9A9E42E2EDA4646EF4646EF4646F04646EF4646F04646F0
                4646F02A2AF6C2C2ADC1C1C1C0C0C0000000C0C0C0BFBFC0DCDCB91616CF5858
                ED5353EA5353EA5353EB5353EA5353EB4848E68D8DDFFFFFFFFFFFFFFFFFFF9B
                9BDF3737D95353EE5353EF5353EE5353EF5353F03737DB9C9CE0FFFFFFFFFFFF
                FFFFFF8D8DE14848EC5353F25353F15353F25353F35252F25959F73C3CD2D9D9
                BEBFBFC0C0C0C0000000C0C0C0BFBFBFCCCCC05F5FBA5D5DF66161EE6060EE60
                60EE6060EF6161F05656EB8F8FE0FFFFFFFFFFFFA1A1DF4444DD6161F26060F1
                6060F26060F26060F16060F26161F44444DFA1A1E1FFFFFFFFFFFF8F8FE25656
                EF6161F56060F46060F56060F55E5EF56868FE7C7CBDC7C7BFBFBFC0C0C0C000
                0000C0C0C0C0C0C0C1C1C0C8C8B53131E87373F36D6DF16D6DF16D6DF26D6DF2
                6E6EF35959E29191E28E8EE05757E16E6EF56D6DF46D6DF46D6DF46D6DF46D6D
                F46D6DF56D6DF56E6EF65757E48E8EE29191E25959E76E6EF66D6DF76D6DF66D
                6DF76D6DF77474FA4444E9D6D6B7BFBFC0C0C0C0C0C0C0000000C0C0C0C0C0C0
                BFBFBFCECEC16060B67474FD7C7CF47A7AF57A7AF47A7AF47A7AF67A7AF77272
                F17272F27B7BF77A7AF77A7AF67A7AF67A7AF67A7AF67A7AF67A7AF77A7AF77A
                7AF87B7BF87272F47272F47A7AFA7A7AF97A7AF87A7AF87A7AF87979F98080FF
                7E7EB7C8C8C0BFBFC0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0BFBFC0D7D7
                B83333D79292FD8888F78888F78888F78888F78888F88888F88888F88888F888
                88F88888F88888F88888F98888F98888F98888F88888F98888F98888F98888FA
                8888FA8888FA8888FA8888FA8888FA8686FA9B9BFF4E4ED0D6D6B9BFBFC0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C3C3C1AFAFAE4646F1A1
                A1FD9494F99494F99494F99494F99494F99494F99494F99494FA9494FA9494FA
                9494F99494FA9494FA9494FA9494FB9494FB9494FB9494FB9494FB9494FB9494
                FB9494FB9393FBA6A6FF4F4FE7C3C3B3C1C1C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFCACAC19999B25353F4AEAEFFA0A0FB
                A0A0FBA0A0FBA0A0FBA0A0FBA0A0FBA0A0FBA0A0FBA0A0FBA0A0FBA0A0FCA0A0
                FCA0A0FCA0A0FCA0A0FCA0A0FBA0A0FBA0A0FBA0A0FCA0A0FC9F9FFCB2B2FF53
                53E5AAAAAEC5C5C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0BFBFBFCDCDC19696B35A5AF5B9B9FFACACFCAAAAFCAAAA
                FCAAAAFCAAAAFBAAAAFCAAAAFCAAAAFCAAAAFCAAAAFCAAAAFCAAAAFCAAAAFCAA
                AAFCAAAAFCAAAAFDAAAAFDAAAAFDADADFDBEBEFF4C4CEDAAAAABC8C8C2BFBFBF
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0BFBFBFCACAC0AAAAAE5656DFBABAFFBCBCFFB5B5FDB5B5FDB5B5FDB5
                B5FDB5B5FDB5B5FDB5B5FDB5B5FDB5B5FDB5B5FDB5B5FDB5B5FDB5B5FDB5B5FE
                B5B5FEC1C1FFB3B3FF4444D8BFBFB2C6C6C1BFBFBFC0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BF
                BFC0C3C3C1CCCCB57676BF8686F8C8C8FFC7C7FFC1C1FDBDBDFDBDBDFDBEBEFD
                BEBEFDBEBEFDBEBEFDBDBDFDBDBDFDBDBDFDC2C2FDCACAFFCBCBFF6969F57171
                BAD8D8BAC1C1C0BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                CBCBBFB8B8B47373C47272F1B4B4FFD5D5FFD1D1FFD1D1FFD1D1FFD0D0FFD1D1
                FFD1D1FFD3D3FFDBDBFF9D9DFF5C5CE56666C3C9C9B6C9C9BFBFBFC0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFC0C1C1C0C9C9
                BED1D1B68E8EB86464CA6565E15F5FEC5F5FF76666FC5E5EF65D5DE55D5DD75D
                5DCC9B9BB6D4D4B4C9C9BFC0C0C0BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFC0BFBFC0C4C4BFC8
                C8BECDCDBAD2D2B8D3D3B6D1D1B5D3D3B6D2D2B9CDCDBCC9C9BEC3C3C0BFBFC0
                BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFC0BFBFC0BFBFC0
                BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0BFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
                0000}
              TabOrder = 0
              OnClick = btnDelRecordClick
            end
          end
          object lwAddedTeeth: TListView
            Left = 2
            Top = 81
            Width = 498
            Height = 373
            Align = alClient
            Columns = <>
            GridLines = True
            ReadOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ViewStyle = vsSmallIcon
            OnDblClick = lwAddedTeethDblClick
            OnInfoTip = lwAddedTeethInfoTip
          end
        end
      end
      object sheetCorrect: TTabSheet
        Caption = #1057#1082#1086#1088#1088#1077#1082#1090#1080#1088#1091#1081#1090#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1087#1077#1088#1077#1076' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084
        ImageIndex = 3
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
          Width = 959
          Height = 473
          Align = alTop
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1088#1080#1077#1084#1072':'
          TabOrder = 0
          ExplicitWidth = 955
          DesignSize = (
            959
            473)
          object memPriemDesc: TMemo
            Left = 2
            Top = 22
            Width = 919
            Height = 419
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            ExplicitWidth = 915
          end
          object chkSanus: TCheckBox
            Left = 16
            Top = 448
            Width = 129
            Height = 17
            Caption = #1057#1072#1085#1080#1088#1086#1074#1072#1085
            TabOrder = 1
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 473
          Width = 959
          Height = 80
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 955
          ExplicitHeight = 79
          object Label3: TLabel
            Left = 8
            Top = 15
            Width = 380
            Height = 20
            Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1080' '#1085#1072#1078#1084#1080#1090#1077' "'#1047#1072#1074#1077#1088#1096#1080#1090#1100'"'
            WordWrap = True
          end
          object cbActions: TComboBox
            Left = 16
            Top = 49
            Width = 513
            Height = 28
            Style = csDropDownList
            DropDownCount = 4
            ItemIndex = 0
            TabOrder = 0
            Text = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            Items.Strings = (
              #1057#1086#1093#1088#1072#1085#1080#1090#1100
              #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1082#1072#1082' '#1086#1073#1099#1095#1085#1099#1081' '#1087#1088#1080#1077#1084' '#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1100' '
              #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1082#1072#1082' '#1087#1077#1088#1074#1099#1081' '#1087#1088#1080#1077#1084' '#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1100' '
              #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1082#1072#1082' '#1074#1090#1086#1088#1086#1081' '#1087#1088#1080#1077#1084'('#1089' '#1096#1072#1087#1082#1086#1081') '#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1100' ')
          end
        end
      end
    end
  end
  object pnlControl: TPanel
    Left = 0
    Top = 590
    Width = 969
    Height = 38
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 589
    ExplicitWidth = 965
    DesignSize = (
      969
      38)
    object btnNext: TButton
      Left = 715
      Top = 5
      Width = 110
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1044#1072#1083#1077#1077' >>'
      TabOrder = 0
      OnClick = btnNextClick
      ExplicitLeft = 711
    end
    object btnClose: TButton
      Left = 844
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 1
      OnClick = btnCloseClick
      ExplicitLeft = 840
    end
    object btnPrev: TButton
      Left = 587
      Top = 5
      Width = 116
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '<< '#1053#1072#1079#1072#1076
      TabOrder = 2
      OnClick = btnPrevClick
      ExplicitLeft = 583
    end
  end
end
