object FAboutForm: TFAboutForm
  Left = 192
  Top = 107
  BorderStyle = bsToolWindow
  Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  ClientHeight = 257
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Copyright: TLabel
    Left = 264
    Top = 152
    Width = 57
    Height = 13
    Caption = 'Copyright'
    Visible = False
    IsControl = True
  end
  object Comments: TLabel
    Left = 304
    Top = 200
    Width = 49
    Height = 13
    Caption = 'Comments'
    Visible = False
    WordWrap = True
    IsControl = True
  end
  object Version: TLabel
    Left = 384
    Top = 192
    Width = 35
    Height = 13
    Caption = 'Version'
    Visible = False
    IsControl = True
  end
  object ProductName: TLabel
    Left = 384
    Top = 168
    Width = 68
    Height = 13
    Caption = 'Product Name'
    Visible = False
    IsControl = True
  end
  object OleContainer1: TOleContainer
    Left = -40
    Top = 0
    Width = 256
    Height = 256
    Caption = 'OleContainer1'
    TabOrder = 0
    Visible = False
  end
  object MediaPlayer1: TMediaPlayer
    Left = 216
    Top = 104
    Width = 253
    Height = 30
    Visible = False
    TabOrder = 1
  end
end
