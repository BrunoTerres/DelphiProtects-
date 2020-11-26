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
    pgcControl1: TPageControl;
    tsbCadastro: TTabSheet;
    tsbPesquisa: TTabSheet;
    ilCadastro: TImageList;
    dbgrd2: TDBGrid;
    dbgrd1: TDBGrid;
    actmgrCadastro: TActionManager;
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
    procedure actPesquisarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actCancelarUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsbPesquisaShow(Sender: TObject);
    procedure actInserirUpdate(Sender: TObject);
    procedure actExcluirUpdate(Sender: TObject);
    procedure actEditarUpdate(Sender: TObject);
    procedure actImprimirUpdate(Sender: TObject);
    procedure actSalvarUpdate(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
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
if pgcControl1.ActivePage = tsbCadastro then
  pgcControl1.ActivePage := tsbPesquisa;
TClientDataSet(dsTabela.DataSet).Cancel;

end;

procedure TfrmCadastroSimples.actCancelarUpdate(Sender: TObject);
begin
   actInserir.Enabled := dsTabela.State in [dsBrowse,dsInactive];
   actCancelar.Enabled :=  actSalvar.Enabled = True;
end;

procedure TfrmCadastroSimples.actEditarUpdate(Sender: TObject);
begin
  if (dsTabela.State in [dsBrowse]) and (not TClientDataSet(dsTabela.DataSet).IsEmpty) then
    actEditar.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroSimples.actExcluirUpdate(Sender: TObject);
begin
  if (dsTabela.State in [dsBrowse]) and (not TClientDataSet(dsTabela.DataSet).IsEmpty) then
    actExcluir.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroSimples.actFecharExecute(Sender: TObject);
begin
Close;
end;

procedure TfrmCadastroSimples.actImprimirExecute(Sender: TObject);
begin
 ShowMessage('Em desenvolvimento!');
end;

procedure TfrmCadastroSimples.actImprimirUpdate(Sender: TObject);
begin
  if (dsTabela.State in [dsBrowse]) and (not TClientDataSet(dsTabela.DataSet).IsEmpty) then
    actImprimir.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroSimples.actInserirExecute(Sender: TObject);
begin
 if pgcControl1.ActivePage = tsbPesquisa  then
  pgcControl1.ActivePage := tsbCadastro;
  TClientDataSet(dsTabela.DataSet).Open;
  TClientDataSet(dsTabela.DataSet).Insert;
end;

procedure TfrmCadastroSimples.actInserirUpdate(Sender: TObject);
begin
  actInserir.Enabled := dsTabela.State in [dsBrowse,dsInactive];
end;

procedure TfrmCadastroSimples.actPesquisarExecute(Sender: TObject);
begin
  TClientDataSet(dsTabela.DataSet).Close;
  TClientDataSet(dsTabela.DataSet).Open;
end;

//Checa se o INSERT ou UPDATE funcionaram como deveriam
procedure TfrmCadastroSimples.actSalvarExecute(Sender: TObject);
begin

  try

  TClientDataSet(dsTabela.DataSet).Post;
  TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

    case dsTabela.State of
      dsEdit : Application.MessageBox('Registro Atualizado com Sucesso!', 'Informação', MB_OK+MB_ICONINFORMATION);
      dsInsert : Application.MessageBox('Registro Inserido com Sucesso!', 'Informação', MB_OK+MB_ICONINFORMATION);
    end;

    if pgcControl1.ActivePage = tsbCadastro then
      pgcControl1.ActivePage := tsbPesquisa;

      //limpar campos

        TClientDataSet(dsTabela.DataSet).Open;

  except on E : Exception do
  raise Exception.Create('Erro ao Salvar Registro: ' + E.Message)
  end


end;

procedure TfrmCadastroSimples.actSalvarUpdate(Sender: TObject);
begin
  actSalvar.Enabled := dsTabela.State in [dsInsert,dsEdit];
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
  pgcControl1.ActivePage := tsbPesquisa;
end;

end.
