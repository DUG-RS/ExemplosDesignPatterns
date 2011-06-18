object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 276
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FlowPanel1: TFlowPanel
    Left = 0
    Top = 0
    Width = 498
    Height = 276
    Align = alClient
    Caption = 'FlowPanel1'
    TabOrder = 0
    ExplicitLeft = 168
    ExplicitTop = 136
    ExplicitWidth = 225
    ExplicitHeight = 73
    object btnHelloDUnit: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 25
      Caption = 'btnHelloDUnit'
      TabOrder = 0
      OnClick = btnHelloDUnitClick
    end
  end
end
