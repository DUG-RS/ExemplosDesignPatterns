unit UTestCalculadora;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit
  being tested.

}

interface

uses
  TestFramework, Windows, Forms, Dialogs, Controls, Classes, ExtCtrls, SysUtils, Variants,
  Graphics, StdCtrls, Messages, UCalculadora;

type
  // Test methods for class TFrmMain

  TestTFrmMain = class(TTestCase)
  private
    FCalculadora : TCalculadora;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestCalculadora;
  end;

implementation

procedure TestTFrmMain.SetUp;
begin
  FCalculadora := TCalculadora.Create;
end;

procedure TestTFrmMain.TearDown;
begin
  FCalculadora.Free;
  FCalculadora := nil;
end;

procedure TestTFrmMain.TestCalculadora;
begin
  CheckEquals(2,FCalculadora.soma(1,1),'1+1 deve ser igual a 2!');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTFrmMain.Suite);
end.

