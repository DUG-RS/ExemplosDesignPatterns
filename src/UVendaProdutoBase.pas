unit UVendaProdutoBase;

interface

type
  TVendaProdutoBaseParam = class
  private
    FDescricao: string;
    FPrecoUnitario: double;
    FQuantidade: Integer;
    procedure SetDescricao(const Value: string);
    procedure SetPrecoUnitario(const Value: double);
    procedure SetQuantidade(const Value: Integer);
  published
    property Descricao: string read FDescricao write SetDescricao;
    property Quantidade: Integer read FQuantidade write SetQuantidade;
    property PrecoUnitario: double read FPrecoUnitario write SetPrecoUnitario;
  end;

  TVendaProdutoBase = class
  public
    function adiciona(AVendaProdutoBaseParam : TVendaProdutoBaseParam): boolean; overload; virtual;abstract;
    function adiciona(ADescricao: string; AQuantidade: Integer; APrecoUnitario: double): boolean; overload; virtual; deprecated; abstract;
  end;

implementation

{ TVendaProdutoBaseParam }

procedure TVendaProdutoBaseParam.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TVendaProdutoBaseParam.SetPrecoUnitario(const Value: double);
begin
  FPrecoUnitario := Value;
end;

procedure TVendaProdutoBaseParam.SetQuantidade(const Value: Integer);
begin
  FQuantidade := Value;
end;

end.
