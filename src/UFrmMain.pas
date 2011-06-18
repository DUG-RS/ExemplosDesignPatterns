unit UFrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmMain = class(TForm)
    FlowPanel1: TFlowPanel;
    btnHelloDUnit: TButton;
    procedure btnHelloDUnitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses UCalculadora;

{$R *.dfm}

procedure TFrmMain.btnHelloDUnitClick(Sender: TObject);
var
  calc : TCalculadora;
begin
  calc := TCalculadora.Create;
  ShowMessage(IntToStr(calc.soma(1,1)));
end;

end.
