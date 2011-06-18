unit UBase;

interface

type

  TBase = class
   abstract
  private
    FTabela: string;
  protected
    function GetListaColunas: string;virtual;abstract;
    function GetListaValores: string;virtual;abstract;
    function GetTabela: string;virtual;abstract;
  public
    function InsertCommand: string;
    property ListaColunas : string read GetListaColunas;
    property ListaValores : string read GetListaValores;
    property Tabela : string read GetTabela;
  end;

implementation



function TBase.InsertCommand : string;
begin
  result := 'insert into ' +
            GetTabela +
            ' (' + ListaColunas +
            ') values (' +
            ListaValores + ');';
end;

end.
