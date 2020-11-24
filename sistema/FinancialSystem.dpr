program FinancialSystem;

uses
  Vcl.Forms,
  UfrmDashboard in 'UfrmDashboard.pas' {frmDashboard},
  Vcl.Themes,
  Vcl.Styles,
  FinancialSystem in 'FinancialSystem.pas' {DataModule1: TDataModule},
  sistemafinanceiro in 'sistemafinanceiro.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDashboard, frmDashboard);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
