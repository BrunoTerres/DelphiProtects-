unit sistemafinanceiro;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXMySQL,
  FireDAC.Phys.IBDef, Data.DBXFirebird, FireDAC.Stan.Intf, FireDAC.Phys,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDataModule2 = class(TDataModule)
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    conMySQL: TSQLConnection;
    sdscaixa: TSQLDataSet;
    dspcaixa: TDataSetProvider;
    cdscaixa: TClientDataSet;
    sdscontas_pagar: TSQLDataSet;
    dspcontas_pagar: TDataSetProvider;
    cdscontas_pagar: TClientDataSet;
    sdscontas_receber: TSQLDataSet;
    dspcontas_receber: TDataSetProvider;
    cdscontas_receber: TClientDataSet;
    sdsusuarios: TSQLDataSet;
    dspusuarios: TDataSetProvider;
    cdsusuarios: TClientDataSet;
    intgrfldcdscaixaid: TIntegerField;
    strngfld_doc: TStringField;
    strngfldcdscaixadescricao: TStringField;
    cdscaixavalor: TFMTBCDField;
    strngfldcdscaixatipo: TStringField;
    cdscaixadt_cadastro: TDateField;
    intgrfld_pagarid: TIntegerField;
    strngfld_pagarnumero_doc: TStringField;
    strngfld_pagardescricao: TStringField;
    intgrfld_pagarparcela: TIntegerField;
    cdscontas_pagarvlr_parcela: TFMTBCDField;
    cdscontas_pagarvlr_compra: TFMTBCDField;
    cdscontas_pagarvlr_abatido: TFMTBCDField;
    cdscontas_pagardt_compra: TDateField;
    cdscontas_pagardt_cadastro: TDateField;
    cdscontas_pagardt_vencimento: TDateField;
    cdscontas_pagardt_pagamento: TDateField;
    strngfld_pagarstatus: TStringField;
    intgrfld_receberid: TIntegerField;
    strngfld_receberdocumento: TStringField;
    strngfld_receberdescricao: TStringField;
    intgrfld_receberparcela: TIntegerField;
    cdscontas_recebervlr_parcela: TLargeintField;
    cdscontas_recebervlr_compra: TLargeintField;
    cdscontas_recebervlr_abatido: TLargeintField;
    cdscontas_receberdt_compra: TDateField;
    cdscontas_receberdt_vencimento: TDateField;
    cdscontas_receberdt_cadastro: TDateField;
    strngfld_receberstatus: TStringField;
    cdscontas_receberdt_pagamento: TDateField;
    intgrfldcdsusuariosid: TIntegerField;
    strngfldcdsusuariosnome: TStringField;
    strngfldcdsusuarioslogin: TStringField;
    strngfldcdsusuariossenha: TStringField;
    strngfldcdsusuariosstatus: TStringField;
    cdsusuariosdt_cadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
