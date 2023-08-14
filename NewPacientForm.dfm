object NewPacientFrm: TNewPacientFrm
  Left = 205
  Top = 50
  Caption = #1053#1086#1074#1099#1081' '#1087#1072#1094#1080#1077#1085#1090
  ClientHeight = 544
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 20
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 544
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 786
    ExplicitHeight = 543
    object Panel3: TPanel
      Left = 425
      Top = 1
      Width = 364
      Height = 542
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 360
      ExplicitHeight = 541
      object GroupBox7: TGroupBox
        Left = 1
        Top = 1
        Width = 362
        Height = 192
        Align = alTop
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 358
        object Label4: TLabel
          Left = 16
          Top = 32
          Width = 85
          Height = 20
          Caption = #1044#1086#1084#1072#1096#1085#1080#1081':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 72
          Width = 68
          Height = 20
          Caption = #1056#1072#1073#1086#1095#1080#1081':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 112
          Width = 92
          Height = 20
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 152
          Width = 57
          Height = 20
          Caption = #1044#1088#1091#1075#1086#1081':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtHomeNum: TEdit
          Left = 128
          Top = 24
          Width = 201
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtHomeNumKeyPress
        end
        object edtWorkNum: TEdit
          Left = 128
          Top = 64
          Width = 201
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = edtWorkNumKeyPress
        end
        object edtMobileNum: TEdit
          Left = 128
          Top = 104
          Width = 201
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = edtMobileNumKeyPress
        end
        object edtOtherNum: TEdit
          Left = 128
          Top = 144
          Width = 201
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = edtOtherNumKeyPress
        end
      end
      object GroupBox8: TGroupBox
        Left = 1
        Top = 193
        Width = 362
        Height = 120
        Align = alTop
        Caption = #1057#1074#1077#1076#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 358
        object chkAllergy: TCheckBox
          Left = 8
          Top = 24
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = #1040#1083#1083#1077#1088#1075#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = chkAllergyKeyPress
        end
        object chkGepatit: TCheckBox
          Left = 232
          Top = 24
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = #1043#1077#1087#1072#1090#1080#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = chkGepatitKeyPress
        end
        object chkDolzhn: TCheckBox
          Left = 8
          Top = 56
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = #1044#1086#1083#1078#1085#1080#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = chkDolzhnKeyPress
        end
        object chkOther: TCheckBox
          Left = 232
          Top = 56
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = #1055#1088#1086#1095#1077#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = chkOtherKeyPress
        end
        object chkOthCities: TCheckBox
          Left = 192
          Top = 88
          Width = 137
          Height = 17
          Alignment = taLeftJustify
          Caption = #1048#1085#1086#1075#1086#1088#1086#1076#1085#1080#1081
          TabOrder = 4
        end
      end
      object GroupBox9: TGroupBox
        Left = 1
        Top = 313
        Width = 362
        Height = 80
        Align = alTop
        Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1082#1072#1088#1090#1099
        TabOrder = 2
        ExplicitWidth = 358
        object dateOpen: TDateTimePicker
          Left = 24
          Top = 32
          Width = 186
          Height = 28
          Date = 39613.000000000000000000
          Time = 0.006979409721679986
          TabOrder = 0
          OnKeyPress = dateOpenKeyPress
        end
      end
      object DBEdit1: TDBEdit
        Left = 232
        Top = 345
        Width = 121
        Height = 28
        DataField = 'Expr1000'
        DataSource = mainDataModule.dsMaxNumFam
        TabOrder = 3
        Visible = False
      end
      object btnSave: TBitBtn
        Left = 4
        Top = 488
        Width = 181
        Height = 33
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          20000000000000090000C40E0000C40E00000000000000000000000000000000
          0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000006E6B
          63FF534B30FF544B31FF574E31FF5B5235FF62583BFF625A3CFF635A3EFF6960
          42FF6A6144FF6B6245FF6C6346FF6F6647FF6F6546FF6E6445FF706543FF6F64
          42FF6D6240FF6D623FFF6D623FFF59513AFF040404FF000000FF000000008B7F
          5CFFE2B321FFE0B321FFF1BE1BFFF4C11EFFF6C323FFF7C627FFF8C72CFFFACA
          31FFFBCC35FFFCCD39FFFCCE3BFFFCCE39FFFBCC36FFFACB32FFF9C82CFFF8C6
          27FFEABC2CFFE9BD31FFDDB638FFB89B3FFF0A0A09FF000000FF000000008D80
          59FFECB914FFEAB711FFFAC10BFFFDD864FFFDE28DFFFDE391FFFDE495FFFDE5
          99FFFDE69DFFFDE7A0FFFDE7A1FFFDE7A0FFFDE69FFFFDE59BFFFCE293FFF8CC
          40FFE8BB2AFFB89937FF665A38FFB99A3DFF0B0B0AFF000000FF000000008D80
          58FFE9B715FFE5B418FFEDBF30FFC7C4EAFFC0C0FAFFBFBFFAFFBBBBFAFFB7B7
          F9FFB6B6F9FFB6B6F9FFB7B7F9FFB6B6F9FFB7B7F9FFB8B8FAFFBCBCFAFFCABC
          BBFFD9BA55FFB49D53FF756B48FFB29843FF0B0B0BFF000000FF000000008A7E
          59FFD7AC22FFCFA831FFD7B653FFE2E0F1FFE1E1FDFFDFDFFCFFDDDDFCFFDCDC
          FDFFDBDBFCFFD9D9FCFFD5D5FBFFD1D1FBFFCECEFCFFCCCCFBFFCACAFBFFCFC8
          CFFFC7B479FFC8B26DFFC5AC5CFFA7914DFF0C0C0BFF000000FF000000008379
          5BFFBA9934FFB39947FFC2AB69FFEAE8F3FFEDEDFEFFEDEDFEFFEDEDFEFFEDED
          FEFFEDEDFEFFECECFEFFECECFEFFECECFEFFECECFEFFECECFEFFECECFEFFDED9
          D2FFBCAD7CFFBCAA70FFB9A360FF9C8A50FF0C0C0CFF000000FF000000007D75
          5BFFA68B38FFA48D49FFB5A267FFDCDBF2FFE1E1FCFFE4E4FDFFE6E6FDFFE6E6
          FDFFE7E7FDFFE7E7FDFFE9E9FDFFEBEBFDFFECECFDFFEBEBFEFFEBEBFEFFDAD4
          CCFFB6A571FFB5A266FFB19C58FF96844BFF0D0C0CFF000000FF000000007C73
          59FF9E8431FF9D8742FFAB975DFFB9B8EFFFB9B9FAFFB9B9FAFFB9B9FAFFB9B9
          FAFFB9B9FAFFB9B9FAFFB9B9FAFFB0B0F9FFA4A4F8FFA4A4F8FFA4A4F8FFB4AD
          C6FFAF9D64FFAF9B58FFAB954CFF938043FF0D0D0CFF000000FF000000007A72
          57FF9A7F29FF99823AFFB29D5CFFFAF8F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFADADF9FF6767F4FF7878F4FF6868F3FFBCB4
          BEFFA99557FFAA934BFFA68D40FF907B3AFF0D0D0CFF000000FF000000007970
          53FF987C24FFAC995DFFC2B27EFFE8E2CEFFF1EEE2FFF2EEE2FFF2EEE2FFF2ED
          E1FFF1EDE1FFF0EDE0FFF0EBDEFFDBD7D9FFC3BED4FFC5C0D3FFC1BBD0FFB7A5
          78FFA28D49FFA38B3FFFA08634FF8D7631FF0D0D0CFF000000FF000000007C73
          57FFB7A264FFC3B589FFC7B889FFC8BA8BFFC9BA8CFFC9BA8BFFC8B98AFFC6B7
          86FFC4B482FFC1B17CFFBEAC75FFB9A66AFFAE9954FFAB944BFFA89146FFA58D
          40FF9D863DFF9D8332FF9B7F29FF897229FF0E0D0CFF000000FF000000008C87
          76FFCCBE91FFCBBF99FFCEC197FFCEC197FFCEC096FFCDBF94FFCBBD90FFC9BA
          8BFFC6B684FFC2B17DFFBEAC74FFB8A569FFB29D5AFFA58C3EFFA18737FF9F84
          32FF977F31FF987C26FF96791FFF866E21FF0F0E0DFF000000FF00000000918D
          7FFFD4C9A3FFD3C9A9FFD5CAA6FFD5C9A5FFD4C8A3FFD2C6A0FFD3C8A4FFD1C5
          9FFFCEC197FFC9BB90FFC5B688FFC0B07DFFBBA972FFB19D5DFFA69049FFA289
          3DFF927827FF93761CFF917315FF846B1BFF0F0F0DFF000000FF000000009591
          85FFDCD3B6FFDCD3BAFFDCD3B6FFDCD2B4FFDAD0B0FFDBD2B5FFEFEEEBFFEFEE
          ECFFEDECEAFFEBEBE9FFEAEAE8FFE8E7E5FFD8D2BEFFD1C9B0FFCAC1A6FFD5D1
          C5FF967E32FF8F7113FF8E6F0EFF836918FF100F0DFF000000FF000000009895
          8CFFE4DDC7FFE4DDC9FFE4DDC6FFE3DBC3FFE0D8BEFFE2DAC2FFF3F3F3FFF3F3
          F3FFF1F1F1FFEFEFEFFFEEEEEEFFEBEBEBFFC0B07EFFAE9853FFA38B3FFFD5D2
          C7FF957E33FF8C6E0EFF8D6E0CFF846918FF100F0DFF000000FF000000009B99
          92FFEBE5D5FFEAE6D6FFEBE5D4FFE9E4D1FFE7E1CCFFE7E1CEFFF5F5F4FFF5F5
          F5FFF3F3F3FFF1F1F1FFEFEFEFFFEDEDEDFFC4B586FFB19C59FFAB954FFFD4D0
          C4FF957C31FF8C6E0EFF8D6E0CFF846A17FF11100DFF000000FF000000009E9C
          97FFF1EDE1FFF0EDE2FFF1ECE0FFEFEBDDFFEDE8D9FFEDE8D9FFF7F7F7FFF6F6
          F6FFF5F5F5FFF3F3F3FFF1F1F1FFEFEFEFFFC9BC91FFB7A264FFB19D5CFFD3CF
          C2FF947B2FFF8C6E0EFF8D6E0CFF846A17FF11100DFF000000FF00000000A1A0
          9CFFF5F3EAFFF5F3ECFFF5F2EAFFF4F1E7FFF2EEE3FFF1EDE2FFF9F9F8FFF7F7
          F7FFF5F5F5FFF4F4F4FFF2F2F2FFF0F0F0FFCEC29CFFBBA86EFFB5A165FFD3CE
          C0FF937A2DFF8C6E0EFF8D6E0CFF846A17FF11100DFF000000FF00000000A3A2
          9FFFF9F7F2FFF9F7F3FFF9F7F1FFF7F5EFFFF6F3EBFFF4F2E9FFF2F2F1FFE4E5
          E5FFDEDFDFFFD5D5D5FFCECECEFFE9E9E9FFD2C7A4FFBFAE78FFB6A367FFD1CC
          BCFF92792AFF8C6E0EFF8D6E0CFF856A17FF11100DFF000000FF00000000A5A4
          A2FFFBFAF7FFFBFBF8FFFBFAF7FFFAF9F5FFF9F7F2FFF7F5EFFFF5F5F5FFE9E9
          E9FFE3E3E3FFDADADAFFD0D1D1FFE9E9E9FFD7CCADFFC3B37FFFB19D5DFFCFCA
          B8FF917827FF8C6E0EFF8D6E0CFF856A17FF12100DFF000000FF00000000A5A5
          A4FFFDFDFBFFEFEEECFFDDDDDBFFF7F6F3FFFBFAF6FFFAF8F3FFFCFCFBFFFBFB
          FBFFFAFAFAFFF8F8F8FFF6F6F6FFF4F4F4FFE0D9C4FFD1C6A2FFB5A46DFFD0CB
          BBFF8E762BFF8C6E0EFF8C6E0EFF6A5B2AFF0C0B0BFF00000000000000009898
          97FFD8D8D7FF9B9A98FF6E6E6EFFB3B2B0FFC8C7C6FFB8B7B4FFD7D7D7FFBDBD
          BBFFA9A9A8FFD2D2D2FFD1D1D1FFCECECEFFCCCCCBFFC8C7C5FFBBBAB4FFB4B1
          A8FF7B7561FF826E2BFF796E49FF636260FF0000000000000000000000006F6F
          6FFF6F6F6FFF6F6F6FFF000000006F6F6FFF6F6F6FFF707070FF757575FF7070
          70FF6F6F6FFF727272FF707070FF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF6F6F6FFF6F6F6FFF000000000000000000000000}
        TabOrder = 4
        OnClick = btnSaveClick
      end
      object btnCancel: TBitBtn
        Left = 204
        Top = 488
        Width = 121
        Height = 33
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        TabOrder = 5
        OnClick = btnCancelClick
      end
      object GroupBox6: TGroupBox
        Left = 1
        Top = 393
        Width = 362
        Height = 72
        Align = alTop
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        ExplicitWidth = 358
        object edtRemarks: TEdit
          Left = 16
          Top = 24
          Width = 353
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtRemarksKeyPress
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 424
      Height = 542
      Align = alLeft
      TabOrder = 1
      ExplicitHeight = 541
      object GroupBox4: TGroupBox
        Left = 1
        Top = 193
        Width = 422
        Height = 64
        Align = alTop
        Caption = #1040#1076#1088#1077#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object edtAdress: TEdit
          Left = 16
          Top = 24
          Width = 353
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtAdressKeyPress
        end
      end
      object GroupBox5: TGroupBox
        Left = 1
        Top = 257
        Width = 422
        Height = 64
        Align = alTop
        Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object edtProfession: TEdit
          Left = 16
          Top = 24
          Width = 353
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtProfessionKeyPress
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 117
        Width = 422
        Height = 76
        Align = alTop
        TabOrder = 3
        object GroupBox2: TGroupBox
          Left = 1
          Top = 1
          Width = 313
          Height = 74
          Align = alClient
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object dateBirth: TDateTimePicker
            Left = 16
            Top = 32
            Width = 186
            Height = 28
            Date = 22082.000000000000000000
            Time = 0.991508206021535500
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = dateBirthKeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 314
          Top = 1
          Width = 107
          Height = 74
          Align = alRight
          Caption = #1055#1086#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object cbSex: TComboBox
            Left = 16
            Top = 24
            Width = 73
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = #1046
            OnKeyPress = cbSexKeyPress
            Items.Strings = (
              #1046
              #1052)
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 422
        Height = 116
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 22
          Width = 76
          Height = 20
          Caption = #1060#1072#1084#1080#1083#1080#1103':'
        end
        object Label2: TLabel
          Left = 8
          Top = 52
          Width = 35
          Height = 20
          Caption = #1048#1084#1103':'
        end
        object Label3: TLabel
          Left = 8
          Top = 82
          Width = 78
          Height = 20
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
        end
        object edtSurname: TEdit
          Left = 112
          Top = 16
          Width = 265
          Height = 28
          TabOrder = 0
          OnKeyPress = edtSurnameKeyPress
        end
        object edtname: TEdit
          Left = 112
          Top = 48
          Width = 265
          Height = 28
          TabOrder = 1
          OnKeyPress = edtnameKeyPress
        end
        object edtPatronymic: TEdit
          Left = 112
          Top = 80
          Width = 265
          Height = 28
          TabOrder = 2
          OnKeyPress = edtPatronymicKeyPress
        end
      end
      object GroupBox10: TGroupBox
        Left = 1
        Top = 321
        Width = 422
        Height = 72
        Align = alTop
        Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103'/'#1044#1086#1083#1078#1085#1086#1089#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object edtDolzhn: TEdit
          Left = 16
          Top = 32
          Width = 353
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtDolzhnKeyPress
        end
      end
      object GroupBox11: TGroupBox
        Left = 1
        Top = 393
        Width = 422
        Height = 148
        Align = alClient
        Caption = #1055#1077#1088#1077#1085#1077#1089#1077#1085#1085#1099#1077' '#1080' '#1089#1086#1087#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077' '#1079#1072#1073#1086#1083#1077#1074#1072#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        ExplicitHeight = 147
        object cbPsz: TComboBox
          Left = 29
          Top = 27
          Width = 265
          Height = 28
          Style = csDropDownList
          TabOrder = 0
        end
        object btnAddPsz: TButton
          Left = 301
          Top = 28
          Width = 25
          Height = 25
          Caption = '+'
          TabOrder = 1
          OnClick = btnAddPszClick
        end
        object memPsz: TMemo
          Left = 29
          Top = 62
          Width = 260
          Height = 75
          ScrollBars = ssVertical
          TabOrder = 2
        end
      end
    end
  end
end
