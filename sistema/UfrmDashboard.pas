unit UfrmDashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmDashboard = class(TForm)
    lblRegister: TLabel;
    imgUser: TImage;
    imgReceivePayment: TImage;
    imgPayment: TImage;
    imgCashier: TImage;
    imgConsultationReceive: TImage;
    lblSystemReport: TLabel;
    imgPaymentReport: TImage;
    imgBrowser: TImage;
    imgSystemConfig: TImage;
    imgPaymentReceiveReport: TImage;
    imgCashierReport: TImage;
    lblSystem: TLabel;
    imgConsultaPagamentos: TImage;
    blnhn1: TBalloonHint;
    statBar: TStatusBar;
    tmr1: TTimer;
    btn1: TBitBtn;
    procedure tmr1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDashboard: TfrmDashboard;

implementation

uses
  UfrmCadastroBasico;

{$R *.dfm}

procedure TfrmDashboard.btn1Click(Sender: TObject);

begin

  frmCadastroBasico := TfrmCadastroBasico.Create(nil);

  try
    frmcadastrobasico.ShowModal;
  finally
    FreeAndNil(frmCadastroBasico);
  end;
end;

procedure TfrmDashboard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja Realmente Sair?' , 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then
  Application.Terminate
  else
  Abort;
end;

procedure TfrmDashboard.tmr1Timer(Sender: TObject);
begin
  statBar.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
