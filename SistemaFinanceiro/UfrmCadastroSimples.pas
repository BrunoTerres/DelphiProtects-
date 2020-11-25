unit UfrmCadastroSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ExtCtrls, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls,
  Datasnap.DBClient;

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
    actFechar: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actInserirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actCancelarUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsbPesquisaShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroSimples: TfrmCadastroSimples;

implementation

uses
  dbsistema;

{$R *.dfm}

procedure TfrmCadastroSimples.actCancelarExecute(Sender: TObject);
begin
TClientDataSet(dsTabela).Cancel;
end;

procedure TfrmCadastroSimples.actCancelarUpdate(Sender: TObject);
begin
  TAction(actCancelar).Enabled :=  TAction(actSalvar).Enabled = True;
end;

procedure TfrmCadastroSimples.actEditarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroSimples.actExcluirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroSimples.actFecharExecute(Sender: TObject);
begin
Close;
end;

procedure TfrmCadastroSimples.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroSimples.actInserirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroSimples.actPesquisarExecute(Sender: TObject);
begin
  TClientDataSet(dsTabela.DataSet).Close;
  TClientDataSet(dsTabela.DataSet).Open;
end;

procedure TfrmCadastroSimples.actSalvarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TClientDataSet(dsTabela.DataSet).Cancel;
  TClientDataSet(dsTabela.DataSet).Close;
end;

procedure TfrmCadastroSimples.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
  Close;
end;

procedure TfrmCadastroSimples.tsbPesquisaShow(Sender: TObject);
begin
  PageControl1.ActivePage := tsbPesquisa;
end;

end.
