object fmEditTeam: TfmEditTeam
  Left = 0
  Top = 0
  Caption = 'FIFA Party Scorer'
  ClientHeight = 353
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 8
    Top = 8
    Width = 561
    Height = 305
    ActivePage = tb1
    TabOrder = 0
    OnChange = pgctb2Change
    object tb1: TTabSheet
      Caption = #1050#1083#1072#1089#1080#1088#1072#1085#1077
      object JvDBGrid1: TJvDBGrid
        Left = 3
        Top = 43
        Width = 542
        Height = 225
        DataSource = dsKlasirane
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Color = 16777192
            Expanded = False
            FieldName = 'TEAM_NAME'
            Title.Caption = #1054#1090#1073#1086#1088
            Width = 315
            Visible = True
          end
          item
            Alignment = taCenter
            Color = 16639998
            Expanded = False
            FieldName = 'TEAM_POINTS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Caption = #1058#1086#1095#1082#1080
            Width = 36
            Visible = True
          end
          item
            Color = 16777192
            Expanded = False
            FieldName = 'TEAM_MACHES'
            Title.Caption = #1052#1072#1095#1086#1074#1077
            Width = 48
            Visible = True
          end
          item
            Color = 16639998
            Expanded = False
            FieldName = '_Player_Name'
            Title.Caption = #1048#1075#1088#1072#1095
            Width = 95
            Visible = True
          end>
      end
      object lcbTournament: TJvDBSearchComboBox
        Left = 3
        Top = 11
        Width = 446
        Height = 21
        DataField = 'NAME'
        DataSource = dsTournaments
        TabOrder = 1
        OnChange = lcbTournamentChange
      end
      object btnRefresh: TBitBtn
        Left = 470
        Top = 12
        Width = 75
        Height = 25
        Caption = 'Refresh'
        TabOrder = 2
        OnClick = lcbTournamentChange
      end
    end
    object tb2: TTabSheet
      Caption = #1054#1090#1073#1086#1088#1080
      ImageIndex = 1
      object grpAddTeam: TGroupBox
        Left = 293
        Top = 3
        Width = 257
        Height = 198
        Caption = ' '#1044#1086#1073#1072#1074#1080' '#1054#1090#1073#1086#1088' '
        TabOrder = 0
        object Label1: TLabel
          Left = 13
          Top = 16
          Width = 77
          Height = 13
          Caption = #1048#1084#1077' '#1085#1072' '#1086#1090#1073#1086#1088#1072':'
        end
        object Label2: TLabel
          Left = 146
          Top = 18
          Width = 34
          Height = 13
          Caption = #1048#1075#1088#1072#1095':'
        end
        object lblAddTeam: TLabel
          Left = 11
          Top = 140
          Width = 36
          Height = 13
          Caption = #1058#1091#1088#1085#1080#1088
        end
        object BitBtn3: TBitBtn
          Left = 179
          Top = 155
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object edtPlayer: TJvDBLookupCombo
          Left = 146
          Top = 32
          Width = 102
          Height = 21
          DataField = '_PLAYER_NAME'
          DataSource = dsDataEdit
          TabOrder = 1
        end
        object rgTeam: TJvRadioGroup
          Left = 11
          Top = 59
          Width = 238
          Height = 48
          Caption = '  '#1056#1077#1072#1083#1077#1085' '#1086#1090#1073#1086#1088' '#1074' '#1080#1075#1088#1072#1090#1072'  '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            #1055#1088#1077#1076#1080' '#1074#1089#1077#1082#1080' '#1084#1072#1095
            #1058#1074#1098#1088#1076' '#1086#1090#1073#1086#1088)
          TabOrder = 2
          OnClick = rgTeamClick
          CaptionVisible = True
        end
        object lcbInsertTeam: TJvDBSearchComboBox
          Left = 11
          Top = 155
          Width = 145
          Height = 21
          DataField = 'NAME'
          DataSource = dsTournaments
          TabOrder = 3
        end
        object edtTEAM_NAME: TEdit
          Left = 13
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object cbRealTeam: TJvDBSearchComboBox
          Left = 11
          Top = 113
          Width = 145
          Height = 21
          DataField = 'NAME'
          DataSource = dsFIFATeams
          Enabled = False
          TabOrder = 5
          Text = '<'#1085#1103#1084#1072'>'
        end
      end
      object grdTeams: TJvDBGrid
        Left = 3
        Top = 30
        Width = 284
        Height = 241
        DataSource = dsDataEdit
        ImeMode = imClose
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AutoAppend = False
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Color = 16639998
            Expanded = False
            FieldName = 'TEAM_NAME'
            Title.Caption = #1048#1084#1077' '#1086#1090#1073#1086#1088
            Width = 104
            Visible = True
          end
          item
            Color = 16777192
            Expanded = False
            FieldName = '_TOURNAMENT_NAME'
            Title.Caption = #1058#1091#1088#1085#1080#1088
            Width = 85
            Visible = True
          end
          item
            Color = 16639998
            Expanded = False
            FieldName = '_PLAYER_NAME'
            Title.Caption = #1048#1075#1088#1072#1095
            Width = 57
            Visible = True
          end>
      end
      object lcbTeamsAddFilter: TJvDBSearchComboBox
        Left = 3
        Top = 3
        Width = 284
        Height = 21
        DataField = 'NAME'
        DataSource = dsTournaments
        TabOrder = 2
        OnChange = lcbTeamsAddFilterChange
      end
      object grp1: TGroupBox
        Left = 293
        Top = 207
        Width = 257
        Height = 64
        Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1090#1091#1088#1085#1080#1088
        TabOrder = 3
        object lbl1: TLabel
          Left = 11
          Top = 17
          Width = 36
          Height = 13
          Caption = #1058#1091#1088#1085#1080#1088
        end
        object edtAddTournament: TEdit
          Left = 11
          Top = 32
          Width = 150
          Height = 21
          TabOrder = 0
        end
        object btn3: TBitBtn
          Left = 179
          Top = 28
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080
          TabOrder = 1
          OnClick = btn3Click
        end
      end
    end
    object tb3: TTabSheet
      Caption = #1055#1088#1086#1075#1088#1072#1084#1072
      ImageIndex = 2
      object gdGames: TJvDBGrid
        Left = 3
        Top = 35
        Width = 294
        Height = 233
        DataSource = dsGames
        ImeMode = imClose
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AutoAppend = False
        ClearSelection = False
        BevelInner = bvNone
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        WordWrap = True
        ShowMemos = False
        Columns = <
          item
            Alignment = taRightJustify
            Color = 16776176
            Expanded = False
            FieldName = '_NAME_HOME'
            Title.Caption = #1044#1086#1084#1072#1082#1080#1085
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            ButtonStyle = cbsNone
            Color = 16776176
            Expanded = False
            FieldName = 'PLAYER_HOME_SCORE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Caption = #1044
            Width = 25
            Visible = True
          end
          item
            Alignment = taCenter
            ButtonStyle = cbsNone
            Color = clMedGray
            Expanded = False
            FieldName = 'PLAYER_AWAY_SCORE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Caption = #1043
            Width = 25
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = '_AWAY_TEAM'
            Title.Caption = #1043#1086#1089#1090
            Width = 100
            Visible = True
          end>
      end
      object btn2: TBitBtn
        Left = 222
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Refresh'
        TabOrder = 1
        OnClick = lcbFilterTournamentChange
      end
      object pnl1: TPanel
        Left = 319
        Top = 3
        Width = 218
        Height = 86
        BorderStyle = bsSingle
        TabOrder = 2
        object btn1: TBitBtn
          Left = 16
          Top = 45
          Width = 177
          Height = 25
          Caption = #1043#1077#1085#1077#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1075#1088#1072#1084#1072
          TabOrder = 0
          OnClick = btn1Click
        end
        object lcbTournamentGenerate: TJvDBSearchComboBox
          Left = 11
          Top = 18
          Width = 198
          Height = 21
          DataField = 'NAME'
          DataSource = dsTournaments
          TabOrder = 1
          Text = #1055#1098#1088#1074#1077#1085#1089#1090#1074#1086
        end
      end
      object lcbFilterTournament: TJvDBSearchComboBox
        Left = 3
        Top = 3
        Width = 213
        Height = 21
        DataField = 'NAME'
        DataSource = dsTournaments
        TabOrder = 3
        Text = #1055#1098#1088#1074#1077#1085#1089#1090#1074#1086
        OnChange = lcbFilterTournamentChange
      end
    end
  end
  object btn4: TBitBtn
    Left = 8
    Top = 319
    Width = 105
    Height = 25
    Caption = #1048#1079#1080#1075#1088#1072#1081' '#1084#1072#1095
    TabOrder = 1
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 119
    Top = 319
    Width = 145
    Height = 25
    Caption = #1055#1088#1080#1085#1090#1080#1088#1072#1081' '#1082#1083#1072#1089#1080#1088#1072#1085#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'btnPrint'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn5Click
  end
  object dsDataEdit: TDataSource
    DataSet = qryDataEdit
    Left = 72
    Top = 256
  end
  object dsPlayers: TDataSource
    DataSet = qryPlayers
    Left = 288
    Top = 256
  end
  object dsKlasirane: TDataSource
    DataSet = qryKlasirane
    Left = 232
    Top = 256
  end
  object dsTournaments: TDataSource
    DataSet = qryTournaments
    Left = 184
    Top = 256
  end
  object dsGames: TDataSource
    DataSet = qryGames
    Left = 328
    Top = 256
  end
  object dsTeams: TDataSource
    DataSet = qryTeams
    Left = 384
    Top = 256
  end
  object dsTeamsAdd: TDataSource
    DataSet = qryTeamsAdd
    Left = 16
    Top = 256
  end
  object dsFIFATeams: TDataSource
    DataSet = qryFIFATeams
    Left = 120
    Top = 256
  end
  object qryTeamsAdd: TADOQuery
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      'TEAM_TOURNAMENT,'
      'TEAMS_ID,'
      'TEAM_NAME,'
      'TEAM_POINTS,'
      'TEAM_MACHES,'
      'TEAM_Player'
      ''
      'from '
      'TEAMS'
      '')
    Left = 16
    Top = 208
    object qryTeamsAddTEAM_TOURNAMENT: TIntegerField
      FieldName = 'TEAM_TOURNAMENT'
    end
    object qryTeamsAddTEAMS_ID: TAutoIncField
      FieldName = 'TEAMS_ID'
      ReadOnly = True
    end
    object qryTeamsAddTEAM_NAME: TWideStringField
      FieldName = 'TEAM_NAME'
      Size = 255
    end
    object qryTeamsAddTEAM_POINTS: TIntegerField
      FieldName = 'TEAM_POINTS'
    end
    object qryTeamsAddTEAM_MACHES: TIntegerField
      FieldName = 'TEAM_MACHES'
    end
    object qryTeamsAddTEAM_Player: TIntegerField
      FieldName = 'TEAM_Player'
    end
  end
  object qryDataEdit: TADOQuery
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = '_TEAM_TOURNAMENT'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '_TEAM_TOURNAMENT'
        DataType = ftInteger
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'TEAM_TOURNAMENT,'
      'TEAMS_ID,'
      'TEAM_NAME,'
      'TEAM_POINTS,'
      'TEAM_MACHES,'
      'TEAM_Player,'
      'FIFA_TEAM'
      ''
      'from '
      'TEAMS'
      ''
      'where'
      '  (:_TEAM_TOURNAMENT is null) or'
      '   ( TEAM_TOURNAMENT = :_TEAM_TOURNAMENT) ')
    Left = 72
    Top = 208
    object qryDataEditTEAM_TOURNAMENT: TIntegerField
      FieldName = 'TEAM_TOURNAMENT'
    end
    object qryDataEditTEAMS_ID: TAutoIncField
      FieldName = 'TEAMS_ID'
      ReadOnly = True
    end
    object qryDataEditTEAM_NAME: TWideStringField
      FieldName = 'TEAM_NAME'
      Size = 255
    end
    object qryDataEditTEAM_POINTS: TIntegerField
      FieldName = 'TEAM_POINTS'
    end
    object qryDataEditTEAM_MACHES: TIntegerField
      FieldName = 'TEAM_MACHES'
    end
    object qryDataEditTEAM_Player: TIntegerField
      FieldName = 'TEAM_Player'
    end
    object qryDataEditFIFA_TEAM: TIntegerField
      FieldName = 'FIFA_TEAM'
    end
    object qryDataEdit_TOURNAMENT_NAME: TStringField
      FieldKind = fkLookup
      FieldName = '_TOURNAMENT_NAME'
      LookupDataSet = qryTournaments
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'TEAM_TOURNAMENT'
      Size = 255
      Lookup = True
    end
    object qryDataEdit_PLAYER_NAME: TStringField
      FieldKind = fkLookup
      FieldName = '_PLAYER_NAME'
      LookupDataSet = qryPlayers
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'TEAM_Player'
      Size = 255
      Lookup = True
    end
  end
  object qryFIFATeams: TADOQuery
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '*'
      ''
      'from '
      'FIFA_TEAMS')
    Left = 128
    Top = 208
    object qryFIFATeamsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryFIFATeamsNAME: TWideStringField
      FieldName = 'NAME'
      Size = 255
    end
  end
  object qryTournaments: TADOQuery
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = '_TR_ID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '_TR_ID'
        DataType = ftInteger
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'ID,'
      'NAME,'
      'SCHEME,'
      'GENERATED'
      ''
      'from '
      'TOURNAMENTS'
      ''
      'where'
      '  (:_TR_ID is null) or'
      '   ( ID = :_TR_ID) '
      'order by'
      'ID')
    Left = 176
    Top = 208
    object qryTournamentsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryTournamentsNAME: TWideStringField
      FieldName = 'NAME'
      Size = 255
    end
    object qryTournamentsSCHEME: TIntegerField
      FieldName = 'SCHEME'
    end
    object qryTournamentsGENERATED: TBooleanField
      FieldName = 'GENERATED'
    end
  end
  object qryKlasirane: TADOQuery
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TOURNAMENT'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '*'
      ''
      'from '
      'TEAMS'
      ''
      'where'
      'TEAM_TOURNAMENT =:TOURNAMENT'
      ''
      'order by'
      'TEAM_POINTS desc')
    Left = 232
    Top = 208
    object qryKlasiraneTEAMS_ID: TAutoIncField
      FieldName = 'TEAMS_ID'
      ReadOnly = True
    end
    object qryKlasiraneTEAM_NAME: TWideStringField
      FieldName = 'TEAM_NAME'
      Size = 255
    end
    object qryKlasiraneTEAM_TOURNAMENT: TIntegerField
      FieldName = 'TEAM_TOURNAMENT'
    end
    object qryKlasiraneTEAM_POINTS: TIntegerField
      FieldName = 'TEAM_POINTS'
    end
    object qryKlasiraneTEAM_MACHES: TIntegerField
      FieldName = 'TEAM_MACHES'
    end
    object qryKlasiraneTEAM_Player: TIntegerField
      FieldName = 'TEAM_Player'
    end
    object qryKlasiraneFIFA_TEAM: TIntegerField
      FieldName = 'FIFA_TEAM'
    end
    object qryKlasirane_Player_Name: TStringField
      FieldKind = fkLookup
      FieldName = '_Player_Name'
      LookupDataSet = qryPlayers
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'TEAM_Player'
      Size = 255
      Lookup = True
    end
    object qryKlasiraneTEAM_WIN: TIntegerField
      FieldName = 'TEAM_WIN'
    end
    object qryKlasiraneTEAM_LOSE: TIntegerField
      FieldName = 'TEAM_LOSE'
    end
    object qryKlasiraneTEAM_DRAW: TIntegerField
      FieldName = 'TEAM_DRAW'
    end
  end
  object qryPlayers: TADOQuery
    Active = True
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '*'
      'from '
      'PLAYERS')
    Left = 288
    Top = 208
    object qryPlayersID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryPlayersNAME: TWideStringField
      FieldName = 'NAME'
      Size = 255
    end
  end
  object qryGames: TADOQuery
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = '_GAME_TOURNAMENT'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = '_GAME_TOURNAMENT'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '*'
      ''
      'from '
      'GAMES'
      ''
      'where'
      '  (:_GAME_TOURNAMENT is null) or'
      '   ( TOURNAMENT = :_GAME_TOURNAMENT) ')
    Left = 336
    Top = 208
    object qryGamesID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryGamesPLAYER_HOME: TIntegerField
      FieldName = 'PLAYER_HOME'
    end
    object qryGamesPLAYER_AWAY: TIntegerField
      FieldName = 'PLAYER_AWAY'
    end
    object qryGamesPLAYER_HOME_SCORE: TIntegerField
      FieldName = 'PLAYER_HOME_SCORE'
    end
    object qryGamesPLAYER_AWAY_SCORE: TIntegerField
      FieldName = 'PLAYER_AWAY_SCORE'
    end
    object qryGamesTOURNAMENT: TIntegerField
      FieldName = 'TOURNAMENT'
    end
    object qryGames_NAME_HOME: TStringField
      FieldKind = fkLookup
      FieldName = '_NAME_HOME'
      LookupDataSet = qryTeams
      LookupKeyFields = 'TEAMS_ID'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'PLAYER_HOME'
      Size = 255
      Lookup = True
    end
    object qryGames_AWAY_TEAM: TStringField
      FieldKind = fkLookup
      FieldName = '_AWAY_TEAM'
      LookupDataSet = qryTeams
      LookupKeyFields = 'TEAMS_ID'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'PLAYER_AWAY'
      Size = 255
      Lookup = True
    end
    object qryGamesIS_PLAYED: TBooleanField
      FieldName = 'IS_PLAYED'
    end
  end
  object qryTeams: TADOQuery
    Active = True
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = '_TMHOME'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '_TMHOME'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '_TOURNAMENT'
        DataType = ftInteger
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '*'
      ''
      'from '
      'TEAMS'
      ''
      'where'
      '  ((:_TMHOME is null) or'
      ' ( TEAMS_ID <>:_TMHOME))  and'
      ' ( TEAM_TOURNAMENT = :_TOURNAMENT) '
      '')
    Left = 392
    Top = 208
    object qryTeamsTEAMS_ID: TAutoIncField
      FieldName = 'TEAMS_ID'
      ReadOnly = True
    end
    object qryTeamsTEAM_NAME: TWideStringField
      FieldName = 'TEAM_NAME'
      Size = 255
    end
    object qryTeamsTEAM_TOURNAMENT: TIntegerField
      FieldName = 'TEAM_TOURNAMENT'
    end
    object qryTeamsTEAM_POINTS: TIntegerField
      FieldName = 'TEAM_POINTS'
    end
    object qryTeamsTEAM_MACHES: TIntegerField
      FieldName = 'TEAM_MACHES'
    end
    object qryTeamsTEAM_Player: TIntegerField
      FieldName = 'TEAM_Player'
    end
    object qryTeamsFIFA_TEAM: TIntegerField
      FieldName = 'FIFA_TEAM'
    end
  end
  object rptKlasirane: TfrxReport
    Version = '4.11.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41991.667005509260000000
    ReportOptions.LastChange = 41991.667005509260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 184
    Top = 120
    Datasets = <
      item
        DataSet = Klasirane
        DataSetName = 'Klasirane'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Width = 548.031849999999900000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1083#1072#1089#1080#1088#1072#1085#1077' '#1082#1098#1084' '#1076#1072#1090#1072': [Date]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000010000
          Top = 56.692949999999990000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1073#1086#1088)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 291.023810000000200000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1072#1095#1086#1074#1077)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 370.393940000000200000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1073#1077#1076#1080)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 449.764070000000300000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1074#1085#1080)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 529.134200000000200000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1075#1091#1073#1080)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 608.504330000000300000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1086#1095#1082#1080)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692949999999990000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = Klasirane
        DataSetName = 'Klasirane'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 37.795300000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWindow
          DataField = 'TEAM_NAME'
          DataSet = Klasirane
          DataSetName = 'Klasirane'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Klasirane."TEAM_NAME"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 291.023810000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWindow
          DataField = 'TEAM_MACHES'
          DataSet = Klasirane
          DataSetName = 'Klasirane'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Klasirane."TEAM_MACHES"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 370.393940000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWindow
          DataField = 'TEAM_WIN'
          DataSet = Klasirane
          DataSetName = 'Klasirane'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Klasirane."TEAM_WIN"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 449.764070000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWindow
          DataField = 'TEAM_DRAW'
          DataSet = Klasirane
          DataSetName = 'Klasirane'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Klasirane."TEAM_DRAW"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 529.134199999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWindow
          DataField = 'TEAM_LOSE'
          DataSet = Klasirane
          DataSetName = 'Klasirane'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Klasirane."TEAM_LOSE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 608.504330000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWindow
          DataField = 'TEAM_POINTS'
          DataSet = Klasirane
          DataSetName = 'Klasirane'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Klasirane."TEAM_POINTS"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
    end
  end
  object Klasirane: TfrxDBDataset
    UserName = 'Klasirane'
    CloseDataSource = False
    DataSet = qryKlasirane
    BCDToCurrency = False
    Left = 224
    Top = 128
  end
end
