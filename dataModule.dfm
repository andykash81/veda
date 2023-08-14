object mainDataModule: TmainDataModule
  OnCreate = DataModuleCreate
  Height = 1382
  Width = 1133
  object mainConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\ve' +
      'da\db333.mdb;Mode=Share Deny None;Persist Security Info=False;Je' +
      't OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:' +
      'Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database ' +
      'Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glo' +
      'bal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet O' +
      'LEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fal' +
      'se;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compac' +
      't Without Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 8
  end
  object dataSetPacientList: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Num_fam2, Surname, Name, Sec_Name, Date_birth, Adress,  D' +
      'ate_open, ph1, ph2 , Sex,  ph3 ,ph4,  Place_work_dolzhn, Profess' +
      'ion_pl_w, Svedenia  from Kartochka where  (Kartochka.Name like :' +
      'nam or Name is null) and (Kartochka.Sec_Name like :secName or Se' +
      'c_Name is null) and Sex like :sex and (Adress like :address or A' +
      'dress is null) and (Profession_pl_w like :profession or  Profess' +
      'ion_pl_w is null)  and   Num_fam2 like :cardCode and Kartochka.S' +
      'urname like :surn and (Place_work_dolzhn like :dolzhn  or Place_' +
      'work_dolzhn is null) and (ph1 like :ph or ph2 like :ph or ph3 li' +
      'ke :ph or ph4 like :ph) and Date_open>:dateOpenFrom and Date_ope' +
      'n<:dateOpenTo and Date_birth< :birthDayTo and Date_birth> :birth' +
      'DayFrom order by Surname;'
    Parameters = <
      item
        Name = 'nam'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'secName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'sex'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'address'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'profession'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'cardCode'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'surn'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'dolzhn'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'ph'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'dateOpenFrom'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '01.01.1900'
      end
      item
        Name = 'dateOpenTo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '01.01.2090'
      end
      item
        Name = 'birthDayTo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '01.01.2090'
      end
      item
        Name = 'birthDayFrom'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '01.01.1900'
      end>
    Left = 208
    Top = 624
  end
  object dsPacientList: TDataSource
    DataSet = PacListQuery
    Left = 1064
    Top = 464
  end
  object queryPacientInsert: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'num_fam_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'surname_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'sec_name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'day_bir_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'month_bir_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'year_bir_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'sex_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'address_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'profession_pl_w_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'svedenia_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'num_fam_2_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Date_open_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'initials_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'date_birth_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph1_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph2_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph3_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph4_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'place_work_dolzhn_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'newNum_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'newNum2_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'OthCities_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'psz_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into Kartochka (Num_fam, Surname, Name, Sec_name, Day_Bir' +
        ', Month_bir, Year_bir, Sex, Adress, profession_pl_w, Svedenia, N' +
        'um_fam2, Date_open, Initials, Date_birth, ph1, ph2, ph3, ph4, Pl' +
        'ace_work_dolzhn, NewNum, NewNum2, OthCities, psz)'
      
        'values (num_fam_,surname_, name_, sec_name_, day_bir_, month_bir' +
        '_, year_bir_, sex_, address_, profession_pl_w_, svedenia_, num_f' +
        'am_2_, Date_open_, initials_, date_birth_, ph1_, ph2_, ph3_, ph4' +
        '_, place_work_dolzhn_, newNum_, newNum2_, OthCities_, psz_);')
    Left = 680
    Top = 104
  end
  object dsMaxNum: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select max(Num_fam) from Kartochka where Surname like :p'
    Parameters = <
      item
        Name = 'p'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end>
    Left = 384
    Top = 296
  end
  object dsMaxNumFam: TDataSource
    DataSet = dsMaxNum
    Left = 984
    Top = 408
  end
  object queryPacientUpdate: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'surname_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = ''
      end
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'sec_name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'day_bir_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'month_bir_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'year_bir_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'sex_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'address_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'profession_pl_w_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'svedenia_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'date_open_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'initials_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'date_birth_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph1_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph2_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph3_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ph4_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pl_w_dolzh_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'OthCities_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'psz_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'num_fam_2_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'update Kartochka set Surname=:surname_, Name=:name_, Sec_name=:s' +
        'ec_name_,'
      
        ' Day_bir=:day_bir_, Month_bir=:month_bir_, Year_bir=:year_bir_, ' +
        'sex=:sex_, Adress=:address_, '
      
        'Profession_pl_w=:profession_pl_w_, Svedenia=:svedenia_, Date_ope' +
        'n=:date_open_, Initials=:initials_, '
      
        'Date_birth=:date_birth_, ph1=:ph1_, ph2=:ph2_, ph3=:ph3_, ph4=:p' +
        'h4_, Place_work_dolzhn=:pl_w_dolzh_ , '
      'OthCities=:OthCities_, psz=:psz_'
      'where Num_fam2=:num_fam_2_')
    Left = 760
    Top = 32
  end
  object DataSetLast: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select newNum2 from Kartochka where Code_kartochki in (select ma' +
      'x(Code_kartochki)  from Kartochka)'
    Parameters = <>
    Left = 120
    Top = 80
  end
  object dsLast: TDataSource
    DataSet = DataSetLast1
    Left = 224
    Top = 784
  end
  object dataSetPacient: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Num_fam2, newNum2, Surname, Name, Sec_Name, Sex, Date_bir' +
      'th, Adress, Profession_pl_w, Place_work_dolzhn, Date_open, ph1, ' +
      'ph2, ph3, ph4, Svedenia, Prikus, Psz, OthCities from Kartochka w' +
      'here Num_fam2 like :cardCode'
    FieldDefs = <
      item
        Name = 'Num_fam2'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'newNum2'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Surname'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Name'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Sec_Name'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Sex'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Date_birth'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'Adress'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Profession_pl_w'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Place_work_dolzhn'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Date_open'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'ph1'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ph2'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ph3'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ph4'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Svedenia'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'Prikus'
        DataType = ftMemo
      end
      item
        Name = 'OthCities'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Psz'
        DataType = ftMemo
      end>
    Parameters = <
      item
        Name = 'cardCode'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end>
    StoreDefs = True
    Left = 208
    Top = 480
    object num_fam2: TWideStringField
      FieldName = 'Num_fam2'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'Surname'
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'Sec_Name'
      Size = 50
    end
    object WideStringField5: TWideStringField
      FieldName = 'Sex'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Date_birth'
      DisplayFormat = 'dd.MM.yyyy'
    end
    object WideStringField6: TWideStringField
      FieldName = 'Adress'
      Size = 50
    end
    object WideStringField7: TWideStringField
      FieldName = 'Profession_pl_w'
      Size = 50
    end
    object WideStringField8: TWideStringField
      FieldName = 'Place_work_dolzhn'
      Size = 50
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Date_open'
      DisplayFormat = 'dd.MM.yyyy'
    end
    object WideStringField9: TWideStringField
      FieldName = 'ph1'
      Size = 50
    end
    object WideStringField10: TWideStringField
      FieldName = 'ph2'
      Size = 50
    end
    object WideStringField11: TWideStringField
      FieldName = 'ph3'
      Size = 50
    end
    object WideStringField12: TWideStringField
      FieldName = 'ph4'
      Size = 50
    end
    object WideStringField13: TWideStringField
      FieldName = 'Svedenia'
      Size = 50
    end
    object dataSetPacientPrikus: TMemoField
      FieldName = 'Prikus'
      BlobType = ftMemo
    end
    object dataSetPacientPsz: TMemoField
      FieldName = 'Psz'
      BlobType = ftMemo
    end
    object dataSetPacientnewNum2: TWideStringField
      FieldName = 'newNum2'
      Size = 50
    end
    object dataSetPacientOthCities: TIntegerField
      FieldName = 'OthCities'
    end
  end
  object dsPacient: TDataSource
    DataSet = dataSetPacient
    Left = 1072
    Top = 344
  end
  object queryPacientDelete: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'p'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
      end>
    SQL.Strings = (
      'delete from Kartochka where Num_fam2  like :p')
    Left = 840
    Top = 56
  end
  object queryPSZInsert: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'code_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'zab_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Insert into Psz_pac (Card_Code,  Zabolev) values (code_ ,  zab_)')
    Left = 680
    Top = 152
  end
  object queryPSZDelete: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'cardCode_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
      end>
    SQL.Strings = (
      'Delete from Psz_pac where Card_code like :cardCode_;')
    Left = 840
    Top = 248
  end
  object queryInsertEmptyDiag: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'id_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'parent_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into Spr_diag (Diag, parentDiagId, Name) values (:id_, :p' +
        'arent_, :name_)')
    Left = 680
    Top = 56
  end
  object PSZByCode: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select Zabolev from psz_pac where Card_code=:code;'
    Parameters = <
      item
        Name = 'code'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 384
    Top = 400
  end
  object dsPszByCode: TDataSource
    DataSet = PSZByCode
    Left = 912
    Top = 464
  end
  object dataSetDoctorsList: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select FIO, Code_sotr from Sotr where Rights = 101'
    Parameters = <>
    Left = 24
    Top = 528
  end
  object dsDoctorsList: TDataSource
    DataSet = dataSetDoctorsList
    Left = 984
    Top = 344
  end
  object dataSetZubList: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select Zub_code, Zub_name from Zub'
    Parameters = <>
    Left = 384
    Top = 248
  end
  object dsZubList: TDataSource
    DataSet = dataSetZubList
    Left = 984
    Top = 464
  end
  object dataSetDiagnozList: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select Diag, Name from Spr_diag'
    Parameters = <>
    Left = 24
    Top = 192
  end
  object dataSetDiagnozpict: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Diag, Is_diag, LetterId, Name, ParentDiagId, ShortName, S' +
      't_An_morbi, St_lech_kr, St_obno, St_RSnimok, St_slizist, St_Zhal' +
      ', UseParentAnMorbi, UseParentObno, UseParentSlizist, UseParentXR' +
      'ay, UseParentZhal from Spr_diag where Diag=:diagId_'
    Parameters = <
      item
        Name = 'diagId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 24
    Top = 240
  end
  object dataSetLechList: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select Name from Lech'
    Parameters = <>
    Left = 121
    Top = 368
  end
  object dataSetLechPict: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select Desc from Lech where Name like :p'
    Parameters = <
      item
        Name = 'p'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 120
    Top = 416
  end
  object dataSetPacList: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Num_fam2, NewNum2, Surname, Name, Sec_Name, Date_birth, D' +
      'ate_open, ph1, ph2, ph3, ph4, Place_work_dolzhn, Profession_pl_w' +
      ', Sex, Svedenia, Adress from Kartochka where Date_open>:dateOpen' +
      'From  and   Date_open<:dateOpenTo and Date_birth< :birthDayTo an' +
      'd Date_birth> :birthDayFrom order by Surname;'
    Parameters = <
      item
        Name = 'dateOpenFrom'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '01.01.1980'
      end
      item
        Name = 'dateOpenTo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '01.01.2020'
      end
      item
        Name = 'birthDayTo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '01.01.2010'
      end
      item
        Name = 'birthDayFrom'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '01.01.1900'
      end>
    Left = 296
    Top = 32
  end
  object dsPacList: TDataSource
    DataSet = PacListQuery
    OnDataChange = dsPacListDataChange
    Left = 224
    Top = 720
  end
  object dataSetLikePac: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Surname, Name, Sec_Name, Num_fam2 from Kartochka where  S' +
      'urname like :surname_ and Name like :name_ and Sec_Name like :se' +
      'c_name_'
    Parameters = <
      item
        Name = 'surname_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end
      item
        Name = 'sec_name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end>
    Left = 208
    Top = 104
  end
  object dataSetDictBranches: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select DictId, Name from Dict where ParentDictId is null order b' +
      'y Name'
    Parameters = <>
    Left = 24
    Top = 432
  end
  object dataSetDictBranch: TADODataSet
    Connection = mainConnection
    Parameters = <>
    Left = 24
    Top = 384
  end
  object dataSetDictItem: TADODataSet
    Connection = mainConnection
    Parameters = <>
    Left = 24
    Top = 480
  end
  object dataSetDiags: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select Diag, Name, ParentDiagId from Spr_diag'
    Parameters = <>
    Left = 24
    Top = 288
  end
  object dataSetDiag: TADODataSet
    Connection = mainConnection
    Parameters = <>
    Left = 24
    Top = 104
  end
  object dataSetMaxDiag: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select max(Diag) as maxDiag from Spr_diag'
    FieldDefs = <
      item
        Name = 'maxDiag'
        Attributes = [faFixed]
        DataType = ftInteger
      end>
    Parameters = <>
    StoreDefs = True
    Left = 208
    Top = 200
    object maxDiag: TIntegerField
      FieldName = 'maxDiag'
    end
  end
  object queryDeleteDiag: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'diagId'
        DataType = ftInteger
        Value = 0
      end>
    SQL.Strings = (
      'Delete from spr_diag where diag = :diagId')
    Left = 840
    Top = 8
  end
  object queryDiagUpdate: TADOQuery
    Connection = mainConnection
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 760
    Top = 128
  end
  object dataSetLechs: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select LechId, Name from Lech order by Name'
    Parameters = <>
    Left = 120
    Top = 560
  end
  object dataSetLech: TADODataSet
    Connection = mainConnection
    Parameters = <>
    Left = 120
    Top = 128
  end
  object dataSetLechDiags: TADODataSet
    Connection = mainConnection
    Parameters = <>
    Left = 120
    Top = 272
  end
  object dataSetMaxLech: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select max(LechId) as maxLech from Lech'
    FieldDefs = <
      item
        Name = 'maxLech'
        Attributes = [faFixed]
        DataType = ftInteger
      end>
    Parameters = <>
    StoreDefs = True
    Left = 208
    Top = 248
    object maxLech: TIntegerField
      FieldName = 'maxLech'
    end
  end
  object queryInsertEmptyLech: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Insert into Lech (LechId, Name) values (:id, :name_)')
    Left = 680
    Top = 200
  end
  object queryDeleteLech: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Delete from Lech where LechId = :id')
    Left = 840
    Top = 296
  end
  object queryInsertDiagLech: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'diagId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Insert into Diag_lech(LechId, Diag) values(:lechId_, :diagId_)')
    Left = 680
    Top = 8
  end
  object queryDeleteDiagLech: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'diagId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Delete from Diag_lech where LechId = :lechId_ and Diag = :diagId' +
        '_')
    Left = 840
    Top = 152
  end
  object queryUpdateLech: TADOQuery
    Connection = mainConnection
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 760
    Top = 224
  end
  object dataSetPrices: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select PriceId, ParentPriceId, Name from Price'
    Parameters = <>
    Left = 296
    Top = 130
  end
  object dataSetMaxPrice: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select max(PriceId) as maxPriceId from Price'
    Parameters = <>
    Left = 208
    Top = 386
  end
  object queryDeletePrice: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'priceId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Delete from Price where PriceId = :priceId_')
    Left = 840
    Top = 346
  end
  object dataSetPrice: TADODataSet
    Connection = mainConnection
    Parameters = <>
    Left = 296
    Top = 82
  end
  object queryPriceUpdate: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'shortName_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'description_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'cost_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'priceId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Update Price set Name = :name_,  shortName = :shortName_, descri' +
        'ption = :description_,'
      'cost = :cost_ where priceId = :priceId_')
    Left = 760
    Top = 314
  end
  object dataSetLetters: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 208
    Top = 64
  end
  object dataSetMaxLechPrice: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select max(Num) as MaxLechPrice from Lech_price where LechId = :' +
      'lechId_'
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 208
    Top = 296
  end
  object queryInsertLechPrice: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'priceId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'num_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into Lech_price(LechId, PriceId, Num) values(:lechId_, :p' +
        'riceId_, :num_)')
    Left = 680
    Top = 344
  end
  object queryDeletePricesLech: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'priceId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Delete from Lech_price where lechId = :lechId_ and priceId = :pr' +
        'iceId_')
    Left = 840
    Top = 392
  end
  object dataSetLechPrices: TADODataSet
    Connection = mainConnection
    Parameters = <>
    Left = 120
    Top = 464
  end
  object dataSetZubCard: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select ZubCardId, LetterId, d1.Name as ZName, d2.Name as Lname, ' +
      'OrderNumber, ZubId from ZubCard, Dict as d1, Dict as d2 where Ca' +
      'rdId = :cardId_ and d1.DictId = ZubCard.ZubId and d2.DictId=ZubC' +
      'ard.LetterId'
    Parameters = <
      item
        Name = 'cardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 384
    Top = 56
  end
  object dataSetzubCardMax: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select max(ZubCardId)  as maxZubCardId from ZubCard'
    FieldDefs = <
      item
        Name = 'maxZubCardId'
        Attributes = [faFixed]
        DataType = ftInteger
      end>
    Parameters = <>
    StoreDefs = True
    Left = 384
    Top = 104
  end
  object dataSetMaxOrder: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select max(OrderNumber) as maxOrder from ZubCard where CardId=:c' +
      'ardId_ and ZubId=:zubId_'
    FieldDefs = <
      item
        Name = 'maxOrder'
        Attributes = [faFixed]
        DataType = ftInteger
      end>
    Parameters = <
      item
        Name = 'cardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'zubId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    StoreDefs = True
    Left = 208
    Top = 344
  end
  object queryInsertZubCard: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'zubCardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'CardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ZubId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'letterId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'orderNumber_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'insert  into ZubCard(ZubCardId, CardId,ZubId, LetterId, OrderNum' +
        'ber) '
      'values (:zubCardId_, :CardId_, :ZubId_,:letterId_,:orderNumber_)')
    Left = 680
    Top = 392
  end
  object queryZubCardDelete: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'zubCardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'delete from ZubCard where ZubCardId = :zubCardId_')
    Left = 840
    Top = 200
  end
  object dataSetLechByDiag: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Lech.LechId, Lech.Name from Lech, Diag_lech where  Diag_l' +
      'ech.LechId=Lech.LechId and Diag_lech.Diag=:diagId_'
    Parameters = <
      item
        Name = 'diagId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 120
    Top = 174
  end
  object dataSetDiagById: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Name, ShortName, St_An_morbi, St_lech_kr, St_obno, St_RSn' +
      'imok, St_slizist, St_Zhal, UseParentAnMorbi, UseParentObno, UseP' +
      'arentSlizist, UseParentXRay, UseParentZhal  from Spr_diag where ' +
      'Diag=:diagId_'
    Parameters = <
      item
        Name = 'diagId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 24
    Top = 150
  end
  object dataSetLechById: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Name, ShortName, Description, Nazn, Reccs from Lech where' +
      ' LechId=:lechId_'
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 120
    Top = 222
  end
  object dataSetLechItems: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Lech_price.Num, Price.Name from Price, Lech_price where L' +
      'ech_price.PriceId=Price.PriceId and Lech_price.LechId=:lechId_ o' +
      'rder by Num desc;'
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 120
    Top = 320
  end
  object queryInsertPriem: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'cardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'desc_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'date_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'sotrId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'priemKr_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'sanus_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into Priem(PriemId, CardId, Description, Date_priem, Code' +
        '_sotr, PriemKr, sanus) '
      
        'values(:priemId_,:cardId_, :desc_, :date_, :sotrId_, :priemKr_, ' +
        ':sanus_);')
    Left = 680
    Top = 296
  end
  object dataSetMaxPriem: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select max(PriemId) as maxPriemId from Priem'
    Parameters = <>
    Left = 208
    Top = 432
  end
  object dsMaxNum2: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select max(newNum) as MaxNewNum from Kartochka where Surname lik' +
      'e :sur'
    Parameters = <
      item
        Name = 'sur'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%'
      end>
    Left = 384
    Top = 352
  end
  object dataSetHaveNewNum: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select newNum2  from Kartochka  where Num_fam2=:numFam2_'
    Parameters = <
      item
        Name = 'numFam2_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 24
    Top = 624
  end
  object queryGenerateNewNum: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'newNum_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'newNum2_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'num_fam2_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'update Kartochka set '
      'NewNum=:newNum_, newNum2=:newNum2_ '
      'where Num_fam2=:num_fam2_')
    Left = 760
    Top = 80
  end
  object dataSetZubCardOne: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select ZubCardId, ZubCard.OrderNumber, d.ShortName, d.Name from ' +
      'ZubCard, dict as d where d.DictId=ZubCard.LetterId and CardId=:c' +
      'ardId_ and ZubId=:zubId_ order by OrderNumber'
    Parameters = <
      item
        Name = 'cardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'zubId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 384
    Top = 152
  end
  object queryUpdateCardPszPrikus: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'psz_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'prikus_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pacientId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Update Kartochka set psz=:psz_, prikus=:prikus_ where num_fam2=:' +
        'pacientId_')
    Left = 960
    Top = 264
  end
  object dataSetPszPrikus: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select Prikus, Psz from Kartochka where Num_fam2=:pacientId_'
    Parameters = <
      item
        Name = 'pacientId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 608
  end
  object dataSetLechRelays: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Num, PriceId from Lech_price  where LechId=:lechId_ order' +
      ' by Num desc'
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 120
    Top = 512
  end
  object dataSetPricesById: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select PriceId, Name from Price where ParentPriceId in (select P' +
      'arentPriceId from Price where PriceId=:priceId_)'
    Parameters = <
      item
        Name = 'priceId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 176
  end
  object dataSetPriceDescById: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select Description from Price where PriceId=:priceId_'
    Parameters = <
      item
        Name = 'priceId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 224
  end
  object queryInsertZubCardFromPriem: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'ZubCardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'CardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ZubId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'LetterId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'OrderNumber_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ZubPriemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into ZubCard(ZubCardId, CardId, ZubId, LetterId, OrderNum' +
        'ber, ZubPriemId)'
      
        'values(ZubCardId_, CardId_, ZubId_, LetterId_, OrderNumber_, Zub' +
        'PriemId_)')
    Left = 680
    Top = 248
  end
  object dataSetZubIdByName: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select DictId from Dict where name=:name_ and ParentDictId=300'
    Parameters = <
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 384
    Top = 200
  end
  object dataSetLetterIdByDiagId: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select LetterId from Spr_diag where Diag = :diagId_'
    Parameters = <
      item
        Name = 'diagId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 120
    Top = 608
  end
  object dataSetLetterIdByLechId: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select letterId from Lech where LechId=:lechId_'
    Parameters = <
      item
        Name = 'lechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 208
    Top = 8
  end
  object dataSetPriemCount: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select count(1) as priemCount from Priem where CardId=:cardId_'
    Parameters = <
      item
        Name = 'cardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 464
  end
  object dataSetPriemByPacient: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select PriemId, Date_priem, PriemKr from  Priem where Priem.Card' +
      'Id=:cardId_ order by Date_priem'
    Parameters = <
      item
        Name = 'cardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 424
  end
  object dataSetPriemById: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Description, PriemKr, Code_sotr, Date_priem, sanus from P' +
      'riem where PriemId=:priemId_'
    Parameters = <
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 320
  end
  object queryPriemUpdate: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'code_sotr_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'priemKr_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'desc_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'date_priem_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'sanus_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'update priem set code_sotr=:code_sotr_, PriemKr=:priemKr_, descr' +
        'iption=:desc_, '
      'date_priem=:date_priem_, sanus=:sanus_ where priemId=:priemId_')
    Left = 760
    Top = 176
  end
  object queryPriemDelete: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'delete from Priem where priemId=:priemId_')
    Left = 840
    Top = 104
  end
  object dataSetPacientById: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Surname, Name, Sec_Name from Kartochka where Num_fam2=:pa' +
      'cientId_'
    Parameters = <
      item
        Name = 'pacientId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 208
    Top = 528
  end
  object dataSetPriemByIdWithSotr: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Date_priem, Description, FIO from Sotr, Priem where Sotr.' +
      'Code_sotr=Priem.Code_sotr and PriemId=:priemId_'
    Parameters = <
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 368
  end
  object dataSetPriemsByDates: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Description, Date_priem, FIO from Sotr, Priem where Priem' +
      '.cardId=:pacientId_ and Sotr.Code_sotr=Priem.Code_sotr and Date_' +
      'priem>=:dateFrom_ and Date_priem<=:dateTo_ order by Date_priem'
    Parameters = <
      item
        Name = 'pacientId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'dateFrom_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'dateTo_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 560
  end
  object dataSetPriemsBeforeDate: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select count(1) as priemCount from Priem where Date_Priem<:priem' +
      'Date_ and CardId=:cardId_'
    Parameters = <
      item
        Name = 'priemDate_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'cardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 272
  end
  object dataSetPriemsByDate: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select CardId, PriemId, PriemKr from Priem where Code_sotr=:Sotr' +
      'Id and Date_priem <:dateTo and Date_priem>=:dateFrom'
    Parameters = <
      item
        Name = 'SotrId'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'dateTo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'dateFrom'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 296
    Top = 512
  end
  object dataSetFIOById: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Surname, Name, Sec_Name, newNum2  from Kartochka where Nu' +
      'm_fam2=:pacientId_;'
    Parameters = <
      item
        Name = 'pacientId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 24
    Top = 576
  end
  object dataSetDict: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select * from Dict'
    Parameters = <>
    Left = 24
    Top = 336
  end
  object dsDict: TDataSource
    DataSet = dataSetDict1
    Left = 1016
    Top = 1280
  end
  object dataSetCardIdByPriemId: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select CardId from Priem where PriemId=:priemId_'
    Parameters = <
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 24
    Top = 56
  end
  object dataSetPacientForEzhList: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Surname, Name, Sec_Name, Date_birth, Adress, newNum2, Oth' +
      'Cities from Kartochka where Num_fam2 = :pacientId_'
    Parameters = <
      item
        Name = 'pacientId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 208
    Top = 576
  end
  object dataSetSanDiags: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select NumValue from Dict where ParentDictId = 400'
    Parameters = <>
    Left = 384
    Top = 8
  end
  object dataSetMaxDateBeforePriem: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Date_priem as maxDate, sanus from priem where Date_priem ' +
      'in('#13#10'select max(Date_priem) as maxDate from (select Date_priem f' +
      'rom Priem where Date_priem<:dateTo_ and CardId=:cardId_))'
    Parameters = <
      item
        Name = 'dateTo_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'cardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 208
    Top = 152
  end
  object dataSetIsDiagSan: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select 1  from Dict where NumValue=:diagId_ and ParentDictId=400'
    Parameters = <
      item
        Name = 'diagId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 120
    Top = 32
  end
  object dataSetPriemForEzhList: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select PriemKr, sanus from Priem where PriemId=:priemId_'
    Parameters = <
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 520
    Top = 160
  end
  object dataSetDistinctPriems: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select count(1) as ReccsCount from (select distinct CardId from ' +
      'Priem where Date_priem <:dateTo_ and Date_priem>=:dateFrom_ and ' +
      'Code_sotr=:codeSotr_)'
    Parameters = <
      item
        Name = 'dateTo_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'dateFrom_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'codeSotr_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 512
    Top = 432
  end
  object dataSetIsLechOrt: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select IsOrt from Lech where LechId=:LechId_'
    Parameters = <
      item
        Name = 'LechId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 520
    Top = 96
  end
  object queryFileNamePriemUpdate: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'FileName_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'update Priem set FileName=:FileName_ where priemId=:priemId_;')
    Left = 680
    Top = 448
  end
  object dataSetFileNameByPriemId: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 'select FileName from Priem where PriemId=:priemId_;'
    Parameters = <
      item
        Name = 'priemId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 520
    Top = 40
  end
  object dataSetOstr: TADODataSet
    Connection = mainConnection
    CursorType = ctStatic
    CommandText = 
      'select Dict.Name as Zub from Dict, ZubCard where CardId=:pacient' +
      'Id_ and LetterId=:letterId_ and Dict.DictId=ZubCard.ZubId'
    Parameters = <
      item
        Name = 'pacientId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'letterId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 520
    Top = 224
  end
  object dataSetFilesById: TADODataSet
    Connection = mainConnection
    CommandText = 'select Name, FileId from Files where CardId = :pacientId_'
    Parameters = <
      item
        Name = 'pacientId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 416
    Top = 512
  end
  object queryInsertFile: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'FileId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'FileName_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'CardId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'FileDate_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'LoadDate_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into Files (FileId, FileName, CardId,FileDate, name, Load' +
        'Date)'
      
        'values (:FileId_, :FileName_, :CardId_,:FileDate_, :name_, :Load' +
        'Date_);')
    Left = 800
    Top = 448
  end
  object dataSetMaxFileID: TADODataSet
    Connection = mainConnection
    CommandText = 'select max(FileId) as maxFileId from Files'
    Parameters = <>
    Left = 512
    Top = 288
  end
  object dataSetFileNameById: TADODataSet
    Connection = mainConnection
    CommandText = 'select FileName from Files where FileId=:FileId_'
    Parameters = <
      item
        Name = 'FileId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 536
    Top = 504
  end
  object dataSetFileById: TADODataSet
    Connection = mainConnection
    CommandText = 
      'select Name, LoadDate, FileName, FileDate, Description from File' +
      's where FileId = :FileId_'
    Parameters = <
      item
        Name = 'FileId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 512
    Top = 360
  end
  object queryUpdateFile: TADOQuery
    Connection = mainConnection
    Parameters = <
      item
        Name = 'name_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fileDate_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'desc_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'FileId_'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'update Files set Name=:name_, FileDate=:fileDate_, Description=:' +
        'desc_ where FileId=:FileId_')
    Left = 688
    Top = 512
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'CharacterSet=WIN1251'
      'LoginTimeout=30'
      'UnknownFormat=BYTEA'
      'OidAsBlob=Yes'
      'ExtendedMetadata=True'
      'DriverID=PG'
      'Port=5432')
    Left = 24
    Top = 720
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    DriverID = 'PG'
    VendorHome = 'C:\Program Files (x86)\psqlODBC\1302'
    VendorLib = 'libpq.dll'
    Left = 24
    Top = 784
  end
  object PacListQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Num_fam2", "Kartochka"."newNum2", "Kartochka' +
        '"."Surname", "Kartochka"."Name", "Kartochka"."Sec_name", "Kartoc' +
        'hka"."Date_birth", "Kartochka"."Date_open", "Kartochka"."ph1", "' +
        'Kartochka"."ph2", "Kartochka"."ph3", "Kartochka"."ph4", "Kartoch' +
        'ka"."Place_work_dolzhn", "Kartochka"."Profession_pl_w", "Kartoch' +
        'ka"."Sex","Kartochka"."Svedenia", "Kartochka"."Adress" from "Kar' +
        'tochka" order by "Surname";')
    Left = 136
    Top = 720
  end
  object queryPacientInsert1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'insert into "Kartochka" ("Num_fam", "Surname", "Name", "Sec_name' +
        '", "Day_bir", "Month_bir", "Year_bir", "Sex", "Adress", "Profess' +
        'ion_pl_w", "Svedenia", "Num_fam2", "Date_open", "Initials", "Dat' +
        'e_birth", "ph1", "ph2", "ph3", "ph4", "Place_work_dolzhn", "newN' +
        'um", "newNum2", "OthCities", "Psz") values (:num_fam_, :surname_' +
        ', :name_, :sec_name_, :day_bir_, :month_bir_, :year_bir_, :sex_,' +
        ' :address_, :profession_pl_w_, :svedenia_, :num_fam_2_, :Date_op' +
        'en_, :initials_, :date_birth_, :ph1_, :ph2_, :ph3_, :ph4_, :plac' +
        'e_work_dolzhn_, :newNum_, :newNum2_, :OthCities_, :psz_);')
    Left = 40
    Top = 992
    ParamData = <
      item
        Name = 'num_fam_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'surname_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'sec_name_'
        DataType = ftWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'day_bir_'
        DataType = ftInteger
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'month_bir_'
        DataType = ftWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'year_bir_'
        DataType = ftInteger
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'sex_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'address_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'profession_pl_w_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'svedenia_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'num_fam_2_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'Date_open_'
        DataType = ftDate
        FDDataType = dtDate
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'initials_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'date_birth_'
        DataType = ftDateTime
        FDDataType = dtDateTime
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'ph1_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'ph2_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'ph3_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'ph4_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'place_work_dolzhn_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'newNum_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'newNum2_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'OthCities_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'psz_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryPSZInsert1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Insert into "Psz_pac" ("Card_code", "Zabolev") values (:code_ , ' +
        ':zab_);')
    Left = 328
    Top = 1104
    ParamData = <
      item
        Name = 'code_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'zab_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryPacientUpdate1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'update "Kartochka" set "Surname"=:surname_, "Name"=:name_, "Sec_' +
        'name"=:sec_name_,'
      
        ' "Day_bir"=:day_bir_, "Month_bir"=:month_bir_, "Year_bir"=:year_' +
        'bir_, "Sex"=:sex_, "Adress"=:address_, '
      
        '"Profession_pl_w"=:profession_pl_w_, "Svedenia"=:svedenia_, "Dat' +
        'e_open"=:date_open_, "Initials"=:initials_, '
      
        '"Date_birth"=:date_birth_, "ph1"=:ph1_, "ph2"=:ph2_, "ph3"=:ph3_' +
        ', "ph4"=:ph4_, "Place_work_dolzhn"=:pl_w_dolzh_, '
      
        '"OthCities"=:OthCities_, "Psz"=:psz_ where "Num_fam2"=:num_fam_2' +
        '_')
    Left = 448
    Top = 1104
    ParamData = <
      item
        Name = 'surname_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'sec_name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'day_bir_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'month_bir_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'year_bir_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'sex_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'address_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'profession_pl_w_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'svedenia_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'date_open_'
        DataType = ftDateTime
        FDDataType = dtDateTime
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'initials_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'date_birth_'
        DataType = ftDateTime
        FDDataType = dtDateTime
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ph1_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ph2_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ph3_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ph4_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'pl_w_dolzh_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'OthCities_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'psz_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'num_fam_2_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryPSZDelete1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Delete from "Psz_pac" where "Card_code" like :cardCode_;')
    Left = 448
    Top = 1048
    ParamData = <
      item
        Name = 'cardCode_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetPacient1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    MasterSource = dsPacientSource
    DetailFields = 
      'Adress;Date_birth;Date_open;Name;newNum2;Num_fam2;OthCities;ph1;' +
      'ph2;ph3;ph4;Place_work_dolzhn;Prikus;Profession_pl_w;Psz;Sec_Nam' +
      'e;Sex;Surname;Svedenia'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 720
    Top = 880
  end
  object dsPacientQuery1: TFDQuery
    FieldOptions.PositionMode = poFieldNo
    DetailFields = 
      'Adress;Date_birth;Date_open;Name;newNum2;Num_fam2;OthCities;ph1;' +
      'ph2;ph3;ph4;Place_work_dolzhn;Prikus;Profession_pl_w;Psz;Sec_nam' +
      'e;Sex;Surname;Svedenia'
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Num_fam2", "Kartochka"."newNum2", "Kartochka' +
        '"."Surname", "Kartochka"."Name", "Kartochka"."Sec_name", "Kartoc' +
        'hka"."Sex", "Kartochka"."Date_birth", "Kartochka"."Adress", "Kar' +
        'tochka"."Profession_pl_w", "Kartochka"."Place_work_dolzhn", "Kar' +
        'tochka"."Date_open", "Kartochka"."ph1", "Kartochka"."ph2", "Kart' +
        'ochka"."ph3", "Kartochka"."ph4", "Kartochka"."Svedenia", "Kartoc' +
        'hka"."Prikus", "Kartochka"."Psz", "Kartochka"."OthCities" from "' +
        'Kartochka" where "Kartochka"."Num_fam2" like :cardCode;')
    Left = 128
    Top = 864
    ParamData = <
      item
        Name = 'cardCode'
        DataType = ftWideString
        Precision = 250
        NumericScale = 250
        ParamType = ptInput
        Size = 510
        Value = '%'
      end>
  end
  object dsPacientSource: TDataSource
    DataSet = dsPacientQuery1
    Left = 304
    Top = 720
  end
  object PSZByCode1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Psz_pac"."Zabolev" from "Psz_pac" where "Psz_pac"."Card_' +
        'code"=:code;')
    Left = 328
    Top = 872
    ParamData = <
      item
        Name = 'code'
        DataType = ftWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetLikePac1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Surname", "Kartochka"."Name", "Kartochka"."S' +
        'ec_name", "Kartochka"."Num_fam2" from "Kartochka" where  "Kartoc' +
        'hka"."Surname" like :surname_ and "Kartochka"."Name" like :name_' +
        ' and "Kartochka"."Sec_name" like :sec_name_;')
    Left = 712
    Top = 712
    ParamData = <
      item
        Name = 'surname_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'sec_name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dsMaxNum1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select max("Kartochka"."Num_fam") as MaxNum from "Kartochka" whe' +
        're "Kartochka"."Surname" like :p;')
    Left = 216
    Top = 864
    ParamData = <
      item
        Name = 'p'
        DataType = ftWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dsMaxNum2_1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select max("Kartochka"."newNum") as MaxNewNum from "Kartochka" w' +
        'here "Kartochka"."Surname" like :sur;')
    Left = 32
    Top = 864
    ParamData = <
      item
        Name = 'sur'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetPacList1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Num_fam2", "Kartochka"."newNum2", "Kartochka' +
        '"."Surname", "Kartochka"."Name", "Kartochka"."Sec_name", "Kartoc' +
        'hka"."Date_birth", "Kartochka"."Date_open", "Kartochka"."ph1", "' +
        'Kartochka"."ph2", "Kartochka"."ph3", "Kartochka"."ph4", "Kartoch' +
        'ka"."Place_work_dolzhn", "Kartochka"."Profession_pl_w", "Kartoch' +
        'ka"."Sex", "Kartochka"."Svedenia", "Kartochka"."Adress" from "Ka' +
        'rtochka" order by "Surname";')
    Left = 1048
    Top = 768
  end
  object DataSetLast1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."newNum2" from "Kartochka" where "Kartochka".' +
        '"Code_kartochki" in (select max("Kartochka"."Code_kartochki") fr' +
        'om "Kartochka");')
    Left = 928
    Top = 712
  end
  object queryPacientDelete1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'delete from "Kartochka" where "Kartochka"."Num_fam2"  like :p')
    Left = 40
    Top = 936
    ParamData = <
      item
        Name = 'P'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 512
      end>
  end
  object dataSetHaveNewNum1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."newNum2"  from "Kartochka"  where "Kartochka' +
        '"."Num_fam2"=:numFam2_')
    Left = 928
    Top = 824
    ParamData = <
      item
        Name = 'numFam2_'
        DataType = ftWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryGenerateNewNum1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update "Kartochka" set '
      '"newNum"=:newNum_, "newNum2"=:newNum2_ '
      'where "Num_fam2"=:num_fam2_')
    Left = 184
    Top = 1104
    ParamData = <
      item
        Name = 'newNum_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'newNum2_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'num_fam2_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetPacientList1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Num_fam2", "Kartochka"."Surname", "Kartochka' +
        '"."Name", "Kartochka"."Sec_name", "Kartochka"."Date_birth", "Kar' +
        'tochka"."Adress", "Kartochka"."Date_open", "Kartochka"."ph1", "K' +
        'artochka"."ph2" , "Kartochka"."Sex",  "Kartochka"."ph3" ,"Kartoc' +
        'hka"."ph4",  "Kartochka"."Place_work_dolzhn", "Kartochka"."Profe' +
        'ssion_pl_w", COALESCE("Kartochka"."Svedenia", '#39' '#39')  from "Kartoc' +
        'hka" where  ("Kartochka"."Name" like :nam or "Kartochka"."Name" ' +
        'is null) and ("Kartochka"."Sec_name" like :secName or "Kartochka' +
        '"."Sec_name" is null) and "Kartochka"."Sex" like :sex and ("Kart' +
        'ochka"."Adress" like :address or "Kartochka"."Adress" is null) a' +
        'nd ("Kartochka"."Profession_pl_w" like :profession or  "Kartochk' +
        'a"."Profession_pl_w" is null)  and   "Kartochka"."Num_fam2" like' +
        ' :cardCode and "Kartochka"."Surname" like :surn and ("Kartochka"' +
        '."Place_work_dolzhn" like :dolzhn  or "Kartochka"."Place_work_do' +
        'lzhn" is null) and ("Kartochka"."ph1" like :ph1 or "Kartochka"."' +
        'ph2" like :ph2 or "Kartochka"."ph3" like :ph3 or "Kartochka"."ph' +
        '4" like :ph4) and "Kartochka"."Date_open">:dateOpenFrom and "Kar' +
        'tochka"."Date_open"<:dateOpenTo and "Kartochka"."Date_birth"<:bi' +
        'rthDayTo and "Kartochka"."Date_birth">:birthDayFrom order by "Ka' +
        'rtochka"."Surname";')
    Left = 1048
    Top = 824
    ParamData = <
      item
        Name = 'nam'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '%'
      end
      item
        Name = 'SecName'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '%'
      end
      item
        Name = 'sex'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '%'
      end
      item
        Name = 'address'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '%'
      end
      item
        Name = 'profession'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '%'
      end
      item
        Name = 'cardCode'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '%'
      end
      item
        Name = 'surn'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '%'
      end
      item
        Name = 'dolzhn'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '%'
      end
      item
        Name = 'ph1'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ph2'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ph3'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ph4'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'dateOpenFrom'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '01.01.1900'
      end
      item
        Name = 'dateOpenTo'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '01.01.2090'
      end
      item
        Name = 'birthDayTo'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '01.01.2090'
      end
      item
        Name = 'birthDayFrom'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = '01.01.1900'
      end>
  end
  object dsPacientList1: TDataSource
    DataSet = dataSetPacientList1
    Left = 136
    Top = 784
  end
  object dataSetFileById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Files"."Name", "Files"."LoadDate", "Files"."FileName", "' +
        'Files"."FileDate", "Files"."Description" from "Files" where "Fil' +
        'eId" = :FileId_')
    Left = 720
    Top = 944
    ParamData = <
      item
        Name = 'FileId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetFilesById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Files"."Name", "Files"."FileId" from "Files" where "Card' +
        'Id" = :pacientId_')
    Left = 1056
    Top = 944
    ParamData = <
      item
        Name = 'pacientId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryInsertFile1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Insert into "Files" ("FileId", "FileName", "CardId","FileDate", ' +
        '"Name", "LoadDate")'
      
        'values (:FileId_, :FileName_, :CardId_,:FileDate_, :name_, :Load' +
        'Date_);')
    Left = 40
    Top = 1104
    ParamData = <
      item
        Name = 'FileId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'FileName_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'CardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'FileDate_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'LoadDate_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetMaxFileID1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max("FileId") as maxFileId from "Files"')
    Left = 832
    Top = 944
  end
  object dataSetFileNameById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select "FileName" from "Files" where "FileId"=:FileId_')
    Left = 944
    Top = 944
    ParamData = <
      item
        Name = 'FileId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryUpdateFile1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'update "Files" set "Name"=:name_, "FileDate"=:fileDate_, "Descri' +
        'ption"=:desc_ where "FileId"=:FileId_')
    Left = 328
    Top = 992
    ParamData = <
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'fileDate_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'desc_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'FileId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPriemCount1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(1) as "priemCount" from "Priem" where "CardId"=:car' +
        'dId_')
    Left = 824
    Top = 880
    ParamData = <
      item
        Name = 'cardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetPszPrikus1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Prikus", "Kartochka"."Psz" from "Kartochka" ' +
        'where "Num_fam2"=:pacientId_')
    Left = 936
    Top = 880
    ParamData = <
      item
        Name = 'pacientId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryUpdateCardPszPrikus1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Update "Kartochka" set "Psz"=:psz_, "Prikus"=:prikus_ where "Num' +
        '_fam2"=:pacientId_')
    Left = 184
    Top = 936
    ParamData = <
      item
        Name = 'psz_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'prikus_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'pacientId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetMaxPriem1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max("Priem"."PriemId") as maxPriemId from "Priem"')
    Left = 1048
    Top = 880
  end
  object queryInsertPriem1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Insert into "Priem"("PriemId", "CardId", "Description", "Date_pr' +
        'iem", "Code_sotr", "PriemKr", "sanus") '
      
        'values(:priemId_,:cardId_, :desc_, :date_, :sotrId_, :priemKr_, ' +
        ':sanus_);')
    Left = 328
    Top = 936
    ParamData = <
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'cardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'desc_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'date_'
        DataType = ftDateTime
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'sotrId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'priemKr_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'sanus_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryFileNamePriemUpdate1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'update "Priem" set "FileName"=:FileName_ where "PriemId"=:priemI' +
        'd_;'
      '')
    Left = 184
    Top = 1048
    ParamData = <
      item
        Name = 'FileName_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetZubIdByName1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Dict"."DictId" from "Dict" where "Name"=:name_ and "Pare' +
        'ntDictId"=300')
    Left = 712
    Top = 824
    ParamData = <
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetLetterIdByLechId1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select "Lech"."letterId" from "Lech" where "LechId"=:lechId_')
    Left = 928
    Top = 768
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetLetterIdByDiagId1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Spr_diag"."LetterId" from "Spr_diag" where "Diag" = :dia' +
        'gId_')
    Left = 712
    Top = 768
    ParamData = <
      item
        Name = 'diagId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetzubCardMax1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select max("ZubCard"."ZubCardId")  as maxZubCardId from "ZubCard' +
        '"')
    Left = 1048
    Top = 712
  end
  object dataSetMaxOrder1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select max("ZubCard"."OrderNumber") as maxOrder from "ZubCard" w' +
        'here "CardId"=:cardId_ and "ZubId"=:zubId_')
    Left = 824
    Top = 712
    ParamData = <
      item
        Name = 'cardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'zubId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryInsertZubCardFromPriem1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Insert into "ZubCard"("ZubCardId", "CardId", "ZubId", "LetterId"' +
        ', "OrderNumber", "ZubPriemId", "Date")'
      
        'values(:ZubCardId_, :CardId_, :ZubId_, :LetterId_, :OrderNumber_' +
        ', :ZubPriemId_,:Date_)')
    Left = 184
    Top = 992
    ParamData = <
      item
        Name = 'ZubCardId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'CardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ZubId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'LetterId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'OrderNumber_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'ZubPriemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'Date_'
        DataType = ftDateTime
        FDDataType = dtDateTime
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetFIOById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Surname", "Kartochka"."Name", "Kartochka"."S' +
        'ec_name", "Kartochka"."newNum2"  from "Kartochka" where "Num_fam' +
        '2"=:pacientId_;')
    Left = 824
    Top = 824
    ParamData = <
      item
        Name = 'pacientId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetDiagById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Spr_diag"."Name", "Spr_diag"."ShortName", "Spr_diag"."St' +
        '_An_morbi", "Spr_diag"."St_lech_kr", "Spr_diag"."St_obno", "Spr_' +
        'diag"."St_RSnimok", "Spr_diag"."St_slizist", "Spr_diag"."St_Zhal' +
        '", "Spr_diag"."UseParentAnMorbi", "Spr_diag"."UseParentObno", "S' +
        'pr_diag"."UseParentSlizist", "Spr_diag"."UseParentXRay", "Spr_di' +
        'ag"."UseParentZhal"  from "Spr_diag" where "Diag"=:diagId_')
    Left = 936
    Top = 1056
    ParamData = <
      item
        Name = 'diagId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetLechItems1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Lech_price"."Num", "Price"."Name" from "Price", "Lech_pr' +
        'ice" where "Lech_price"."PriceId"="Price"."PriceId" and "Lech_pr' +
        'ice"."LechId"=:lechId_ order by "Num" desc;')
    Left = 1056
    Top = 1000
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetLechById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Lech"."Name", "Lech"."ShortName", "Lech"."Description", ' +
        '"Lech"."Nazn", "Lech"."Reccs" from "Lech" where "LechId"=:lechId' +
        '_')
    Left = 944
    Top = 1000
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPriceDescById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Price"."Description" from "Price" where "PriceId"=:price' +
        'Id_')
    Left = 1056
    Top = 1056
    ParamData = <
      item
        Name = 'priceId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryInsertZubCard1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'insert  into "ZubCard"("ZubCardId", "CardId","ZubId", "LetterId"' +
        ', "OrderNumber","Date") '
      
        'values (:zubCardId_, :CardId_, :ZubId_,:letterId_,:orderNumber_,' +
        ':Date_)')
    Left = 40
    Top = 1048
    ParamData = <
      item
        Name = 'zubCardId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'CardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'ZubId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'letterId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'orderNumber_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'Date_'
        DataType = ftDateTime
        FDDataType = dtDateTime
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryZubCardDelete1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'delete from "ZubCard" where "ZubCardId" = :zubCardId_')
    Left = 328
    Top = 1048
    ParamData = <
      item
        Name = 'zubCardId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetLechByDiag1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Lech"."LechId", "Lech"."Name" from "Lech", "Diag_lech" w' +
        'here  "Diag_lech"."LechId"="Lech"."LechId" and "Diag_lech"."Diag' +
        '"=:diagId_')
    Left = 832
    Top = 1000
    ParamData = <
      item
        Name = 'diagId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetLechRelays1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Lech_price"."Num", "Lech_price"."PriceId" from "Lech_pri' +
        'ce"  where "LechId"=:lechId_ order by "Num" desc')
    Left = 832
    Top = 1056
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPricesById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Price"."PriceId", "Price"."Name" from "Price" where "Par' +
        'entPriceId" in (select "Price"."ParentPriceId" from "Price" wher' +
        'e "PriceId"=:priceId_)')
    Left = 720
    Top = 1000
    ParamData = <
      item
        Name = 'priceId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetIsLechOrt1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select "Lech"."IsOrt" from "Lech" where "LechId"=:LechId_')
    Left = 720
    Top = 1056
    ParamData = <
      item
        Name = 'LechId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetOstr1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Dict"."Name" as Zub from "Dict", "ZubCard" where "ZubCar' +
        'd"."CardId"=:pacientId_ and "ZubCard"."LetterId"=:letterId_ and ' +
        '"Dict"."DictId"="ZubCard"."ZubId"')
    Left = 824
    Top = 768
    ParamData = <
      item
        Name = 'pacientId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'letterId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPacientById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Surname", "Kartochka"."Name", "Kartochka"."S' +
        'ec_name" from "Kartochka" where "Num_fam2"=:pacientId_')
    Left = 584
    Top = 1056
    ParamData = <
      item
        Name = 'pacientId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetDoctorsList1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Sotr"."FIO", "Sotr"."Code_sotr" from "Sotr" where "Right' +
        's" = 101')
    Left = 584
    Top = 712
  end
  object dataSetDictBranch1: TFDQuery
    Connection = FDConnection1
    Left = 584
    Top = 768
  end
  object dataSetZubCard1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "ZubCard"."ZubCardId", "ZubCard"."LetterId", d1."Name" as' +
        ' ZName, d2."Name" as Lname, "ZubCard"."OrderNumber", "ZubCard"."' +
        'ZubId" from "ZubCard", "Dict" as d1, "Dict" as d2 where "CardId"' +
        ' = :cardId_ and d1."DictId" = "ZubCard"."ZubId" and d2."DictId"=' +
        '"ZubCard"."LetterId"')
    Left = 584
    Top = 824
    ParamData = <
      item
        Name = 'cardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetPriemByPacient1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Priem"."PriemId", "Priem"."Date_priem", "Priem"."PriemKr' +
        '" from  "Priem" where "CardId"=:cardId_ order by "Date_priem"')
    Left = 584
    Top = 880
    ParamData = <
      item
        Name = 'cardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetPriemById1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Priem"."Description", "Priem"."PriemKr", "Priem"."Code_s' +
        'otr", "Priem"."Date_priem", "Priem"."sanus" from "Priem" where "' +
        'PriemId"=:priemId_')
    Left = 584
    Top = 945
    ParamData = <
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryPriemUpdate1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'update "Priem" set "Code_sotr"=:code_sotr_, "PriemKr"=:priemKr_,' +
        ' "Description"=:desc_, '
      
        '"Date_priem"=:date_priem_, "sanus"=:sanus_ where "PriemId"=:prie' +
        'mId_')
    Left = 440
    Top = 936
    ParamData = <
      item
        Name = 'code_sotr_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'priemKr_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'desc_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'date_priem_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'sanus_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetFileNameByPriemId1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Priem"."FileName" from "Priem" where "PriemId"=:priemId_' +
        ';')
    Left = 584
    Top = 1000
    ParamData = <
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object queryPriemDelete1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'delete from "Priem" where "PriemId"=:priemId_')
    Left = 440
    Top = 872
    ParamData = <
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPriemByIdWithSotr1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Priem"."Date_priem", "Priem"."Description", "Sotr"."FIO"' +
        ' from "Sotr", "Priem" where "Sotr"."Code_sotr"="Priem"."Code_sot' +
        'r" and "PriemId"=:priemId_')
    Left = 1048
    Top = 648
    ParamData = <
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPriemsByDates1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Priem"."Description", "Priem"."Date_priem", "Sotr"."FIO"' +
        ' from "Sotr", "Priem" where "CardId"= :pacientId_ and "Sotr"."Co' +
        'de_sotr"="Priem"."Code_sotr" and "Date_priem">= :dateFrom_ and "' +
        'Date_priem"<= :dateTo_ order by "Date_priem"')
    Left = 904
    Top = 648
    ParamData = <
      item
        Name = 'pacientId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'dateFrom_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'dateTo_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPriemsBeforeDate1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(1) as priemCount from "Priem" where "Date_priem"<:p' +
        'riemDate_ and "CardId"=:cardId_')
    Left = 768
    Top = 648
    ParamData = <
      item
        Name = 'priemDate_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'cardId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetPriemsByDate1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Priem"."CardId", "Priem"."PriemId", "Priem"."PriemKr" fr' +
        'om "Priem" where "Code_sotr"=:SotrId and "Date_priem" <:dateTo a' +
        'nd "Date_priem">=:dateFrom')
    Left = 456
    Top = 712
    ParamData = <
      item
        Name = 'SotrId'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'dateTo'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'dateFrom'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetDistinctPriems1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(1) as ReccsCount from (select distinct "Priem"."Car' +
        'dId" from "Priem" where "Date_priem" <:dateTo_ and "Date_priem">' +
        '=:dateFrom_ and "Code_sotr"=:codeSotr_) as priemCard')
    Left = 616
    Top = 648
    ParamData = <
      item
        Name = 'dateTo_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'dateFrom_'
        DataType = ftDate
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'codeSotr_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPacientForEzhList1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Kartochka"."Surname", "Kartochka"."Name", "Kartochka"."S' +
        'ec_name", "Kartochka"."Date_birth", "Kartochka"."Adress", "Karto' +
        'chka"."newNum2", "Kartochka"."OthCities" from "Kartochka" where ' +
        '"Num_fam2" = :pacientId_')
    Left = 464
    Top = 648
    ParamData = <
      item
        Name = 'pacientId_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetMaxDateBeforePriem1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Priem"."Date_priem" as maxDate, "Priem"."sanus" from "Pr' +
        'iem" where "Date_priem" in'
      
        '(select max(priemDate) from (select "Priem"."Date_priem" as prie' +
        'mDate from "Priem" where "Date_priem"<:dateTo_ and "CardId"=:car' +
        'dId_) as pr)')
    Left = 1040
    Top = 592
    ParamData = <
      item
        Name = 'DATETO_'
        DataType = ftDate
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'CARDID_'
        DataType = ftWideString
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetPriemForEzhList1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Priem"."PriemKr", "Priem"."sanus" from "Priem" where "Pr' +
        'iemId"=:priemId_')
    Left = 888
    Top = 592
    ParamData = <
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetCardIdByPriemId1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select "Priem"."CardId" from "Priem" where "PriemId"=:priemId_')
    Left = 752
    Top = 592
    ParamData = <
      item
        Name = 'priemId_'
        DataType = ftInteger
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end>
  end
  object dataSetDictBranches1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Dict"."DictId", "Dict"."Name" from "Dict" where "ParentD' +
        'ictId" is null order by "Name"')
    Left = 576
    Top = 1152
  end
  object dataSetPrices1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Price"."PriceId", "Price"."ParentPriceId", "Price"."Name' +
        '" from "Price"')
    Left = 688
    Top = 1152
  end
  object dataSetLetters1: TFDQuery
    Connection = FDConnection1
    Left = 776
    Top = 1152
  end
  object dataSetDict1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from "Dict"')
    Left = 856
    Top = 1152
  end
  object dataSetDiags1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Spr_diag"."Diag", "Spr_diag"."Name", "Spr_diag"."ParentD' +
        'iagId" from "Spr_diag"')
    Left = 936
    Top = 1152
  end
  object dataSetDiag1: TFDQuery
    Connection = FDConnection1
    Left = 1016
    Top = 1152
  end
  object dataSetMaxDiag1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max("Spr_diag"."Diag") as maxDiag from "Spr_diag"')
    Left = 576
    Top = 1208
  end
  object queryInsertEmptyDiag1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Insert into "Spr_diag" ("Diag", "parentDiagId", "Name") values (' +
        ':id_, :parent_, :name_)')
    Left = 456
    Top = 1184
    ParamData = <
      item
        Name = 'id_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'parent_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
        Value = Null
      end
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryDeleteDiag1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Delete from "Spr_diag" where "Diag" = :diagId')
    Left = 344
    Top = 1184
    ParamData = <
      item
        Name = 'diagId'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryDiagUpdate1: TFDQuery
    Connection = FDConnection1
    Left = 240
    Top = 1184
  end
  object dataSetLechs1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select "Lech"."LechId", "Lech"."Name" from "Lech" order by "Name' +
        '"')
    Left = 688
    Top = 1208
  end
  object dataSetLech1: TFDQuery
    Connection = FDConnection1
    Left = 776
    Top = 1208
  end
  object dataSetLechDiags1: TFDQuery
    Connection = FDConnection1
    Left = 864
    Top = 1208
  end
  object dataSetLechPrices1: TFDQuery
    Connection = FDConnection1
    Left = 976
    Top = 1208
  end
  object dataSetMaxLech1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max("Lech"."LechId") as maxLech from "Lech"')
    Left = 576
    Top = 1264
  end
  object queryInsertEmptyLech1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Insert into "Lech" ("LechId", "Name") values (:id, :name_)')
    Left = 120
    Top = 1184
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryDeleteLech1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Delete from "Lech" where "LechId" = :id')
    Left = 120
    Top = 1240
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryInsertDiagLech1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Insert into "Diag_lech"("LechId", "Diag") values(:lechId_, :diag' +
        'Id_)')
    Left = 240
    Top = 1240
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'diagId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryDeleteDiagLech1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Delete from "Diag_lech" where "LechId" = :lechId_ and "Diag" = :' +
        'diagId_')
    Left = 360
    Top = 1240
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'diagId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryUpdateLech1: TFDQuery
    Connection = FDConnection1
    Left = 464
    Top = 1264
  end
  object dataSetMaxPrice1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max("Price"."PriceId") as maxPriceId from "Price"')
    Left = 688
    Top = 1264
  end
  object queryDeletePrice1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Delete from "Price" where "PriceId" = :priceId_')
    Left = 360
    Top = 1296
    ParamData = <
      item
        Name = 'priceId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetPrice1: TFDQuery
    Connection = FDConnection1
    Left = 776
    Top = 1264
  end
  object queryPriceUpdate1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Update "Price" set "Name" = :name_,  "ShortName" = :shortName_, ' +
        '"Description" = :description_,'
      '"Cost" = :cost_ where "PriceId" = :priceId_')
    Left = 240
    Top = 1296
    ParamData = <
      item
        Name = 'name_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'shortName_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'description_'
        DataType = ftWideString
        FDDataType = dtWideString
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'cost_'
        DataType = ftFloat
        FDDataType = dtDouble
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'priceId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryInsertLechPrice1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Insert into "Lech_price"("LechId", "PriceId", "Num") values(:lec' +
        'hId_, :priceId_, :num_)')
    Left = 120
    Top = 1296
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'priceId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'num_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object dataSetMaxLechPrice1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select max("Lech_price"."Num") as MaxLechPrice from "Lech_price"' +
        ' where "LechId" = :lechId_')
    Left = 880
    Top = 1264
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object queryDeletePricesLech1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Delete from "Lech_price" where "LechId" = :lechId_ and "PriceId"' +
        ' = :priceId_')
    Left = 32
    Top = 1272
    ParamData = <
      item
        Name = 'lechId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end
      item
        Name = 'priceId_'
        DataType = ftInteger
        FDDataType = dtInt64
        Precision = 255
        NumericScale = 255
        ParamType = ptInput
        Size = 510
      end>
  end
  object DecoderXX: TIdDecoderXXE
    FillChar = '+'
    Left = 544
    Top = 608
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 80
    Top = 688
  end
end
