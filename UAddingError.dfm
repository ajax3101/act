object FAddingErrorForm: TFAddingErrorForm
  Left = 278
  Top = 174
  BorderStyle = bsToolWindow
  Caption = #1053#1077#1087#1086#1083#1072#1076#1082#1080', '#1074#1086#1079#1085#1080#1082#1096#1080#1077' '#1074#1086' '#1074#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 177
  ClientWidth = 361
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
  object Label5: TLabel
    Left = 8
    Top = 8
    Width = 3
    Height = 13
  end
  object bAdding: TButton
    Left = 200
    Top = 144
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = bAddingClick
  end
  object bClose: TButton
    Left = 280
    Top = 144
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = bCloseClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 129
    Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1077#1087#1086#1083#1072#1076#1082#1080' '
    TabOrder = 2
    DesignSize = (
      345
      129)
    object eError: TMemo
      Left = 8
      Top = 16
      Width = 329
      Height = 105
      Hint = #1053#1077#1087#1086#1083#1072#1076#1082#1080', '#1074#1086#1079#1085#1080#1082#1096#1080#1077' '#1074#1086' '#1074#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1089#1090#1091#1076#1077#1085#1090#1072
      Anchors = [akLeft, akTop, akRight]
      BevelKind = bkFlat
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      WantTabs = True
    end
  end
end
