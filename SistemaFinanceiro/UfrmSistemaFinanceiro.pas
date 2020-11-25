unit UfrmSistemaFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls;

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
    imgContasPagar: TImage;
    lblRecebimentos: TLabel;
    stat1: TStatusBar;
    tmr1: TTimer;
    procedure btnUsuarioClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
//precisa para chamar o formulario pelo botao
  SistemaFinanceiro: TSistemaFinanceiro;

implementation

uses
  UfrmCadastroSimples;

{$R *.dfm}

//chamando formulario por botao
procedure TSistemaFinanceiro.btnUsuarioClick(Sender: TObject);
begin
    frmCadastroSimples := TfrmCadastroSimples.Create(nil);
    try
      frmCadastroSimples.ShowModal;
    finally
      FreeAndNil(frmCadastroSimples);
    end;
end;


procedure TSistemaFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja Realmente Sair?' , 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes  then
    Application.Terminate
  else
    Abort;
end;

procedure TSistemaFinanceiro.tmr1Timer(Sender: TObject);
begin
  stat1.Panels.Items[0].Text := DateTimeToStr(Now);
end;

end.
