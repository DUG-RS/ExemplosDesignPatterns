program ExemplosDesignPatterns;

uses
  Forms,
  UFrmMain in 'UFrmMain.pas' {FrmMain},
  UCalculadora in 'UCalculadora.pas',
  UCliente in 'UCliente.pas',
  UValidacoes in 'UValidacoes.pas',
  UVendaProduto in 'UVendaProduto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
