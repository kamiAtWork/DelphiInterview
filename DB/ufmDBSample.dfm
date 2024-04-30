object Form55: TForm55
  Left = 0
  Top = 0
  Caption = 'Form55'
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
  object edLogin: TEdit
    Left = 156
    Top = 124
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'edLogin'
  end
  object edPass: TEdit
    Left = 156
    Top = 164
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'edPass'
  end
  object btnLogin: TButton
    Left = 242
    Top = 200
    Width = 75
    Height = 25
    Caption = 'btnLogin'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object con1: TADOConnection
    Left = 28
    Top = 36
  end
  object qry1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 28
    Top = 112
  end
end
