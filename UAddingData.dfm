object FAddingDataForm: TFAddingDataForm
  Left = 253
  Top = 226
  BorderStyle = bsToolWindow
  Caption = 'FAddingDataForm'
  ClientHeight = 97
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 249
    Height = 49
    Caption = ' '#1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077': '
    TabOrder = 0
    object eAddingText: TEdit
      Left = 8
      Top = 16
      Width = 233
      Height = 21
      TabOrder = 0
      OnChange = eAddingTextChange
    end
  end
  object bExit: TButton
    Left = 184
    Top = 64
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = bExitClick
  end
  object bAdd: TButton
    Left = 104
    Top = 64
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = bAddClick
  end
end
