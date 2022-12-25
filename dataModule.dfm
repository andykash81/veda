object mainDataModule: TmainDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 717
  Width = 937
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
      't Without Replica Repair=False;Jet OLEDB:SFP=False'
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
    DataSet = dataSetPacientList
    Left = 776
    Top = 576
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
    Left = 808
    Top = 544
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
    DataSet = DataSetLast
    Left = 760
    Top = 592
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
        Name = 'Psz'
        DataType = ftMemo
      end
      item
        Name = 'OthCities'
        Attributes = [faFixed]
        DataType = ftInteger
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
    Left = 784
    Top = 568
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
    Left = 768
    Top = 584
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
    Left = 792
    Top = 560
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
    Left = 800
    Top = 552
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
    DataSet = dataSetPacList
    OnDataChange = dsPacListDataChange
    Left = 752
    Top = 600
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
      'OrderNumber, ZubId from ZubCard, dict as d1, dict as d2 where Ca' +
      'rdId = :cardId_ and d1.dictId = ZubCard.ZubId and d2.dictid=ZubC' +
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
    Left = 760
    Top = 272
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
    Top = 416
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
    DataSet = dataSetDict
    Left = 816
    Top = 536
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
    Top = 424
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
    Left = 536
    Top = 552
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
    Left = 528
    Top = 344
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
    Top = 440
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
    Left = 536
    Top = 304
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
    Left = 496
    Top = 488
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
    Left = 488
    Top = 200
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
    Left = 792
    Top = 448
  end
  object dataSetMaxFileID: TADODataSet
    Connection = mainConnection
    CommandText = 'select max(FileId) as maxFileId from Files'
    Parameters = <>
    Left = 544
    Top = 128
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
    Left = 552
    Top = 72
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
    Left = 576
    Top = 240
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
    Top = 520
  end
end
