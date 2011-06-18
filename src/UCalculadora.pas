unit UCalculadora;

interface

type

  TCalculadora = class
    public
      function soma(number1, number2 : integer) : integer;
  end;

implementation

{ TCalculadora }

function TCalculadora.soma(number1, number2: integer): integer;
begin
  result := number1 + number2;
end;

end.
