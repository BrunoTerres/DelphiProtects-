unit FinancialSystem;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    conMySQL: TSQLConnection;
    sqldtst1: TSQLDataSet;
    dtstprvdr1: TDataSetProvider;
    ds1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
