object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 551
  Width = 640
  object conMySQL: TSQLConnection
    ConnectionName = 'teste'
    DriverName = 'Firebird'
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=21.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=D:\projetos\IdExpert\TESTE.fdb'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False'
      'User_Name=SYSDBA')
    Connected = True
    Left = 48
    Top = 24
  end
  object sdscaixa: TSQLDataSet
    Active = True
    CommandText = 'select * from "caixa"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conMySQL
    Left = 40
    Top = 224
  end
  object dspcaixa: TDataSetProvider
    DataSet = sdscaixa
    Left = 160
    Top = 224
  end
  object cdscaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcaixa'
    Left = 280
    Top = 224
    object intgrfldcdscaixaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object strngfld_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object strngfldcdscaixadescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdscaixavalor: TFMTBCDField
      FieldName = 'valor'
      Required = True
      Precision = 18
      Size = 2
    end
    object strngfldcdscaixatipo: TStringField
      FieldName = 'tipo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdscaixadt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
  end
  object sdscontas_pagar: TSQLDataSet
    CommandText = 'select * from  "contas_pagar"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conMySQL
    Left = 40
    Top = 304
  end
  object dspcontas_pagar: TDataSetProvider
    DataSet = sdscontas_pagar
    Left = 160
    Top = 304
  end
  object cdscontas_pagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_pagar'
    Left = 284
    Top = 304
    object intgrfld_pagarid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object strngfld_pagarnumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object strngfld_pagardescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object intgrfld_pagarparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object cdscontas_pagarvlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdscontas_pagarvlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdscontas_pagarvlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdscontas_pagardt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object cdscontas_pagardt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdscontas_pagardt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdscontas_pagardt_pagamento: TDateField
      FieldName = 'dt_pagamento'
      Required = True
    end
    object strngfld_pagarstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object sdscontas_receber: TSQLDataSet
    Active = True
    CommandText = 'select * from  "contas_receber"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conMySQL
    Left = 40
    Top = 392
  end
  object dspcontas_receber: TDataSetProvider
    DataSet = sdscontas_receber
    Left = 160
    Top = 392
  end
  object cdscontas_receber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_receber'
    Left = 284
    Top = 392
    object intgrfld_receberid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object strngfld_receberdocumento: TStringField
      FieldName = 'documento'
      Required = True
    end
    object strngfld_receberdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object intgrfld_receberparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object cdscontas_recebervlr_parcela: TLargeintField
      FieldName = 'vlr_parcela'
      Required = True
    end
    object cdscontas_recebervlr_compra: TLargeintField
      FieldName = 'vlr_compra'
      Required = True
    end
    object cdscontas_recebervlr_abatido: TLargeintField
      FieldName = 'vlr_abatido'
      Required = True
    end
    object cdscontas_receberdt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object cdscontas_receberdt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdscontas_receberdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object strngfld_receberstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdscontas_receberdt_pagamento: TDateField
      FieldName = 'dt_pagamento'
    end
  end
  object sdsusuarios: TSQLDataSet
    Active = True
    CommandText = 'select * from  "usuarios"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conMySQL
    Left = 48
    Top = 480
  end
  object dspusuarios: TDataSetProvider
    DataSet = sdsusuarios
    Left = 160
    Top = 480
  end
  object cdsusuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspusuarios'
    Left = 284
    Top = 480
    object intgrfldcdsusuariosid: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object strngfldcdsusuariosnome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object strngfldcdsusuarioslogin: TStringField
      FieldName = 'Login'
      Required = True
    end
    object strngfldcdsusuariossenha: TStringField
      FieldName = 'Senha'
      Required = True
    end
    object strngfldcdsusuariosstatus: TStringField
      FieldName = 'Status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsusuariosdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      DisplayFormat = 'dt_cadastro'
    end
  end
end
