program ExemplosDesignPatternsTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  UTestCalculadora in 'UTestCalculadora.pas',
  UFrmMain in '..\src\UFrmMain.pas',
  UCalculadora in '..\src\UCalculadora.pas',
  UTestDUGORM in 'UTestDUGORM.pas',
  UCliente in '..\src\UCliente.pas',
  UBase in '..\src\UBase.pas',
  UTestImpressoraFiscal in 'UTestImpressoraFiscal.pas',
  UVendaProduto in '..\src\UVendaProduto.pas',
  UVendaProdutoMuka in '..\src\UVendaProdutoMuka.pas',
  UVendaProdutoBase in '..\src\UVendaProdutoBase.pas',
  UFabricaVendaProduto in '..\src\UFabricaVendaProduto.pas';

{$R *.RES}

begin
  Application.Initialize;
  if IsConsole then
    TextTestRunner.RunRegisteredTests
  else
    GUITestRunner.RunRegisteredTests;
end.

