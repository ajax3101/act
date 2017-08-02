object FOutDatasForm: TFOutDatasForm
  Left = 16
  Top = 116
  Width = 777
  Height = 372
  BorderStyle = bsSizeToolWin
  Caption = 'FOutDatasForm'
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 32
    Width = 753
    Height = 145
    Caption = ' '#1047#1072#1087#1088#1086#1089' '
    TabOrder = 0
    object gbNpp: TGroupBox
      Left = 16
      Top = 16
      Width = 177
      Height = 57
      Caption = ' '#8470' '#1087'/'#1087' '
      TabOrder = 0
      object Edit1: TEdit
        Left = 8
        Top = 24
        Width = 161
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object gbNAuditorii: TGroupBox
      Left = 200
      Top = 16
      Width = 177
      Height = 57
      Caption = ' '#8470' '#1040#1091#1076#1080#1090#1086#1088#1080#1080' '
      TabOrder = 1
    end
    object gbSpecialnoct: TGroupBox
      Left = 384
      Top = 16
      Width = 177
      Height = 57
      Caption = '  '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100' '
      TabOrder = 2
    end
    object gbWorkType: TGroupBox
      Left = 568
      Top = 16
      Width = 177
      Height = 57
      Caption = ' '#1042#1080#1076' '#1088#1072#1073#1086#1090#1099' '
      TabOrder = 3
    end
    object gbSoftType: TGroupBox
      Left = 568
      Top = 80
      Width = 177
      Height = 57
      Caption = ' '#1055#1088#1086#1075#1088#1072#1084#1084#1099' '
      TabOrder = 4
    end
    object gbFIO: TGroupBox
      Left = 384
      Top = 80
      Width = 177
      Height = 57
      Caption = ' '#1060#1048#1054' '
      TabOrder = 5
    end
    object gbNPK: TGroupBox
      Left = 200
      Top = 80
      Width = 177
      Height = 57
      Caption = ' '#8470' '#1055#1050' '
      TabOrder = 6
    end
    object gbDateTime: TGroupBox
      Left = 16
      Top = 80
      Width = 177
      Height = 57
      Caption = ' '#1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 16
      Width = 17
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 8
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 769
    Height = 26
    AutoSize = True
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    Flat = True
    Images = FMainForm.ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 8
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 17
    end
    object ToolButton3: TToolButton
      Left = 31
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 18
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 39
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 20
    end
  end
  object SQLOutData: TADOQuery
    Parameters = <>
    Left = 448
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 208
    object N3: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      object N4: TMenuItem
        Caption = #1046#1091#1088#1085#1072#1083'.['#8470#1087'/'#1087']'
      end
      object N5: TMenuItem
        Caption = #1046#1091#1088#1085#1072#1083'.['#1076#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103']'
      end
      object N6: TMenuItem
        Caption = #1046#1091#1088#1085#1072#1083'.['#8470' '#1072#1091#1076#1080#1090#1086#1088#1080#1080']'
      end
      object N7: TMenuItem
        Caption = #1046#1091#1088#1085#1072#1083'.['#8470' '#1055#1050']'
      end
      object N8: TMenuItem
        Caption = #1046#1091#1088#1085#1072#1083'.['#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100']'
      end
      object N9: TMenuItem
        Caption = #1046#1091#1088#1085#1072#1083'.['#1060#1048#1054']'
      end
      object N11: TMenuItem
        Caption = #1046#1091#1088#1085#1072#1083'.['#1074#1080#1076' '#1088#1072#1073#1086#1090#1099']'
      end
      object N12: TMenuItem
        Caption = #1046#1091#1088#1085#1072#1083'.['#1088#1072#1073#1086#1090#1072' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1072#1093']'
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N14: TMenuItem
        Caption = #1053#1077#1087#1086#1083#1072#1076#1082#1080'.['#8470' '#1079#1072#1087#1080#1089#1080' '#1074' '#1046#1091#1088#1085#1072#1083#1077']'
      end
      object N15: TMenuItem
        Caption = #1053#1077#1087#1086#1083#1072#1076#1082#1080'.['#1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1077#1087#1086#1083#1072#1076#1082#1080']'
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object WHERE1: TMenuItem
        Caption = 'WHERE'
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object pmClear: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    end
  end
end
