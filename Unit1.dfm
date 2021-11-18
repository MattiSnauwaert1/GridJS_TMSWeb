object Form1: TForm1
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = 0
  Font.Name = 'Arial'
  Font.Size = 8
  Font.Style = []
  FormContainer = 'body'
  FormStyle = fsNormal
  Height = 480
  Left = 0
  ParentFont = False
  TabOrder = 0
  Top = 0
  Width = 640
  object WebLabel1: TWebLabel
    Caption = 'Click the button to show the Grid'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = 0
    Font.Name = 'Arial'
    Font.Size = 8
    Font.Style = []
    Height = 12
    Left = 60
    ParentFont = False
    Top = 415
    Width = 154
  end
  object WebButton1: TWebButton
    Caption = 'Click Here'
    Color = clBlue
    Default = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = 0
    Font.Name = 'Arial'
    Font.Size = 8
    Font.Style = []
    Height = 25
    Left = 71
    OnClick = WebButton1Click
    ParentFont = False
    Role = 'button'
    TabOrder = 0
    Top = 451
    Width = 100
  end
  object WebButton2: TWebButton
    Caption = 'Check'
    Color = clBlue
    Default = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = 0
    Font.Name = 'Arial'
    Font.Size = 8
    Font.Style = []
    Height = 25
    Left = 405
    OnClick = WebButton2Click
    ParentFont = False
    Role = 'button'
    TabOrder = 0
    Top = 451
    Width = 100
  end
  object WebLabel2: TWebLabel
    Caption = 'Check the Stock Market'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = 0
    Font.Name = 'Arial'
    Font.Size = 8
    Font.Style = []
    Height = 25
    Left = 405
    ParentFont = False
    Top = 415
    Width = 112
  end
end
