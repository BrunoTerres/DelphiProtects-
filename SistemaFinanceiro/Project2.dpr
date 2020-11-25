program Project2;

uses
  Vcl.Forms,
  UfrmSistemaFinanceiro in 'UfrmSistemaFinanceiro.pas' {SistemaFinanceiro},
  dbsistema in 'dbsistema.pas' {DataModule1: TDataModule},
  UfrmCadastroSimples in 'UfrmCadastroSimples.pas' {frmCadastroSimples};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSistemaFinanceiro, SistemaFinanceiro);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmCadastroSimples, frmCadastroSimples);
  Application.Run;
end.
