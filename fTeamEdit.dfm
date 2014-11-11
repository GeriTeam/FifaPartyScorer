object fmEditTeam: TfmEditTeam
  Left = 0
  Top = 0
  Caption = 'FIFA Party Scorer'
  ClientHeight = 321
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
    ActivePage = tb2
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
            Color = clYellow
            Expanded = False
            FieldName = 'TEAM_NAME'
            Title.Caption = #1054#1090#1073#1086#1088
            Width = 315
            Visible = True
          end
          item
            Color = clAqua
            Expanded = False
            FieldName = 'TEAM_POINTS'
            Title.Caption = #1058#1086#1095#1082#1080
            Width = 36
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = 'TEAM_MACHES'
            Title.Caption = #1052#1072#1095#1086#1074#1077
            Width = 48
            Visible = True
          end
          item
            Color = 10930928
            Expanded = False
            FieldName = 'TEAM_Player'
            Title.Caption = #1048#1075#1088#1072#1095
            Width = 95
            Visible = True
          end>
      end
      object lcbTournament: TJvDBSearchComboBox
        Left = 3
        Top = 16
        Width = 446
        Height = 21
        DataField = 'NAME'
        DataSource = dsTournaments
        TabOrder = 1
        Text = #1055#1098#1088#1074#1077#1085#1089#1090#1074#1086
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
        object cbRealTeam: TJvDBLookupCombo
          Left = 11
          Top = 113
          Width = 145
          Height = 21
          Enabled = False
          TabOrder = 3
        end
        object lcbInsertTeam: TJvDBSearchComboBox
          Left = 11
          Top = 155
          Width = 145
          Height = 21
          DataField = 'NAME'
          DataSource = dsTournaments
          TabOrder = 4
          OnChange = lcbTeamsAddFilterChange
        end
        object edtTEAM_NAME: TEdit
          Left = 13
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 5
        end
      end
      object grdTeams: TJvDBGrid
        Left = 3
        Top = 30
        Width = 284
        Height = 241
        DataSource = dsDataEdit
        TabOrder = 1
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
            Color = clYellow
            Expanded = False
            FieldName = 'TEAM_NAME'
            Title.Caption = #1048#1084#1077' '#1086#1090#1073#1086#1088
            Width = 104
            Visible = True
          end
          item
            Color = clMoneyGreen
            Expanded = False
            FieldName = '_TOURNAMENT_NAME'
            Title.Caption = #1058#1091#1088#1085#1080#1088
            Width = 85
            Visible = True
          end
          item
            Color = 16776176
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
            ButtonStyle = cbsNone
            Color = 16776176
            Expanded = False
            FieldName = '_NAME_HOME'
            Title.Caption = #1044#1086#1084#1072#1082#1080#1085
            Width = 102
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
            ButtonStyle = cbsNone
            Color = clYellow
            Expanded = False
            FieldName = '_NAME_AWAY'
            Title.Caption = #1043#1086#1089#1090
            Width = 102
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
        OnChange = lcbFilterTournamentChange
      end
    end
  end
  object qryDataEdit: TJvQuery
    DatabaseName = 'db'
    RequestLive = True
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
      ''
      'where'
      '  (:_TEAM_TOURNAMENT is null) or'
      '   ( TEAM_TOURNAMENT = :_TEAM_TOURNAMENT) ')
    Macros = <>
    Left = 104
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = '_TEAM_TOURNAMENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = '_TEAM_TOURNAMENT'
        ParamType = ptUnknown
      end>
    object qryDataEditTEAMS_ID: TIntegerField
      FieldName = 'TEAMS_ID'
      Origin = 'DB.TEAMS.TEAMS_ID'
    end
    object qryDataEditTEAM_NAME: TStringField
      FieldName = 'TEAM_NAME'
      Origin = 'DB.TEAMS.TEAM_NAME'
      Size = 255
    end
    object qryDataEditTEAM_TOURNAMENT: TIntegerField
      FieldName = 'TEAM_TOURNAMENT'
      Origin = 'DB.TEAMS.TEAM_TOURNAMENT'
    end
    object qryDataEditTEAM_POINTS: TIntegerField
      FieldName = 'TEAM_POINTS'
      Origin = 'DB.TEAMS.TEAM_POINTS'
    end
    object qryDataEditTEAM_MACHES: TIntegerField
      FieldName = 'TEAM_MACHES'
      Origin = 'DB.TEAMS.TEAM_MACHES'
    end
    object qryDataEditTEAM_Player: TIntegerField
      FieldName = 'TEAM_Player'
      Origin = 'DB.TEAMS.TEAM_Player'
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
  end
  object dsDataEdit: TDataSource
    DataSet = qryDataEdit
    Left = 104
    Top = 120
  end
  object qryPlayers: TJvQuery
    DatabaseName = 'db'
    RequestLive = True
    SQL.Strings = (
      'select'
      '*'
      'from '
      'PLAYERS')
    Macros = <>
    Left = 168
    Top = 104
    object qryPlayersID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.PLAYERS.ID'
    end
    object qryPlayersNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DB.PLAYERS.NAME'
      Size = 255
    end
  end
  object dsPlayers: TDataSource
    DataSet = qryPlayers
    Left = 168
    Top = 128
  end
  object qryKlasirane: TJvQuery
    DatabaseName = 'db'
    RequestLive = True
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
      'TEAM_POINTS')
    Macros = <>
    Left = 224
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TOURNAMENT'
        ParamType = ptUnknown
      end>
    object qryKlasiraneTEAMS_ID: TIntegerField
      FieldName = 'TEAMS_ID'
      Origin = 'DB.TEAMS.TEAMS_ID'
    end
    object qryKlasiraneTEAM_NAME: TStringField
      FieldName = 'TEAM_NAME'
      Origin = 'DB.TEAMS.TEAM_NAME'
      Size = 255
    end
    object qryKlasiraneTEAM_TOURNAMENT: TIntegerField
      FieldName = 'TEAM_TOURNAMENT'
      Origin = 'DB.TEAMS.TEAM_TOURNAMENT'
    end
    object qryKlasiraneTEAM_POINTS: TIntegerField
      FieldName = 'TEAM_POINTS'
      Origin = 'DB.TEAMS.TEAM_POINTS'
    end
    object qryKlasiraneTEAM_MACHES: TIntegerField
      FieldName = 'TEAM_MACHES'
      Origin = 'DB.TEAMS.TEAM_MACHES'
    end
    object qryKlasiraneTEAM_Player: TIntegerField
      FieldName = 'TEAM_Player'
      Origin = 'DB.TEAMS.TEAM_Player'
    end
  end
  object dsKlasirane: TDataSource
    DataSet = qryKlasirane
    Left = 232
    Top = 144
  end
  object qryTournaments: TJvQuery
    DatabaseName = 'db'
    RequestLive = True
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
    Macros = <>
    Left = 280
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = '_TR_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = '_TR_ID'
        ParamType = ptUnknown
      end>
    object qryTournamentsID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.TOURNAMENTS.ID'
    end
    object qryTournamentsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'DB.TOURNAMENTS.NAME'
      Size = 255
    end
    object qryTournamentsSCHEME: TIntegerField
      FieldName = 'SCHEME'
      Origin = 'DB.TOURNAMENTS.SCHEME'
    end
    object qryTournamentsGENERATED: TBooleanField
      FieldName = 'GENERATED'
      Origin = 'DB.TOURNAMENTS.ID'
    end
  end
  object dsTournaments: TDataSource
    DataSet = qryTournaments
    Left = 280
    Top = 152
  end
  object qryGames: TJvQuery
    DatabaseName = 'db'
    RequestLive = True
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
    Macros = <>
    Left = 288
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = '_GAME_TOURNAMENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = '_GAME_TOURNAMENT'
        ParamType = ptUnknown
      end>
    object qryGamesID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.GAMES.ID'
    end
    object qryGamesPLAYER_HOME: TIntegerField
      FieldName = 'PLAYER_HOME'
      Origin = 'DB.GAMES.PLAYER_HOME'
    end
    object qryGamesPLAYER_AWAY: TIntegerField
      FieldName = 'PLAYER_AWAY'
      Origin = 'DB.GAMES.PLAYER_AWAY'
    end
    object qryGamesPLAYER_HOME_SCORE: TIntegerField
      FieldName = 'PLAYER_HOME_SCORE'
      Origin = 'DB.GAMES.PLAYER_HOME_SCORE'
    end
    object qryGamesPLAYER_AWAY_SCORE: TIntegerField
      FieldName = 'PLAYER_AWAY_SCORE'
      Origin = 'DB.GAMES.PLAYER_AWAY_SCORE'
    end
    object qryGamesTOURNAMENT: TIntegerField
      FieldName = 'TOURNAMENT'
      Origin = 'DB.GAMES.TOURNAMENT'
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
    object qryGames_NAME_AWAY: TStringField
      FieldKind = fkLookup
      FieldName = '_NAME_AWAY'
      LookupDataSet = qryTeams
      LookupKeyFields = 'TEAMS_ID'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'PLAYER_AWAY'
      Size = 255
      Lookup = True
    end
  end
  object dsGames: TDataSource
    AutoEdit = False
    DataSet = qryGames
    Left = 296
    Top = 232
  end
  object qryTeams: TJvQuery
    BeforeOpen = qryTeamsBeforeOpen
    DatabaseName = 'db'
    RequestLive = True
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
    Macros = <>
    Left = 184
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = '_TMHOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = '_TMHOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = '_TOURNAMENT'
        ParamType = ptUnknown
      end>
    object qryTeamsTEAMS_ID: TIntegerField
      FieldName = 'TEAMS_ID'
      Origin = 'DB.TEAMS.TEAMS_ID'
    end
    object qryTeamsTEAM_NAME: TStringField
      FieldName = 'TEAM_NAME'
      Origin = 'DB.TEAMS.TEAM_NAME'
      Size = 255
    end
    object qryTeamsTEAM_TOURNAMENT: TIntegerField
      FieldName = 'TEAM_TOURNAMENT'
      Origin = 'DB.TEAMS.TEAM_TOURNAMENT'
    end
    object qryTeamsTEAM_POINTS: TIntegerField
      FieldName = 'TEAM_POINTS'
      Origin = 'DB.TEAMS.TEAM_POINTS'
    end
    object qryTeamsTEAM_MACHES: TIntegerField
      FieldName = 'TEAM_MACHES'
      Origin = 'DB.TEAMS.TEAM_MACHES'
    end
    object qryTeamsTEAM_Player: TIntegerField
      FieldName = 'TEAM_Player'
      Origin = 'DB.TEAMS.TEAM_Player'
    end
  end
  object dsTeams: TDataSource
    DataSet = qryTeams
    Left = 184
    Top = 224
  end
  object qryTeamsAdd: TJvQuery
    DatabaseName = 'db'
    RequestLive = True
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
    Macros = <>
    Left = 24
    Top = 104
    object IntegerField1: TIntegerField
      FieldName = 'TEAMS_ID'
      Origin = 'DB.TEAMS.TEAMS_ID'
    end
    object StringField1: TStringField
      FieldName = 'TEAM_NAME'
      Origin = 'DB.TEAMS.TEAM_NAME'
      Size = 255
    end
    object IntegerField2: TIntegerField
      FieldName = 'TEAM_TOURNAMENT'
      Origin = 'DB.TEAMS.TEAM_TOURNAMENT'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TEAM_POINTS'
      Origin = 'DB.TEAMS.TEAM_POINTS'
    end
    object IntegerField4: TIntegerField
      FieldName = 'TEAM_MACHES'
      Origin = 'DB.TEAMS.TEAM_MACHES'
    end
    object IntegerField5: TIntegerField
      FieldName = 'TEAM_Player'
      Origin = 'DB.TEAMS.TEAM_Player'
    end
  end
  object dsTeamsAdd: TDataSource
    DataSet = qryTeamsAdd
    Left = 24
    Top = 112
  end
end
