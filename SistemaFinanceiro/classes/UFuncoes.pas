unit UFuncoes;



interface

uses
Vcl.Forms, System.SysUtils, System.Classes, Data.DB, Data.SqlExpr,
Data.FMTBcd, Datasnap.DBClient, datasnap.Provider;

function GetId(Campo, Tabela : String) : Integer;
implementation

uses
  dbsistema;

  function GetId(Campo, Tabela : String) : Integer;
    begin
      with
      TSQLQuery.Create(nil) do
      try
        SQLConnection := dmDados.conMySQL;
        sql.Add('SELECT ' +Campo+ ' FROM ' +Tabela+ ' ORDER BY ' +Campo+ ' DESC LIMIT 1');
        open;
        Result := Fields[0].AsInteger + 1;
      finally
        close;
        free;
      end;
    end;

end.
