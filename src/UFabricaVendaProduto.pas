unit UFabricaVendaProduto;

interface

uses
  UVendaProdutoBase, UVendaProduto, UVendaProdutoMuka;

type
  TTipoImpressora = (tiPadrao = 10, tiMuka = 20);
  TFabricaVendaProduto = class
  public
    class function CriaVendaProduto(ATipo: TTipoImpressora): TVendaProdutoBase;
  end;

implementation

class function TFabricaVendaProduto.CriaVendaProduto(ATipo: TTipoImpressora) : TVendaProdutoBase;
begin
  result := nil;
  case  ATipo of
    tiPadrao: result := TVendaProduto.Create;
    tiMuka: result := TVendaProdutoMuka.Create;
  end;
end;


end.
