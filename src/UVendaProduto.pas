unit UVendaProduto;

interface

uses
  SysUtils, UVendaProdutoBase;

type

  TVendaProduto = class(TVendaProdutoBase)
  public
     function adiciona(AVendaProdutoBaseParam : TVendaProdutoBaseParam): boolean; overload; override;
    function adiciona(ADescricao: string; AQuantidade: Integer;
      APrecoUnitario: double): boolean;override;
  end;

implementation

{ TVendaProduto }
function TVendaProduto.adiciona(ADescricao: string; AQuantidade: Integer; APrecoUnitario: double): boolean;
var lVendaProdutoBaseParam : TVendaProdutoBaseParam;
begin
  lVendaProdutoBaseParam :=  TVendaProdutoBaseParam.Create;
  try
    lVendaProdutoBaseParam.Descricao := ADescricao;
    lVendaProdutoBaseParam.Quantidade := AQuantidade;
    lVendaProdutoBaseParam.PrecoUnitario := APrecoUnitario;
    result := adiciona(lVendaProdutoBaseParam);
  finally
    lVendaProdutoBaseParam.free;
  end;
end;

function TVendaProduto.adiciona(
  AVendaProdutoBaseParam: TVendaProdutoBaseParam): boolean;
var texto : TextFile;
  begin
  result := true;
  try try
    AssignFile(texto, 'c:\temp\padrao.txt');
    if FileExists('c:\temp\padrao.txt') then
      Append(texto)
    else
      ReWrite(texto);

    Writeln(texto, AVendaProdutoBaseParam.Descricao + 'Qtd: ' + IntToStr(AVendaProdutoBaseParam.Quantidade) + 'Preço Unit.:' + FloatToStr(AVendaProdutoBaseParam.PrecoUnitario));
  except on E: Exception do
    result := false;
  end
  finally
    Close(texto);
  end;
end;

end.
