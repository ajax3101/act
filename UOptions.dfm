object FOptionsForm: TFOptionsForm
  Left = 212
  Top = 145
  BorderStyle = bsToolWindow
  Caption = #1054#1087#1094#1080#1080
  ClientHeight = 153
  ClientWidth = 409
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
  object PageControl: TPageControl
    Left = 8
    Top = 8
    Width = 393
    Height = 106
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Hint = #1060#1080#1083#1100#1090#1088' '#1085#1072' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
      Caption = #1060#1080#1083#1100#1090#1088
      object GroupBox2: TGroupBox
        Left = 4
        Top = 4
        Width = 377
        Height = 69
        TabOrder = 0
        object cbViewOnlyAuditorii: TCheckBox
          Left = 12
          Top = 16
          Width = 241
          Height = 17
          Hint = 
            #1042' '#1090#1072#1073#1083#1080#1094#1077' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1041#1044' '#1073#1091#1076#1091#1090' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100#1089#1103' '#1090#1086#1083#1100#1082#1086' '#1076#1072#1085#1085#1099#1077' '#1074#1099#1073#1088#1072#1085#1085#1086 +
            #1081' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
          Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1090#1086#1083#1100#1082#1086' '#1072#1091#1076#1080#1090#1086#1088#1080#1080' '#8470
          TabOrder = 0
          OnClick = cbViewOnlyAuditoriiClick
          OnEnter = cbViewOnlyAuditoriiEnter
        end
        object eNAuditorii: TComboBox
          Left = 272
          Top = 12
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
          PopupMenu = FMainForm.PopupMenueENAuditorii
          TabOrder = 2
          TabStop = False
          Text = 'eNAuditorii'
        end
        object cbNotViewAniAuditorii: TCheckBox
          Left = 28
          Top = 40
          Width = 225
          Height = 17
          Hint = #1057#1084#1077#1085#1072' '#1085#1086#1084#1077#1088#1072' '#1072#1091#1076#1080#1090#1086#1088#1080#1080' '#1073#1091#1076#1077#1090' '#1079#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1072
          Caption = #1053#1077' '#1087#1088#1077#1076#1083#1086#1075#1072#1090#1100' '#1074#1099#1073#1086#1088' '#1076#1088#1091#1075#1086#1081' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Hint = #1054#1087#1094#1080#1080' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080' '#1076#1072#1085#1085#1099#1093
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 4
        Top = 4
        Width = 377
        Height = 69
        TabOrder = 0
        object rbSortMany: TRadioButton
          Left = 12
          Top = 40
          Width = 201
          Height = 17
          Hint = 
            #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1074#1099#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1086' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1084' '#1087#1086#1083#1103#1084'. '#1044#1083#1103' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1074#1099#1073#1088#1072#1085 +
            #1085#1099#1093' '#1087#1086#1083#1077#1081' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' "'#1053#1072#1089#1090#1088#1086#1080#1090#1100'..."'
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1084' '#1087#1086#1083#1103#1084
          TabOrder = 1
          OnEnter = rbSortManyEnter
        end
        object rbSortOne: TRadioButton
          Left = 12
          Top = 16
          Width = 201
          Height = 17
          Hint = 
            #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1074#1099#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1090#1086#1083#1100#1082#1086' '#1087#1086' '#1086#1076#1085#1086#1084#1091' '#1087#1086#1083#1102', '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1082#1083#1080#1082#1086#1084' ' +
            #1084#1099#1096#1082#1080' '#1087#1086' '#1079#1072#1075#1086#1083#1086#1074#1082#1091' '#1089#1090#1086#1083#1073#1094#1072' '#1074' '#1090#1072#1073#1083#1080#1094#1077
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1086#1076#1085#1086#1084#1091' '#1087#1086#1083#1102
          Checked = True
          TabOrder = 0
          TabStop = True
          OnEnter = rbSortOneEnter
        end
        object bSortOptions: TButton
          Left = 224
          Top = 32
          Width = 137
          Height = 25
          Hint = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1089#1086#1088#1090#1080#1088#1091#1077#1084#1099#1077' '#1087#1086#1083#1103'...'
          Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100'...'
          TabOrder = 2
          OnClick = bSortOptionsClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Hint = #1054#1087#1094#1080#1080' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 4
        Top = 4
        Width = 377
        Height = 69
        TabOrder = 0
        object cbAddAutoData: TCheckBox
          Left = 12
          Top = 40
          Width = 201
          Height = 17
          Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1087#1091#1089#1090#1099#1093' '#1087#1086#1083#1077#1081
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1087#1086#1083#1077#1081
          TabOrder = 1
          OnClick = cbAddAutoDataClick
          OnEnter = cbAddAutoDataEnter
        end
        object bOptionsAutoData: TButton
          Left = 224
          Top = 32
          Width = 137
          Height = 25
          Hint = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1087#1086'-'#1091#1084#1086#1083#1095#1072#1085#1080#1102'...'
          Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100'...'
          TabOrder = 2
          OnClick = bOptionsAutoDataClick
        end
        object cbAutoTime: TCheckBox
          Left = 12
          Top = 16
          Width = 201
          Height = 17
          Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1086#1073#1085#1086#1074#1083#1103#1090#1100' '#1074#1088#1077#1084#1103
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1086#1073#1085#1086#1074#1083#1103#1090#1100' '#1074#1088#1077#1084#1103
          TabOrder = 0
        end
      end
    end
  end
  object bCancel: TButton
    Left = 328
    Top = 120
    Width = 75
    Height = 25
    Hint = #1042#1099#1081#1090#1080' '#1073#1077#1079' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = bCancelClick
  end
  object bApp: TButton
    Left = 248
    Top = 120
    Width = 75
    Height = 25
    Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = bAppClick
  end
  object bOK: TButton
    Left = 168
    Top = 120
    Width = 75
    Height = 25
    Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1080' '#1074#1099#1081#1090#1080
    Caption = #1054#1050
    TabOrder = 1
    OnClick = bOKClick
  end
end
