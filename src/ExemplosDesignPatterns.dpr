program ExemplosDesignPatterns;

uses
  Forms,
  UFrmMain in 'UFrmMain.pas' {FrmMain},
  UCalculadora in 'UCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
