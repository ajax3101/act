object FPasswordForm: TFPasswordForm
  Left = 405
  Top = 266
  AlphaBlend = True
  BorderStyle = bsToolWindow
  Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1080' '#1087#1072#1088#1086#1083#1100
  ClientHeight = 113
  ClientWidth = 265
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
  object bConnect: TButton
    Left = 104
    Top = 80
    Width = 73
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = bConnectClick
  end
  object fpPanel: TPanel
    Left = 8
    Top = 8
    Width = 249
    Height = 65
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object lPassword: TLabel
      Left = 8
      Top = 36
      Width = 41
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100':'
    end
    object lUserName: TLabel
      Left = 8
      Top = 14
      Width = 25
      Height = 13
      Caption = #1048#1084#1103':'
    end
    object ePassword: TEdit
      Left = 56
      Top = 32
      Width = 185
      Height = 21
      AutoSize = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object eUserName: TEdit
      Left = 56
      Top = 8
      Width = 185
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'ADMIN'
    end
  end
  object bClose: TButton
    Left = 184
    Top = 80
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = bCloseClick
  end
end
