object frSample: TfrSample
  Left = 0
  Top = 0
  Width = 394
  Height = 90
  TabOrder = 0
  object gbOuter: TGroupBox
    Left = 0
    Top = 0
    Width = 394
    Height = 90
    Align = alClient
    Caption = 'gbOuter'
    TabOrder = 0
    ExplicitLeft = 60
    ExplicitTop = 60
    ExplicitWidth = 185
    ExplicitHeight = 105
    object btn1: TButton
      Left = 317
      Top = 15
      Width = 75
      Height = 73
      Align = alRight
      Caption = 'btn1'
      TabOrder = 0
      ExplicitHeight = 70
    end
    object chklst1: TCheckListBox
      Left = 2
      Top = 15
      Width = 315
      Height = 73
      Align = alClient
      ItemHeight = 13
      TabOrder = 1
      OnKeyUp = chklst1KeyUp
      ExplicitLeft = 28
      ExplicitTop = 36
      ExplicitWidth = 121
      ExplicitHeight = 97
    end
  end
end
