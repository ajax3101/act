object FModifyData: TFModifyData
  Left = 237
  Top = 146
  BorderStyle = bsToolWindow
  Caption = 'FModifyData'
  ClientHeight = 225
  ClientWidth = 433
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
  object GroupBox2: TGroupBox
    Left = 280
    Top = 8
    Width = 145
    Height = 177
    Caption = #1053#1072' '#1079#1072#1087#1080#1089#1100':'
    TabOrder = 0
    object lTimeNew: TLabel
      Left = 16
      Top = 56
      Width = 47
      Height = 13
      Caption = 'lTimeNew'
    end
    object lSpecialnostNew: TLabel
      Left = 16
      Top = 104
      Width = 79
      Height = 13
      Caption = 'lSpecialnostNew'
    end
    object lNPKNew: TLabel
      Left = 16
      Top = 88
      Width = 46
      Height = 13
      Caption = 'lNPKNew'
    end
    object lNAuditoriiNew: TLabel
      Left = 16
      Top = 72
      Width = 69
      Height = 13
      Caption = 'lNAuditoriiNew'
    end
    object lFIONew: TLabel
      Left = 16
      Top = 120
      Width = 41
      Height = 13
      Caption = 'lFIONew'
    end
    object lDateNew: TLabel
      Left = 16
      Top = 40
      Width = 47
      Height = 13
      Caption = 'lDateNew'
    end
    object lSoftTypeNew: TLabel
      Left = 16
      Top = 152
      Width = 67
      Height = 13
      Caption = 'lSoftTypeNew'
    end
    object lWorkTypeNew: TLabel
      Left = 16
      Top = 136
      Width = 74
      Height = 13
      Caption = 'lWorkTypeNew'
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 265
    Height = 177
    Caption = ' '#1042#1099' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1086' '#1093#1086#1090#1080#1090#1077' '#1079#1072#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100': '
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 29
      Height = 13
      Caption = #1044#1072#1090#1072':'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 36
      Height = 13
      Caption = #1042#1088#1077#1084#1103':'
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 69
      Height = 13
      Caption = #8470' '#1072#1091#1076#1080#1090#1086#1088#1080#1080':'
    end
    object Label4: TLabel
      Left = 16
      Top = 88
      Width = 32
      Height = 13
      Caption = #8470' '#1055#1050':'
    end
    object Label5: TLabel
      Left = 16
      Top = 104
      Width = 81
      Height = 13
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
    end
    object Label6: TLabel
      Left = 16
      Top = 120
      Width = 30
      Height = 13
      Caption = #1060#1048#1054':'
    end
    object lDate: TLabel
      Left = 136
      Top = 40
      Width = 25
      Height = 13
      Caption = 'lDate'
    end
    object lTime: TLabel
      Left = 136
      Top = 56
      Width = 25
      Height = 13
      Caption = 'lTime'
    end
    object lNAuditorii: TLabel
      Left = 136
      Top = 72
      Width = 47
      Height = 13
      Caption = 'lNAuditorii'
    end
    object lNPK: TLabel
      Left = 136
      Top = 88
      Width = 24
      Height = 13
      Caption = 'lNPK'
    end
    object lSpecialnost: TLabel
      Left = 136
      Top = 104
      Width = 57
      Height = 13
      Caption = 'lSpecialnost'
    end
    object lFIO: TLabel
      Left = 136
      Top = 120
      Width = 19
      Height = 13
      Caption = 'lFIO'
    end
    object Label7: TLabel
      Left = 16
      Top = 24
      Width = 34
      Height = 13
      Caption = #8470' '#1087'/'#1087':'
    end
    object lNpp: TLabel
      Left = 136
      Top = 24
      Width = 22
      Height = 13
      Caption = 'lNpp'
    end
    object Label8: TLabel
      Left = 16
      Top = 136
      Width = 61
      Height = 13
      Caption = #1074#1080#1076' '#1088#1072#1073#1086#1090#1099':'
    end
    object Label9: TLabel
      Left = 16
      Top = 152
      Width = 112
      Height = 13
      Caption = #1088#1072#1073#1086#1090#1072' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1072#1093':'
    end
    object lWorkType: TLabel
      Left = 136
      Top = 136
      Width = 52
      Height = 13
      Caption = 'lWorkType'
    end
    object lSoftType: TLabel
      Left = 136
      Top = 152
      Width = 45
      Height = 13
      Caption = 'lSoftType'
    end
  end
  object bOk: TButton
    Left = 192
    Top = 192
    Width = 75
    Height = 25
    Caption = #1044#1072
    TabOrder = 2
    OnClick = bOkClick
  end
  object bNo: TButton
    Left = 272
    Top = 192
    Width = 75
    Height = 25
    Caption = #1053#1077#1090
    TabOrder = 3
    OnClick = bNoClick
  end
  object bCancel: TButton
    Left = 352
    Top = 192
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = bNoClick
  end
end
