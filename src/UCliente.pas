unit UCliente;

interface

uses SysUtils, UBase;

type


  TCliente = class(TBase)
  private
    FTwitter: String;
    FNome: String;
  private
    procedure SetNome(const Value: String);
    procedure SetTwitter(const Value: String);
    function GetListaColunas: string;override;
    function GetListaValores: string;override;
  protected
    function GetTabela: string; override;

  published
    property Nome: String read FNome write SetNome;
    property Twitter: String read FTwitter write SetTwitter;
  public
    property ListaColunas : string read GetListaColunas;
    constructor Create;
  end;

implementation

{ TCliente }
constructor TCliente.Create;
begin
end;

function TCliente.GetListaColunas: string;
begin
  result := 'nome, twitter';
end;

function TCliente.GetListaValores: string;
begin
  result := QuotedStr(Nome) + ', ' + QuotedStr(Twitter);

end;


function TCliente.GetTabela: string;
begin
  result := 'clientes';
end;

procedure TCliente.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TCliente.SetTwitter(const Value: String);
begin
  FTwitter := Value;
end;

end.
