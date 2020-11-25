unit UfrmCadastroSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ExtCtrls, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls;

type
  TfrmCadastroSimples = class(TForm)
    dsTabela: TDataSource;
    stat1: TStatusBar;
    pnl1: TPanel;
    acttb1: TActionToolBar;
    pgcPesquisa: TPageControl;
    ts1: TTabSheet;
    tsbPesquisa: TTabSheet;
    dbgrd1: TDBGrid;
    actmgrCadastro: TActionManager;
    ilCadastro: TImageList;
    actInserir: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    actImprimir: TAction;
    Action1: TAction;
    actFechar: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroSimples: TfrmCadastroSimples;

implementation

{$R *.dfm}

procedure TfrmCadastroSimples.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
  Close;
end;

end.
