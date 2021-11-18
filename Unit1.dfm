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
    Left = 92
    Top = 63
    Width = 154
  end
  object WebButton1: TWebButton
    Caption = 'Click Here'
    Color = clNone
    Default = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = 0
    Font.Name = 'Arial'
    Font.Size = 8
    Font.Style = []
    Height = 25
    Left = 103
    OnClick = WebButton1Click
    Role = 'button'
    TabOrder = 0
    Top = 99
    Width = 100
  end
end
