unit UfrmCadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfrmcadastrobasico = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastrobasico: Tfrmcadastrobasico;

implementation

{$R *.dfm}

procedure Tfrmcadastrobasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key =  #27 then
    Close;


end;

end.
