object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 387
  Width = 555
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 416
    Top = 24
  end
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
    Left = 32
  end
  object sdscaixa: TSQLDataSet
    CommandText = 'SELECT*FROM "caixa"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conMySQL
    Left = 32
    Top = 120
  end
  object dspcaixa: TDataSetProvider
    DataSet = sdscaixa
    Left = 128
    Top = 120
  end
  object cdscaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcaixa'
    Left = 240
    Top = 120
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
    CommandText = 'SELECT * FROM "contas_pagar"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conMySQL
    Left = 32
    Top = 192
  end
  object dspcontas_pagar: TDataSetProvider
    DataSet = sdscontas_pagar
    Left = 136
    Top = 192
  end
  object cdscontas_pagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_pagar'
    Left = 240
    Top = 192
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
    CommandText = 'SELECT * FROM "contas_receber"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conMySQL
    Left = 32
    Top = 256
  end
  object dspcontas_receber: TDataSetProvider
    DataSet = sdscontas_receber
    Left = 136
    Top = 256
  end
  object cdscontas_receber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_receber'
    Left = 240
    Top = 256
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
    CommandText = 'SELECT * FROM "usuarios"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conMySQL
    Left = 32
    Top = 320
  end
  object dspusuarios: TDataSetProvider
    DataSet = sdsusuarios
    Left = 136
    Top = 320
  end
  object cdsusuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspusuarios'
    Left = 240
    Top = 320
    object intgrfldcdsusuariosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object strngfldcdsusuariosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object strngfldcdsusuarioslogin: TStringField
      FieldName = 'login'
      Required = True
    end
    object strngfldcdsusuariossenha: TStringField
      FieldName = 'senha'
      Required = True
    end
    object strngfldcdsusuariosstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsusuariosdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
    end
  end
end
