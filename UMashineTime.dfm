object FMainForm: TFMainForm
  Left = 22
  Top = 70
  Width = 769
  Height = 492
  Caption = #1059#1095#1077#1090' '#1084#1072#1096#1080#1085#1085#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080' v1.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelEdit: TPanel
    Left = 0
    Top = 50
    Width = 761
    Height = 207
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    Visible = False
    DesignSize = (
      761
      207)
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 177
      Height = 49
      Caption = ' '#1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object eDate: TEdit
        Left = 8
        Top = 16
        Width = 81
        Height = 24
        Cursor = crArrow
        Hint = #1044#1072#1090#1072
        TabStop = False
        BiDiMode = bdLeftToRight
        Ctl3D = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenuEDate
        ShowHint = True
        TabOrder = 1
      end
      object eTime: TEdit
        Left = 88
        Top = 16
        Width = 81
        Height = 24
        Cursor = crArrow
        Hint = #1042#1088#1077#1084#1103
        TabStop = False
        Ctl3D = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenuETime
        ShowHint = True
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 192
      Top = 8
      Width = 193
      Height = 49
      Caption = ' '#8470' '#1072#1091#1076#1080#1090#1086#1088#1080#1080' '#1080' '#8470' '#1055#1050' '
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object eNPK: TEdit
        Left = 104
        Top = 16
        Width = 81
        Height = 24
        Cursor = crArrow
        Hint = #8470' '#1055#1050
        Ctl3D = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object eNAuditorii: TComboBox
        Left = 8
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
        ParentShowHint = False
        PopupMenu = PopupMenueENAuditorii
        ShowHint = True
        TabOrder = 1
        TabStop = False
        Text = 'eNAuditorii'
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 64
      Width = 377
      Height = 73
      Caption = ' '#1057#1090#1091#1076#1077#1085#1090' '
      TabOrder = 2
      DesignSize = (
        377
        73)
      object Label1: TLabel
        Left = 8
        Top = 48
        Width = 27
        Height = 13
        Caption = #1060#1048#1054
      end
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 78
        Height = 13
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      end
      object eFIO: TEdit
        Left = 96
        Top = 40
        Width = 273
        Height = 24
        Cursor = crArrow
        Hint = #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103' '#1080' '#1086#1090#1095#1077#1089#1090#1074#1086' '#1089#1090#1091#1076#1077#1085#1090#1072
        Ctl3D = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object eSpecialnoct: TComboBox
        Left = 96
        Top = 16
        Width = 273
        Height = 24
        Cursor = crArrow
        Hint = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenuSpecialnoct
        ShowHint = True
        TabOrder = 0
        Text = 'eWorkType'
      end
    end
    object GroupBox4: TGroupBox
      Left = 392
      Top = 8
      Width = 361
      Height = 185
      Anchors = [akLeft, akTop, akRight]
      Caption = ' '#1056#1072#1073#1086#1090#1072' '#1079#1072' '#1055#1050' '
      TabOrder = 3
      DesignSize = (
        361
        185)
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 59
        Height = 13
        Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
      end
      object Label4: TLabel
        Left = 8
        Top = 48
        Width = 110
        Height = 13
        Caption = #1056#1072#1073#1086#1090#1072' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1072#1093
      end
      object Label5: TLabel
        Left = 8
        Top = 80
        Width = 256
        Height = 13
        Caption = #1053#1077#1087#1086#1083#1072#1076#1082#1080', '#1074#1086#1079#1085#1080#1082#1096#1080#1077' '#1074#1086' '#1074#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1089#1090#1091#1076#1077#1085#1090#1072
      end
      object eError: TMemo
        Left = 8
        Top = 96
        Width = 345
        Height = 81
        Cursor = crArrow
        Hint = #1053#1077#1087#1086#1083#1072#1076#1082#1080', '#1074#1086#1079#1085#1080#1082#1096#1080#1077' '#1074#1086' '#1074#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1089#1090#1091#1076#1077#1085#1090#1072
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = True
        TabOrder = 0
      end
      object eWorkType: TComboBox
        Left = 128
        Top = 16
        Width = 225
        Height = 24
        Cursor = crArrow
        Hint = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenuEWorkType
        ShowHint = True
        TabOrder = 1
        Text = 'eWorkType'
      end
      object eSoftType: TComboBox
        Left = 128
        Top = 40
        Width = 225
        Height = 24
        Cursor = crArrow
        Hint = #1055#1088#1086#1075#1088#1072#1084#1084#1099', '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077' '#1074' '#1088#1072#1073#1086#1090#1077
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenuESoftType
        ShowHint = True
        TabOrder = 2
        Text = 'eSoftType'
      end
    end
    object bAddingData: TButton
      Left = 8
      Top = 144
      Width = 377
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1041#1044
      TabOrder = 4
      OnClick = bAddingDataClick
    end
    object bModifyData: TButton
      Left = 8
      Top = 168
      Width = 377
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1041#1044
      Enabled = False
      TabOrder = 5
      OnClick = bAddingDataClick
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 761
    Height = 24
    AutoSize = True
    Caption = 'ToolBar1'
    Flat = True
    Images = ImageList
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
    object tbConnection: TToolButton
      Left = 8
      Top = 0
      Hint = #1057#1086#1077#1076#1080#1085#1080#1090#1100#1089#1103' '#1089' '#1041#1044
      Caption = #1057#1086#1077#1076#1080#1085#1080#1090#1100#1089#1103' '#1089' '#1041#1044
      ImageIndex = 8
      OnClick = mbConnectClick
    end
    object tbDisconnection: TToolButton
      Left = 31
      Top = 0
      Hint = #1056#1072#1079#1089#1086#1077#1076#1080#1085#1080#1090#1100#1089#1103' '#1089' '#1041#1044
      Caption = #1056#1072#1079#1089#1086#1077#1076#1080#1085#1080#1090#1100#1089#1103' '#1089' '#1041#1044
      Enabled = False
      ImageIndex = 6
      OnClick = mbDisconnectClick
    end
    object ToolButton4: TToolButton
      Left = 54
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object tbAddData: TToolButton
      Left = 62
      Top = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1041#1044
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1041#1044
      Enabled = False
      ImageIndex = 10
      OnClick = bAddingDataClick
    end
    object tbDeleteData: TToolButton
      Left = 85
      Top = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1080#1079' '#1041#1044
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1080#1079' '#1041#1044
      Enabled = False
      ImageIndex = 11
      OnClick = pmDeleteDataClick
    end
    object ToolButton7: TToolButton
      Left = 108
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object tbAddError: TToolButton
      Left = 116
      Top = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1086' '#1085#1077#1087#1086#1083#1072#1076#1082#1077
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1086' '#1085#1077#1087#1086#1083#1072#1076#1082#1077
      Enabled = False
      ImageIndex = 19
      OnClick = pmAddingErrorClick
    end
    object tbDeleteError: TToolButton
      Left = 139
      Top = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1086' '#1085#1077#1087#1086#1083#1072#1076#1082#1077
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1086' '#1085#1077#1087#1086#1083#1072#1076#1082#1077
      Enabled = False
      ImageIndex = 18
      OnClick = pmDelitingErrorClick
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 427
    Width = 761
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 75
      end
      item
        Alignment = taCenter
        Width = 75
      end
      item
        Alignment = taCenter
        Text = 'Disconnect'
        Width = 75
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object PanelView: TPanel
    Left = 0
    Top = 257
    Width = 761
    Height = 170
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 3
    Visible = False
    DesignSize = (
      761
      170)
    object Panel3: TPanel
      Left = 8
      Top = 8
      Width = 745
      Height = 144
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Panel3'
      TabOrder = 0
      object DBGridTableMain: TDBGrid
        Left = 2
        Top = 2
        Width = 741
        Height = 140
        Cursor = crArrow
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = DataSourceMain
        FixedColor = clWindow
        ParentCtl3D = False
        PopupMenu = PopupMenuMain
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = DBGridTableMainEnter
        OnExit = DBGridTableMainExit
        OnTitleClick = DBGridTableMainTitleClick
      end
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 24
    Width = 761
    Height = 26
    AutoSize = True
    Caption = 'ToolBar2'
    EdgeBorders = [ebTop, ebBottom]
    Flat = True
    Images = ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    object ToolButton11: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object tbAddDate: TToolButton
      Left = 8
      Top = 0
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1076#1072#1090#1091
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1076#1072#1090#1091
      Enabled = False
      ImageIndex = 15
      OnClick = pmAddDateClick
    end
    object tbAddTime: TToolButton
      Left = 31
      Top = 0
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1077#1077' '#1074#1088#1077#1084#1103
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1077#1077' '#1074#1088#1077#1084#1103
      Enabled = False
      ImageIndex = 13
      OnClick = pmAddTimeClick
    end
    object ToolButton14: TToolButton
      Left = 54
      Top = 0
      Width = 8
      Caption = 'ToolButton14'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbAutoInsert: TToolButton
      Left = 62
      Top = 0
      Hint = #1047#1085#1072#1095#1077#1085#1080#1103' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102'...'
      Caption = 'tbAutoInsert'
      ImageIndex = 3
      PopupMenu = PopupMenuAutoInsert
      OnClick = tbAutoInsertClick
    end
  end
  object TableMain: TADOTable
    Connection = ADOConnection
    AfterOpen = TableMainAfterOpen
    AfterScroll = TableMainAfterScroll
    TableName = #1046#1091#1088#1085#1072#1083
    Left = 688
    Top = 224
  end
  object TableAuditorii: TADOTable
    Connection = ADOConnection
    AfterOpen = TableAuditoriiAfterOpen
    TableName = #1040#1091#1076#1080#1090#1086#1088#1080#1080
    Left = 688
    Top = 256
  end
  object TableWorkType: TADOTable
    Connection = ADOConnection
    AfterOpen = TableWorkTypeAfterOpen
    TableName = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
    Left = 688
    Top = 288
  end
  object TableSoftType: TADOTable
    Connection = ADOConnection
    AfterOpen = TableSoftTypeAfterOpen
    TableName = #1055#1088#1086#1075#1088#1072#1084#1084#1099
    Left = 688
    Top = 320
  end
  object TableErrors: TADOTable
    Connection = ADOConnection
    TableName = #1053#1077#1087#1086#1083#1072#1076#1082#1080
    Left = 688
    Top = 352
  end
  object MainMenu: TMainMenu
    Images = ImageList
    Left = 592
    Top = 224
    object MainMEnu2: TMenuItem
      Caption = #1041#1044
      ImageIndex = 20
      object mbConnect: TMenuItem
        Caption = #1057#1086#1077#1076#1080#1085#1080#1090#1100#1089#1103'...'
        ImageIndex = 8
        OnClick = mbConnectClick
      end
      object mbDisconnect: TMenuItem
        Caption = #1056#1072#1079#1089#1086#1077#1076#1080#1085#1080#1090#1100#1089#1103
        Enabled = False
        ImageIndex = 6
        OnClick = mbDisconnectClick
      end
      object mbRefreshConnection: TMenuItem
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1077'...'
        Enabled = False
        OnClick = mbRefreshConnectionClick
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N11: TMenuItem
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1041#1044'...'
        OnClick = N11Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object mbClose: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ImageIndex = 7
        OnClick = mbCloseClick
      end
    end
    object mbEditing: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Enabled = False
      OnClick = PopupMenuMainPopup
      object mbAddingData: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1074' '#1041#1044
        ImageIndex = 10
        OnClick = bAddingDataClick
      end
      object N31: TMenuItem
        Caption = '-'
      end
      object N33: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
        ImageIndex = 14
        object N25: TMenuItem
          Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
          ImageIndex = 9
          object N27: TMenuItem
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'...'
            ImageIndex = 2
            OnClick = pmAddingWorkTypeClick
          end
        end
        object N26: TMenuItem
          Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1099
          ImageIndex = 9
          object N36: TMenuItem
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'...'
            ImageIndex = 2
            OnClick = pmAddingSoftTypeClick
          end
        end
        object N35: TMenuItem
          Caption = #8470' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
          ImageIndex = 9
          object N39: TMenuItem
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'...'
            ImageIndex = 2
            OnClick = pmAddingAuditoriiClick
          end
        end
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object mbAddData: TMenuItem
        Caption = #1056#1077#1078#1080#1084' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093
        Checked = True
        OnClick = pmAddDataClick
      end
      object mbModifyData: TMenuItem
        Caption = #1056#1077#1078#1080#1084' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1076#1072#1085#1085#1099#1093
        OnClick = pmModifyDataClick
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object mbAddingError: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1086' '#1085#1077#1087#1086#1083#1072#1076#1082#1077'...'
        ImageIndex = 19
        OnClick = pmAddingErrorClick
      end
      object mbDelitingError: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1086' '#1085#1077#1087#1086#1083#1072#1076#1082#1077
        ImageIndex = 18
        OnClick = pmDelitingErrorClick
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object N19: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        ImageIndex = 11
        OnClick = pmDeleteDataClick
      end
    end
    object N10: TMenuItem
      Caption = #1054#1087#1094#1080#1080
      object N44: TMenuItem
        Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1072#1103' '#1087#1086#1076#1089#1090#1072#1085#1086#1074#1082#1072' '#1076#1072#1085#1085#1099#1093
        object mbAddDate: TMenuItem
          Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1076#1072#1090#1091
          Enabled = False
          ImageIndex = 15
          OnClick = pmAddDateClick
        end
        object N42: TMenuItem
          Caption = '-'
        end
        object mbAddTime: TMenuItem
          Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1077#1077' '#1074#1088#1077#1084#1103
          Enabled = False
          ImageIndex = 13
          OnClick = pmAddTimeClick
        end
        object mbAutoUpdateTime: TMenuItem
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1086#1073#1085#1086#1074#1083#1103#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074#1088#1077#1084#1077#1085#1080
          Checked = True
          Enabled = False
          OnClick = pmAutoUpdateTimeClick
        end
        object N46: TMenuItem
          Caption = '-'
        end
        object N45: TMenuItem
          Caption = #1047#1085#1072#1095#1077#1085#1080#1103' '#1087#1086'-'#1091#1084#1086#1083#1095#1072#1085#1080#1102
          object mbAddAutoData: TMenuItem
            Caption = #1042#1089#1090#1072#1074#1080#1090#1100
            Enabled = False
            ImageIndex = 16
            OnClick = pmAddAutoDataClick
          end
          object N49: TMenuItem
            Caption = '-'
          end
          object mbModifyAutoData: TMenuItem
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100'...'
            ImageIndex = 3
            OnClick = pmModifyAutoDataClick
          end
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mbOutData: TMenuItem
        Caption = #1054#1090#1095#1077#1090#1099'...'
        Enabled = False
        ImageIndex = 17
        OnClick = mbOutDataClick
        object N7: TMenuItem
        end
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mbOptions: TMenuItem
        Caption = #1053#1072#1089#1090#1086#1081#1082#1072'...'
        ImageIndex = 3
        OnClick = mbOptionsClick
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object N20: TMenuItem
        Caption = #1042#1099#1079#1086#1074' '#1089#1087#1088#1072#1074#1082#1080
        ImageIndex = 1
        OnClick = mbHelp
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object mbAbout: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
        OnClick = mbAboutClick
      end
    end
  end
  object TimeTimer: TTimer
    Enabled = False
    OnTimer = TimeTimerTimer
    Left = 656
    Top = 257
  end
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='#1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093'\'#1059#1095#1077#1090' '#1084#1072 +
      #1096#1080#1085#1085#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080'.mdb;Mode=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 656
    Top = 225
  end
  object PopupMenuEDate: TPopupMenu
    Images = ImageList
    Left = 592
    Top = 287
    object pmAddDate: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1076#1072#1090#1091
      ImageIndex = 15
      OnClick = pmAddDateClick
    end
  end
  object PopupMenuETime: TPopupMenu
    Images = ImageList
    Left = 592
    Top = 255
    object pmAddTime: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1077#1077' '#1074#1088#1077#1084#1103
      ImageIndex = 13
      OnClick = pmAddTimeClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object pmAutoUpdateTime: TMenuItem
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1086#1073#1085#1086#1074#1083#1103#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077
      Checked = True
      OnClick = pmAutoUpdateTimeClick
    end
  end
  object PopupMenueENAuditorii: TPopupMenu
    Images = ImageList
    Left = 624
    Top = 255
    object pmAddingAuditorii: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1041#1044
      ImageIndex = 2
      OnClick = pmAddingAuditoriiClick
    end
  end
  object DataSourceErrors: TDataSource
    AutoEdit = False
    DataSet = TableErrors
    Left = 720
    Top = 353
  end
  object PopupMenuEWorkType: TPopupMenu
    Images = ImageList
    Left = 624
    Top = 289
    object pmAddingWorkType: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1041#1044
      ImageIndex = 2
      OnClick = pmAddingWorkTypeClick
    end
  end
  object PopupMenuESoftType: TPopupMenu
    Images = ImageList
    Left = 624
    Top = 321
    object pmAddingSoftType: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1041#1044
      ImageIndex = 2
      OnClick = pmAddingSoftTypeClick
    end
  end
  object DataSourceMain: TDataSource
    AutoEdit = False
    DataSet = TableMain
    Left = 720
    Top = 225
  end
  object PopupMenuMain: TPopupMenu
    Images = ImageList
    OnPopup = PopupMenuMainPopup
    Left = 624
    Top = 224
    object pmAddData: TMenuItem
      Caption = #1056#1077#1078#1080#1084' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093
      Checked = True
      OnClick = pmAddDataClick
    end
    object pmModifyData: TMenuItem
      Caption = #1056#1077#1078#1080#1084' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1076#1072#1085#1085#1099#1093
      OnClick = pmModifyDataClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object pmAddingError: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1086' '#1085#1077#1087#1086#1083#1072#1076#1082#1077
      ImageIndex = 19
      OnClick = pmAddingErrorClick
    end
    object pmDelitingError: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '#1086' '#1085#1077#1087#1086#1083#1072#1076#1082#1077
      ImageIndex = 18
      OnClick = pmDelitingErrorClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object pmDeleteData: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 11
      OnClick = pmDeleteDataClick
    end
  end
  object SQLAddingData: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 560
    Top = 225
  end
  object DataSourceAddingData: TDataSource
    DataSet = SQLAddingData
    Left = 720
    Top = 289
  end
  object ImageList: TImageList
    Left = 528
    Top = 225
    Bitmap = {
      494C010115001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001001000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000B10D000000000000000000000000FF7FFF7FFF7FC618C61880568056
      C07FC07FC07F8056C618FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AF57FF57F
      F57FF57FF57FF57FF57FF37FF57FF37FEA14FF7F0000FF7F1002FF7F1002FF7F
      FF7F0000000000000000FF7F0000FF7FFF7F0000000000000000000000000000
      000090017F16B10D00000000000000000000FF7FC618C61880568056C07FC07F
      CC00CC008056C07F8056C618FF7FFF7FFF7FFF7FFF7FFF7FFF7F524AF57FF57F
      F57FF57FF57FF57FF57FF57FF37FF57FCE39FF7F0000FF7F100210021002FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7FB556CE39EA14EA14E71CE71CD65A
      90017F169B3E7F16B10DCE39CE39E71C9452CC0080568056C07FC07FCC006F01
      9B3E9B3ECC008056C07F8056C618FF7FFF7FFF7FFF7FFF7FFF7F524AF57FF57F
      F57FF57FF57FF57FF57FF37FF57FF37F1042FF7F0000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7F524AF57FF37FF37F6A7FEA6A9001
      9B3E9B3E9B3E9B3E7F16B10D6A7F0A6BE71CCC00C07FC07FCC006F01D701D701
      D701D7019B3ECC008056C07F8056C618FF7FFF7FFF7FFF7FFF7F524AD37FF57F
      F37FF57FF37FF57FF37FF57FF37FF57F3146FF7F0000FF7F100210021002FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7F524AF57FF57FF57FF57F90019B3E
      FF63FF639B3E9B3E9B3E7F16B10D6A7FE71CCC00CC00CC00D701D701D701C07F
      D701D701D7019B3ECC008056C07F8056C618FF7FFF7FFF7FFF7F18631863D37F
      F57FF37FF57FF37FF57FF37FF57FF37F734EFF7F0000FF7F1002FF7F1002FF7F
      FF7F0000000000000000FF7F0000FF7FFF7F524AF57FF57FF57FFC3EB10DB10D
      B10DFF63FF639B3EB10DB10DB10DFC3ECE39CC006F01D401D701D701D701CD7F
      D701D701D701D7019B3ECC008056C618FF7FFF7FFF7FBD02D4016F01BD021863
      D37FD37FD37FD37FD37FD37FD37FD37F9452FF7F0000FF7F100210021002FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7F524AF57FF57FF57FF57FF57FF57F
      F319FF63FF63DF57F319D65AF37F6A7FE71CFF7FCC007F169B3ED701D701D701
      D701C07FC07FD701D7019B3ECC00C618FF7FFF7FFF7F6F019B3E9B3E6F011863
      1863D37FD37FD37FD37F6A7F6A7FEA6ACE39FF7F0000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7F524A0000F57FF57FF57FF57FF57F
      3522FF63FF639B3E5F4BD37F6A7F756BE71CFF7FFF7FCC007F169B3ED701D701
      D701D701CD7FC07FC07FD7019B3EC618FF7FBD02D401D4019B3E9B3ED4016F01
      BD021863D37FD37FD65A9452CE39CE39D65AFF7F0000FF7FFF7F007CFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7F524AF57FF57FF57FF57FF57F5726
      9B3EDF57FF633522D37FD37FF37F6A7F6B2DFF7FFF7FFF7FCC00FF3F9B3ED701
      CD7FD701D701C07FC07FD701D7019B3EC618F5013E379B3E9B3E9B3E9B3E7F16
      6F011863D37FD37F94529C737B6F7B6FD65AFF7F0000FF7F007C007C007CFF7F
      FF7F0000000000000000FF7F0000FF7FFF7FB5560000F57F0000F57FF57F5726
      9F4FDF57FC3A5F4BF57FF57FF57FF57F8C31FF7FFF7FFF7FFF7FCC00FF3F9B3E
      D701CD7FC07FC07FD7019B3E7F166F01CC00F501FF67FF673E379B3E3E373E37
      D4011863D37FD37F9452F57F9C73D65AFF7FFF7F0000FF7FFF7FFF7F007C007C
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7FD65AF57F0000F57FF57F351E9B3E
      5F4BFC3EF57FF57FF57FF57FF57FF57FCE39FF7FFF7FFF7FFF7FFF7FCC00FF3F
      9B3ED701D7019B3E7F166F01CC00FF7FFF7F5E37DC12DC16FF333E37F501F501
      3E37FF7FF57F9C733146FF7FD65AFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7F18630000F57F0000DA36DA36DA36
      DA363D4318631863756BEA6AEA6AEA6A1042FF7FFF7FFF7FFF7FFF7FFF7FCC00
      FF3FFF3FFF3F6F01CC00FF7FFF7FFF7FFF7FFF7FFF7FFE16FF4FFF4FF501D65A
      39671863D65A314631461863FF7FFF7FFF7FFF7F104200001042000010420000
      1042000010420000104200001042FF7FFF7F3967D65AD65AD65A3967756B756B
      6A7F6A7F6A7F6A7F6A7F6A7F6A7FEA6A1863FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      CC00CC00CC00FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5F373F173F1B3E37FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F0000FF7F0000
      FF7F0000FF7F0000FF7F0000FF7FFF7FFF7F00007B6FC07FC07FC07FC07FEA6A
      9C7331463146314631463146314631460000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F30292000300040000108
      1C007E0C4000000000003E101C0000007E0C2100000210003E10000000000000
      000000000000B319B22700000000383D37100000734EEA7FCC7FCC7FCC7FC07F
      D65A00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FB556CE39EA14
      EA14EA14EA14EA14EA14EA14EA14EA149452FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000734E314631463146734E
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      C618C618C618FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AF57FF57F
      F57FF57FF57FF37FF57FF37FF57FF37FEA14FF7FFF7FFF7FFF7FFF7F00000000
      000000000000FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000100000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B556CE39EA14
      EA14EA14EA14EA14EA14EA14EA14EA1494520000000000000000B556CE39EA14
      EA14EA14EA14EA14EA14EA14EA14EA1494520000000000000000000000000000
      0000100000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000524AF57FF57F
      F57FF57FF57F0048F57FF57FF57FF57FEA140000000000000000524AF57FF57F
      F57FF57FF57F0048F57FF57FF57FF57FEA140000000000000000000000001000
      1000100010001000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000524AF57FF57F
      F57F00440044004800400040F57FF57FEA140000000000000000524AF57FF57F
      F57F00440044004800400040F57FF57FEA140000000000000000000000000000
      1000100010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000524AF57FF57F
      004CA55400500058295900440040F57FEA140000000000000000524AF57FF57F
      004CA55400500058295900440040F57FEA140000000000000000000000000000
      0000100000000000000000000000000000000000000000000000000000001042
      1042104210420000104210421042000000000000000000000000524AF57FF57F
      0058005CFF7F4A69FF7F005C004CF57FCE390000000000000000524AF57FF57F
      0058005CFF7F4A69FF7F005C004CF57FCE391042104210421042104210421042
      1042104210421042104210421042104200000000000000001042104210421042
      1042000010421042104210420000104200000000000000000000524AF57F2168
      216800682861FF7F006000640058005810420000000000000000524AF57F2168
      216800682861FF7F006000640058005810421042FF7FFF7FFF7FFF7F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F104200000000000010420000000000001042
      1042104210421042104210421042104200000000000000000000524AD37FF57F
      63782971FF7F0068FF7F00702160F57F31460000000000000000524AD37FF57F
      63782971FF7F0068FF7F00702160F57F31461042FF7F00000000FF7F0000FF7F
      000000000000000000000000FF7F104200000000104200001042000000000000
      1042104200000000000010421042000000000000000000000000524AF57FD37F
      A57C297D427C00786378847C4268F57F734E000000000000000018631863D37F
      A57C297D427C00786378847C4268F57F734E1042FF7FFF7FFF7FFF7F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F104200001042000000000000FF7FFF7FFF7F
      00000000FF7FFF7FFF7F00000000000000000000000000000000524AF57FF57F
      F57F297D297D297DAD7D847CF57FF57F945200000000BD02D4016F01BD021863
      F57F297D297D297DAD7D847CF57FF57F94521042FF7F00000000FF7F0000FF7F
      00000000000000000000FF7FFF7F104200000000000000000000FF7FFF7FFF7F
      00000000FF7FFF7FFF7F00000000000000000058000000000000524AF57F0058
      F57FD37FD37F297DD37F6A7F6A7FEA6ACE39000000006F019B3E9B3E6F011863
      1863D37FD37F297DD37F6A7F6A7FEA6ACE391042FF7FFF7FFF7FFF7F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F1042000000000000000000001863FF7FFF7F
      000000001863FF7FFF7F00000000000000000058005800000000524A0058F57F
      F57FF57FD37FD37FD65A9452CE39CE39D65ABD02D401D4019B3E9B3ED4016F01
      BD021863D37FD37FD65A9452CE39CE39D65A1042FF7F00000000FF7F0000FF7F
      000000000000000000000000FF7F104200000000000000001042000000000000
      00001042000000000000104200000000000000000000005800000058F57FF57F
      F57FF57FD37FD37F94529C737B6F7B6FD65AF5013E379B3E9B3E9B3E9B3E7F16
      6F011863D37FD37F94529C737B6F7B6FD65A1042FF7FFF7FFF7FFF7F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F104200001042000010420000000000000000
      0000000000001042000000000000000000000000000000000060524AF57FF57F
      F57FF57FD37FD37F9452F57F9C73D65A0000F501FF67FF673E379B3E3E373E37
      D4011863D37FD37F9452F57F9C73D65A00001042104210421042104210421042
      1042104210421042104210421042104200000000000000000000000000000000
      00000000000000000000000000000000000000000000006C00000070524AF57F
      F57FF57FF57F9C7331460000D65A000000005E37DC12DC16FF333E37F501F501
      3E370000F57F9C7331460000D65A000000001042000000000000000000000000
      0000000000000000000000000000104200000000000000000000000000000000
      000000000000000000000000000000000000000000780000000000000078524A
      524A524A524A31463146186300000000000000000000FE16FF4FFF4FF501D65A
      39671863D65A3146314618630000000000001042104210421042104210421042
      1042104210421042104210421042104200000000000000000000000000000000
      0000000000000000000000000000000000000078000000000000000000000000
      000000000000000000000000000000000000000000005F373F173F1B3E370000
      0000000000000000000000000000000000000000000000000000B556CE39EA14
      EA14EA14EA14EA14EA14EA14EA14EA1494520000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FBB77FF7FFF7FBB77
      FF7FFF7FBB77FF7FFF7FBB77FF7FFF7FBB770000000000000000524AF57FF57F
      F57FF57FF57FF37FF57FF37FF57FF37FEA140000000000000000000000000000
      000000000000000000000000000000000000B356000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FBB77FF7FFF7FBB77
      FF7FFF7FBB77FF7FFF7FBB77FF7FFF7FBB770000000000000000524AF57FF57F
      F57FF57FF57FF57FF37FF57FF37FF57FEA1400000000000000000000FF7FFF7F
      FF7FFF7FFF7F000000000000000000000000B356FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000BB77BB77BB77BB77BB77BB77
      BB77BB77BB77BB77BB77BB77BB77BB77BB770000000000000000524AF57FF57F
      F57FF57FF57FF57FF57FF37FF57FF37FEA14000000000000FF7FFF7FFF7FFF7F
      0040FF7FFF7FFF7FFF7F0000000000000000B356FF7F10001000100010001000
      10001000FF7FFF7F0000FF7F0000000000000000FF7FFF7FBB77FF7FFF7FBB77
      FF7FFF7FBB77FF7FFF7FBB77007C007CBB770000000000000000524AF57FF57F
      F57FF57FF57FF57FF57FF57FF37FF57FCE39000000000000FF7F0040FF7FFF7F
      FF7FFF7FFF7F0040FF7F0000000000000000B356FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7F0000000000000000FF7FFF7FBB77FF7FFF7FBB77
      FF7FFF7FBB77FF7FFF7FBB77007C007CBB770000000000000000524AF57FF57F
      F57FF57FF57FF57FF57FF37FF57FF37F104200000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000B356FF7F10001000100010001000
      1000FF7FFF7FFF7F000000000000000000000000BB77BB77BB77BB77BB77BB77
      BB77BB77BB77BB77BB77BB77BB77BB77BB770000000000000000524AD37FF57F
      F37FF57FF37FF57FF37FF57FF37FF57F314600000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000B356100010001000100010001000
      1000100010001000000000000000000000000000FF7FFF7FBB77007C007CBB77
      FF7FFF7FBB77FF7FFF7FBB77FF7FFF7FBB770000000000000000524AF57FD37F
      F57FF37FF57FF37FF57FF37FF57FF37F734E0000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000FF7FFF7FFF7F00000000B3561000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F10001000000000000000000000000000FF7FFF7FBB77007C007CBB77
      FF7FFF7FBB77FF7FFF7FBB77FF7FFF7FBB770000000000000000524AF57FF57F
      F57FD37FD37FD37FD37FD37FD37FD37F94520000FF7F0040FF7FFF7FFF7FFF7F
      000000000000FF7FFF7F0040FF7F00000000B356100010001000100010001000
      1000100010001000000000000000000000000000BB77BB77BB77BB77BB77BB77
      BB77BB77BB77BB77BB77BB77BB77BB77BB770058000000000000524AF57F0058
      F57FD37FD37FD37FD37F6A7F6A7FEA6ACE390000FF7FFF7FFF7FFF7FFF7FFF7F
      00000000FF7FFF7FFF7FFF7FFF7F00000000B356FF7F10001000100010001000
      1000FF7FFF7FFF7F000000000000000000000000FF7FFF7FBB77FF7FFF7FBB77
      FF7FFF7FBB77FF7FFF7FBB77FF7FFF7FBB770058005800000000524A0058F57F
      F57FF57FD37FD37FD65A9452CE39CE39D65A00000000FF7FFF7FFF7FFF7FFF7F
      00000000FF7FFF7FFF7FFF7F000000000000B356FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000FF7FFF7FBB77FF7FFF7FBB77
      FF7FFF7FBB77FF7FFF7FBB77FF7FFF7FBB7700000000005800000058F57FF57F
      F57FF57FD37FD37F94529C737B6F7B6FD65A00000000FF7FFF7FFF7FFF7FFF7F
      00000000FF7FFF7FFF7FFF7F000000000000B356FF7F10001000100010001000
      10001000FF7FFF7F000000000000000000000000BB77BB77BB77BB77BB77BB77
      BB77BB77BB77BB77BB77BB77BB77BB77BB770000000000000060524AF57FF57F
      F57FF57FD37FD37F9452F57F9C73D65A0000000000000000FF7F0040FF7FFF7F
      FF7FFF7FFF7F0040FF7F0000000000000000B356FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000100010001000100010001000
      10001000100010001000100010001000000000000000006C00000070524AF57F
      F57FF57FF57F9C7331460000D65A00000000000000000000FF7FFF7FFF7FFF7F
      0040FF7FFF7FFF7FFF7F0000000000000000B356FF7F10001000100010001000
      1000FF7FFF7FFF7F0000FF7F0000000000000000100010000000000000000000
      000000000000000000000000100010000000000000780000000000000078524A
      524A524A524A31463146186300000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7F000000000000000000000000B356FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7FFF7F000000000000100010001000100010001000
      1000100010001000100010001000100000000078000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B356B356B356B356B356B356B356
      B356B356B356B356000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000029250000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E00160032925
      0000000000000000000000000000000000000000FF7F0000FF7FFF7FFF7FFF7F
      FF7FBB77FF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000BD02D401
      D4016F016F01BD02BD0200000000000000000000000000000000000000000000
      0000000000000000000000000000005800580000000000000000E0016003E016
      2925000000000000000000000000000000000000BB770000FF7FFF7FFF7FFF7F
      FF7FBB77FF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000BD02D401
      D4016F016F01BD02BD0200000000000000000000005800580000000000000000
      0000000000000000000000000058005800000000000000000000E00160036003
      E016292500000000000000000000000000000000FF7F0000FF7F100010001000
      FF7FBB77FF7F1000100010001000FF7F0000000000000000000000006F019B3E
      9B3E9B3E9B3E6F016F0100000000000000000000005800580058000000000000
      0000000000000000000000580058000000000000000000000000E00160036003
      6003E01629250000000000000000000000000000BB770000FF7FFF7FFF7FFF7F
      FF7FBB77FF7FFF7FFF7FFF7FFF7FFF7F00000000BD02BD02D401D401D4019B3E
      9B3E9B3E9B3ED401D4016F01BD02BD0200000000005800580058005800000000
      0000000000000000005800580000000000000000000000000000E0016003E007
      60036003E0162925000000000000000000000000FF7F0000FF7F100010001000
      FF7FBB77FF7F100010001000FF7FFF7F00000000BD02BD02D401D401D4019B3E
      9B3E9B3E9B3ED401D4016F01BD02BD020000000000000068005C005800580000
      0000000000000058005800000000000000000000000000000000E001E0176003
      E00760036003E016292500000000000000000000BB770000FF7FFF7FFF7FFF7F
      FF7FBB77FF7FFF7FFF7FFF7FFF7FFF7F00000000F501F5013E373E379B3E9B3E
      9B3E9B3E9B3E9B3E9B3E7F166F016F0100000000000000000000005800580058
      0000005800580058000000000000000000000000000000000000E001EA03E017
      6003E00760036003E01629250000000000000000FF7F0000FF7F100010001000
      FF7FBB77FF7F1000100010001000FF7F00000000F501F5013E373E379B3E9B3E
      9B3E9B3E9B3E9B3E9B3E7F166F016F0100000000000000000000000000580060
      0060006400580000000000000000000000000000000000000000E001EA57E007
      E0176003E00760036003E0010000000000000000BB770000FF7FFF7FFF7FFF7F
      FF7FBB77FF7FFF7FFF7FFF7FFF7FFF7F00000000F501F501FF67FF67FF673E37
      3E379B3E9B3E3E373E373E37D401D40100000000000000000000000000000060
      0060006C00000000000000000000000000000000000000000000E001EA57E007
      E007E0176003EA57E00100000000000000000000FF7F0000FF7F100010001000
      FF7FBB77FF7F100010001000FF7FFF7F00000000F501F501FF67FF67FF673E37
      3E379B3E9B3E3E373E373E37D401D40100000000000000000000000000580068
      0064006C00740000000000000000000000000000000000000000E001F517E007
      E007E007E017E001000000000000000000000000BB770000FF7FFF7FFF7FFF7F
      FF7FBB77FF7FFF7FFF7FFF7FFF7FFF7F000000005E375E37DC12DC12DC16FF33
      FF333E373E37F501F501F5013E373E37000000000000000000000070006C0068
      0000000000700074000000000000000000000000000000000000E001F517E007
      E007F517E0010000000000000000000000000000FF7F0000FF7F100010001000
      FF7FBB77FF7F1000100010001000FF7F000000000000000000000000FE16FF4F
      FF4FFF4FFF4FF501F5010000000000000000000000000000007C006C00740000
      000000000000007C007800000000000000000000000000000000E001F557E007
      F517E00100000000000000000000000000000000BB770000FF7FFF7FFF7FFF7F
      FF7FBB77FF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000FE16FF4F
      FF4FFF4FFF4FF501F50100000000000000000000000000780078007C00000000
      0000000000000000007800780000000000000000000000000000E001F557F557
      E001000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000005F373F17
      3F173F1B3F1B3E373E3700000000000000000000007800780078000000000000
      0000000000000000000000000078000000000000000000000000E001F557E001
      0000000000000000000000000000000000000000BB770000FF7FBB77BB77BB77
      BB77BB77FF7FBB77BB77BB77BB77BB770000000000000000000000005F373F17
      3F173F1B3F1B3E373E3700000000000000000078007800780000000000000000
      00000000000000000000000000000000000000000000000000000000E0010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000078007800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000386B10460721
      A514A51407210F42386B00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009452CE39CE396B2D6B2D
      29252925E71CC618C618C6189452000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003046003800440040
      004000400040001C630C514A0000000000001042104210421042104210421042
      10421042104200001863104218630000186300009452CC0039679C7318631863
      3967DE7BBD779C739452C618C618945200000000000000000000000000000000
      0000000000000000000000000000000000000000000028410044004400440048
      004800440040003C004000000F42000000001042104210421042104210421042
      1042104210421042FF7F1042FF7F1042FF7FCC00CC00CC007B6F9C739C739C73
      9C739C739C739C737B6F3922CC00C618C6180000FF7F00000000000000000000
      0000000000000000FF7F000000000000000000008C4D00480048004800500050
      0050004C00480044004000440000B4560000D4016F016F016F01292529251042
      10421042FF7FFF7FFF7F6F016F016F01D401CC003922CC009B3E9B3E9B3E9B3E
      9B3E39223922392239223922CC006F01C6180000FF7F00000000000000000000
      0000000000000000FF7F00000000000000000000004C0050A554FF7F00500054
      005800542959FF7F004400440040C61C00000000000000006F01D401D4012925
      29251042FF7FFF7FFF7F6F01000000000000CC009B3ECC009B3E9B3E9B3E9B3E
      9B3E9B3E3922392239223922CC003922C6180000000000000000000000000000
      0000000000000000000000000000000000008454005000583953FF7FFF7F0054
      0058295DFF7FFF7F1056004C00480008F6620000000000006F01D401D401D401
      2925FF7FFF7FFF7FFF7F6F01000000000000CC009B3ECC009B3E9B3E9B3E9B3E
      9B3E9B3E9B3E392239223922CC003922E71C00000000FF7F0000000000000000
      00000000FF7F000000000000000000000000005000580060005C1853FF7FFF7F
      4A69FF7BFF7FAD45005C0054004C0034514A0000000000006F01D401D401D401
      2925FF7FFF7FFF7FFF7F6F01000000000000CC009B3ECC00F514CC00CC00CC00
      CC00CC00CC00CC00CC003922CC003922292500000000FF7F0000000000001863
      00000000FF7F0000000000000000000000002158006000640064005C7B5FFF7F
      FF7FFF7F105200600060005C0050004C10460000000000006F01D401D401D401
      2925FF6FFF43BE3BFF036F01000000000000CC009B3ECC00734EF57FF37FF37F
      F37FF37FF37FF37FF37FCC00CC003922292500000000FF7F0000000000001863
      00000000FF7F00000000000000000000000021602168216C006800682861FF7F
      FF7FFF7B00600064006400600058005C30460000000000006F01D401D401D401
      2925FF43FF43FF43FF436F01000000000000CC009B3ECC00F57F396794529452
      94529452945294521863F37FCC00392229250000000000000000000000000000
      0000000000000000000000000000000000004264427042740070E764FF7BFF7F
      FF7BFF7FFF7F006400682164005C0058724E0000000000006F01D401D401D401
      2925FF43FF43FF43FF436F01000000000000CC009B3E6F01F57FF57FF57FF57F
      F57FF57FF57FF57FF57FF37F6F0139222925000000000000FF7F000000000000
      00000000FF7F00000000000000000000000063686378637C2971FF7BFF7FEF51
      00683957FF7FFF7F0070216C21600048386B0000000000006F01D401D401D401
      2925FF03FF43FF43FF6F6F01000000000000CC009B3E6F01F57F396794529452
      94529452945294521863F37F6F01392229250000000000000000000000000000
      000000000000000000000000000000000000A570A57CA57C7B5BFF7FAD490074
      00700068F74EFF7FCE5D4270426429310000000000000000D4016F016F016F01
      6F016F016F016F016F01D401000000000000CC009B3E734EF57FF57FF57FF57F
      F57FF57FF57FF57FF57FF37F734E39226B2D0000000000000000000000000000
      0000000000000000000000000000000000000000A57C297D297DAD41427C007C
      0078217C63786B45847C84744268386700000000000000000000000000000000
      000000000000000000000000000000000000CC009B3E94520000396739223922
      94529452945294521863F37F94529B3E8C310000000000000000FF7F00000000
      000000000000FF7F000000000000000000000000CE71087DAD7D107ECE7D4A7D
      087D297D4A7D297DE77C8478D55A0000000000000000000000000000AD352925
      292529252925AD35000000000000000000009452CC006F0100000000F57FF57F
      F57FF57FF57FF57FF57FF57F6F01CC0094520000000000000000000000000000
      00000000000000000000000000000000000000000000CD71297DEF7D947E947E
      737E107EAD7D297D847CF7620000000000000000000000000000000029256003
      600360036003292500000000000000000000000000009452CC00CC00CC00CC00
      CC00CC00CC00CC00CC00CC00734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E77C8C7D107E
      EF7D8C7DE77C6B6D0000000000000000000000000000000000000000AD352925
      292529252925AD35000000000000000000000000000000000000000000000000
      00000000B10D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B556CE39EA14
      EA14EA14EA14EA14EA14EA14EA14EA1494520000104200000000000000000000
      0000000000000000000000001042000000000000000000000000000000000000
      000090017F16B10D000000000000000000000000000000000000000000000000
      C618C618C6180000000000000000000000000000000000000000524AF57FF57F
      F57FF57FF57FF37FF57FF37FF57FF37FEA1400000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000B556CE39EA14EA14E71CE71CD65A
      90017F169B3E7F16B10DCE39CE39E71C945200000000000000000000C618C618
      805680568056C618000000000000000000000000000000000000524AF57FF57F
      F57FF57FF57FF57FF37FF57FF37FF57FEA1400000000FF7F100210021002FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000524AF57FF37FF37F6A7FEA6A9001
      9B3E9B3E9B3E9B3E7F16B10D6A7F0A6BE71C000000000000C618C61880568056
      C07FC07FC07F8056C61800000000000000000000000000000000524AF57FF57F
      F57FF57FF57FF57FF57FF37FF57FF37FEA1400000000FF7F1002FF7F1002FF7F
      FF7F0000000000000000FF7F000000000000524AF57FF57FF57FF57F90019B3E
      FF63FF639B3E9B3E9B3E7F16B10D6A7FE71C0000C618C61880568056C07FC07F
      CC00CC008056C07F8056C6180000000000000000000000000000524AF57FF57F
      F57FF57FF57FF57FF57FF57FF37FF57FCE3900000000FF7F100210021002FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000524AF57FF57FF57FFC3EB10DB10D
      B10DFF63FF639B3EB10DB10DB10DFC3ECE39CC0080568056C07FC07FCC006F01
      9B3E9B3ECC008056C07F8056C618000000000000000000000000524AF57FF57F
      F57FF57FF57FF57FF57FF37FF57FF37F104200000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000524AF57FF57FF57FF57FF57FF57F
      F319FF63FF63DF57F319D65AF37F6A7FE71CCC00C07FC07FCC006F01D701D701
      D701D7019B3ECC008056C07F8056C61800000000000000000000524AD37FF57F
      F37FF57FF37FF57FF37FF57FF37FF57F314600000000FF7F100210021002FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000524A0000F57FF57FF57FF57FF57F
      3522FF63FF639B3E5F4BD37F6A7F756BE71CCC00CC00CC00D701D701D701C07F
      D701D701D7019B3ECC008056C07F8056C618000000000000000018631863D37F
      F57FF37FF57FF37FF57FF37FF57FF37F734E00000000FF7F1002FF7F1002FF7F
      FF7F0000000000000000FF7F000000000000524AF57FF57FF57FF57FF57F5726
      9B3EDF57FF633522D37FD37FF37F6A7F6B2DCC006F01D401D701D701D701CD7F
      D701D701D701D7019B3ECC008056C618000000000000BD02D4016F01BD021863
      D37FD37FD37FD37FD37FD37FD37FD37F945200000000FF7F100210021002FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000B5560000F57F0000F57FF57F5726
      9F4FDF57FC3A5F4BF57FF57FF57FF57F8C310000CC007F169B3ED701D701D701
      D701C07FC07FD701D7019B3ECC00C6180000000000006F019B3E9B3E6F011863
      1863D37FD37FD37FD37F6A7F6A7FEA6ACE3900000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000D65AF57F0000F57FF57F351E9B3E
      5F4BFC3EF57FF57FF57FF57FF57FF57FCE3900000000CC007F169B3ED701D701
      D701D701CD7FC07FC07FD7019B3EC6180000BD02D401D4019B3E9B3ED4016F01
      BD021863D37FD37FD65A9452CE39CE39D65A00000000FF7FFF7F007CFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000018630000F57F0000DA36DA36DA36
      DA363D4318631863756BEA6AEA6AEA6A1042000000000000CC00FF3F9B3ED701
      CD7FD701D701C07FC07FD701D7019B3EC618F5013E379B3E9B3E9B3E9B3E7F16
      6F011863D37FD37F94529C737B6F7B6FD65A00000000FF7F007C007C007CFF7F
      FF7F0000000000000000FF7F0000000000003967D65AD65AD65A3967756B756B
      6A7F6A7F6A7F6A7F6A7F6A7F6A7FEA6A18630000000000000000CC00FF3F9B3E
      D701CD7FC07FC07FD7019B3E7F166F01CC00F501FF67FF673E379B3E3E373E37
      D4011863D37FD37F9452F57F9C73D65A000000000000FF7FFF7FFF7F007C007C
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000007B6FC07FC07FC07FC07FEA6A
      9C733146314631463146314631463146000000000000000000000000CC00FF3F
      9B3ED701D7019B3E7F166F01CC00000000005E37DC12DC16FF333E37F501F501
      3E370000F57F9C7331460000D65A0000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000734EEA7FCC7FCC7FCC7FC07F
      D65A00000000000000000000000000000000000000000000000000000000CC00
      FF3FFF3FFF3F6F01CC00000000000000000000000000FE16FF4FFF4FF501D65A
      39671863D65A3146314618630000000000000000104200001042000010420000
      10420000104200001042000010420000000000000000734E314631463146734E
      0000000000000000000000000000000000000000000000000000000000000000
      CC00CC00CC00000000000000000000000000000000005F373F173F1B3E370000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFBF96B500000000FF1F96B514A58E73
      00005D0518C693FF00001B7D1B7D9403000000005D059403000080FF97031B7D
      0000970397038DFF4000DF2C1B7D970300008E73000000005000D5FFD5FFD5FF
      20009F96DC7DD5FF5000D5FFD5FF553C0000000096B5D5FF80010000DFFF0000
      80FFDFFF00000000C1FF00F800F800F8FF7FFFFFF000F000FF7FFFFFF000F000
      FC1FFFFFF000F000FE3FFFFFF000F000FF7FFC23F000F0000001E085F000F000
      0401DC01F000F00035F9A003F000F00004012007F000C00035F160077000C000
      040160073000000035F94007D000000004011FCFE00100010001FFFFD00B008B
      7FFDFFFFB807C0070001FFFF7FFFC3FFF000FFFFFFFF8000F000F83F00008000
      F000E00F000E8000F000C00700028000F000C00700068000F000800300008000
      F0008003000E8000F00000E1000E8000F0000001000E800070000081000E8000
      30008083000E8000D000808300008000E001C007000E8001D00BC00700029FF9
      B807E00F000280017FFFF83F0000FFFFFBFFFFFFFFFFFFFFF1FFA001F80FFFFC
      F0FFA001F80F9FF9F07FA001F80F8FF3F03FA001800187E7F01FA0018001C3CF
      F00FA0018001F11FF007A0018001F83FF007A0018001FC7FF00FA0018001F83F
      F01FA0018001F19FF03FA001F80FE3CFF07FA001F80FC7E7F0FFFFFFF80F8FFB
      F1FFA001F80F1FFFFBFFFFFFFFFF3FFFFFFFFFFFF00FFFFFC003FFFFE0070022
      800107C1C0030000000007C180010000000007C18001E007000001010000E007
      000000010000E007000000010000E007000000010000E007000080030000E007
      0000C1070000E0070000C1070001E0070000E38F8001FFFF1000E38F8003F81F
      1800E38FC007F81FC003FFFFF01FF81FFFBFFFFFF0008003FF1FFE3FF0008003
      0000F81FF00080030000E00FF000800300008007F000800300000003F0008003
      00000001F000800340000000F000800300000001C000800350008001C0008003
      2000C001000080035000E000000080030000F000000180038001F803008B8003
      80FFFC0FC0078003C1FFFE3FC3FFD55700000000000000000000000000000000
      000000000000}
  end
  object PopupMenuAutoInsert: TPopupMenu
    Images = ImageList
    Left = 496
    Top = 222
    object pmAddAutoData: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1087#1086'-'#1091#1084#1086#1083#1095#1072#1085#1080#1102
      Enabled = False
      ImageIndex = 16
      object pmAddAll: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1074#1089#1077
        ImageIndex = 16
        OnClick = pmAddAutoDataClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object pmAddAutoWorkType: TMenuItem
        Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
        ImageIndex = 16
        OnClick = pmAddAutoWorkTypeClick
      end
      object pmAddAutoSoftType: TMenuItem
        Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
        ImageIndex = 16
        OnClick = pmAddAutoSoftTypeClick
      end
      object pmAddAutoSpecialnoct: TMenuItem
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1090#1086#1089#1090#1100
        ImageIndex = 16
        OnClick = pmAddAutoSpecialnoctClick
      end
      object pmAddAutoNAuditorii: TMenuItem
        Caption = #8470' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
        ImageIndex = 16
        OnClick = pmAddAutoNAuditoriiClick
      end
    end
    object N48: TMenuItem
      Caption = '-'
    end
    object pmModifyAutoData: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1087#1086'-'#1091#1084#1086#1083#1095#1072#1085#1080#1102'...'
      OnClick = pmModifyAutoDataClick
    end
  end
  object PopupMenuSpecialnoct: TPopupMenu
    Images = ImageList
    Left = 624
    Top = 385
    object MenuItem1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1041#1044
      ImageIndex = 2
      OnClick = MenuItem1Click
    end
  end
  object TableSpecialnoct: TADOTable
    Connection = ADOConnection
    AfterOpen = TableSpecialnoctAfterOpen
    TableName = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    Left = 688
    Top = 384
  end
  object OpenDialog: TOpenDialog
    FileName = #1059#1095#1077#1090' '#1084#1072#1096#1080#1085#1085#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080
    Filter = #1059#1095#1077#1090' '#1084#1072#1096#1080#1085#1085#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080'|'#1059#1095#1077#1090' '#1084#1072#1096#1080#1085#1085#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080'.mdb'
    Left = 560
    Top = 257
  end
end
