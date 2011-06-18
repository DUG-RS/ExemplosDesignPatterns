unit UVendaProdutoMuka;

interface
uses SysUtils, UVendaProdutoBase;

type

TVendaProdutoMuka = class(TVendaProdutoBase)
  private
    procedure ImprimeCupom(var Result: Boolean; ADescricao: string; AValorTotal: Double);

  public
    function adiciona(ADescricao: string; AQuantidade: Integer;
      APrecoUnitario: double): boolean; override;
end;

implementation

function TVendaProdutoMuka.adiciona(ADescricao: string; AQuantidade: Integer; APrecoUnitario: double): boolean;
begin
  result := true;
  ImprimeCupom(Result, ADescricao, AQuantidade * APrecoUnitario);
end;

procedure TVendaProdutoMuka.ImprimeCupom(var Result: Boolean; ADescricao: string; AValorTotal: Double);
var
  texto: Text;
begin
  try
    try
      AssignFile(texto, 'c:\temp\muka.txt');
      if FileExists('c:\temp\muka.txt') then
        Append(texto)
      else
        ReWrite(texto);
      Writeln(texto, ADescricao + ' -- Total: ' + FloatToStr(AValorTotal));
    except
      on E: Exception do
        result := false;
    end;
  finally
    Close(texto);
  end;
end;
end.
