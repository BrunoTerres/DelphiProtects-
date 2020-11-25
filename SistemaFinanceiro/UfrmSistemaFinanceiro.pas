unit UfrmSistemaFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TSistemaFinanceiro = class(TForm)
    imgUsuario: TImage;
    lblCadastros: TLabel;
    imgPagamentosRecebidos: TImage;
    imgLancamentoCaixa: TImage;
    imgConsultaPagamentos: TImage;
    imgConsultarPagamentos: TImage;
    lblRelatorios: TLabel;
    lblUsuarios: TLabel;
    lblReceberPagamento: TLabel;
    lblPagamento: TLabel;
    lblConsultaPagamentos: TLabel;
    lblRegistro: TLabel;
    imgRelatoriodePagamento: TImage;
    imgRelatorioRecebimento: TImage;
    imgRelatorioCaixa: TImage;
    lblRelatorioPagamento1: TLabel;
    lblRelatorioPagamento: TLabel;
    lblRelatorioRecebimento: TLabel;
    lblRelatorioCaixa: TLabel;
    imgConfigSistema: TImage;
    imgNavegador: TImage;
    lblConfigSistema: TLabel;
    lblNavegador: TLabel;
    btnUsuario: TButton;
    blnhn1: TBalloonHint;
    imgContasPagar: TImage;
    lblRecebimentos: TLabel;
    procedure btnUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SistemaFinanceiro: TSistemaFinanceiro;

implementation

uses
  UfrmCadastroSimples;

{$R *.dfm}

procedure TSistemaFinanceiro.btnUsuarioClick(Sender: TObject);
begin
    frmCadastroSimples := TfrmCadastroSimples.Create(nil);
    try
      frmCadastroSimples.ShowModal;
    finally
      FreeAndNil(frmCadastroSimples);
    end;
end;


end.
