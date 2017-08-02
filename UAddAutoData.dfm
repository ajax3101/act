object FAddAutoDataForm: TFAddAutoDataForm
  Left = 197
  Top = 129
  BorderStyle = bsToolWindow
  Caption = #1047#1085#1072#1095#1077#1085#1080#1103' '#1087#1086'-'#1091#1084#1086#1083#1095#1072#1085#1080#1102
  ClientHeight = 169
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 393
    Height = 121
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 81
      Height = 13
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 62
      Height = 13
      Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099':'
    end
    object Label4: TLabel
      Left = 16
      Top = 96
      Width = 113
      Height = 13
      Caption = #1056#1072#1073#1086#1090#1072' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1072#1093':'
    end
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 69
      Height = 13
      Caption = #8470' '#1072#1091#1076#1080#1090#1086#1088#1080#1080':'
    end
    object eNAuditorii: TComboBox
      Left = 152
      Top = 16
      Width = 97
      Height = 24
      Cursor = crArrow
      Hint = #8470' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      TabStop = False
    end
    object eWorkType: TComboBox
      Left = 152
      Top = 64
      Width = 225
      Height = 24
      Cursor = crArrow
      Hint = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
    end
    object eSoftType: TComboBox
      Left = 152
      Top = 88
      Width = 225
      Height = 24
      Cursor = crArrow
      Hint = #1055#1088#1086#1075#1088#1072#1084#1084#1099', '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077' '#1074' '#1088#1072#1073#1086#1090#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
    end
    object cbNAuditorii: TCheckBox
      Left = 136
      Top = 19
      Width = 17
      Height = 17
      TabStop = False
      TabOrder = 4
    end
    object cbSpecialnoct: TCheckBox
      Left = 136
      Top = 43
      Width = 17
      Height = 17
      TabStop = False
      TabOrder = 5
    end
    object cbWorkType: TCheckBox
      Left = 136
      Top = 67
      Width = 17
      Height = 17
      TabStop = False
      TabOrder = 6
    end
    object cbSoftType: TCheckBox
      Left = 136
      Top = 91
      Width = 17
      Height = 17
      TabStop = False
      TabOrder = 7
    end
    object eSpecialnoct: TComboBox
      Left = 152
      Top = 40
      Width = 225
      Height = 24
      Cursor = crArrow
      Hint = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
    end
  end
  object bOk: TButton
    Left = 248
    Top = 136
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = bOkClick
  end
  object bCancel: TButton
    Left = 328
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = bCancelClick
  end
end
