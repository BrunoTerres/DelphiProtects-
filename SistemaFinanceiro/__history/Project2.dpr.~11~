program Project2;
//Caminhos das Units
uses
  Vcl.Forms,
  UfrmSistemaFinanceiro in 'UfrmSistemaFinanceiro.pas' {SistemaFinanceiro},
  dbsistema in 'dbsistema.pas' {dmDados: TDataModule},
  UfrmCadastroSimples in 'view\UfrmCadastroSimples.pas' {frmCadastroSimples},
  UfrmCadastroUsuarios in 'view\UfrmCadastroUsuarios.pas' {frmCadastroUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSistemaFinanceiro, SistemaFinanceiro);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmCadastroUsuarios, frmCadastroUsuarios);
  Application.Run;
end.
