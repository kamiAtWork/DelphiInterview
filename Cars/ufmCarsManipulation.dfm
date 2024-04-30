object fmCarsManipulation: TfmCarsManipulation
  Left = 0
  Top = 0
  Caption = 'fmCarsManipulation'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object seThreadCount: TSpinEdit
    Left = 20
    Top = 40
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object btnStart: TButton
    Left = 147
    Top = 38
    Width = 75
    Height = 25
    Caption = 'btnStart'
    TabOrder = 1
    OnClick = btnStartClick
  end
  object mmoLog: TMemo
    Left = 420
    Top = 0
    Width = 432
    Height = 411
    Align = alRight
    Lines.Strings = (
      'mmoLog')
    ScrollBars = ssBoth
    TabOrder = 2
  end
end
