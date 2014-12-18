object fmGamePlay: TfmGamePlay
  Left = 0
  Top = 0
  Caption = 'fmGamePlay'
  ClientHeight = 93
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 72
    Top = 23
    Width = 44
    Height = 13
    Caption = #1044#1086#1084#1072#1082#1080#1085
  end
  object lbl2: TLabel
    Left = 284
    Top = 23
    Width = 23
    Height = 13
    Caption = #1043#1086#1089#1090
  end
  object lbl3: TLabel
    Left = 237
    Top = 36
    Width = 16
    Height = 20
    Caption = ' : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 8
    Top = 26
    Width = 36
    Height = 13
    Caption = #1052#1072#1095' '#8470
  end
  object lblISPLAYED: TLabel
    Left = 8
    Top = 4
    Width = 109
    Height = 19
    Caption = #1057#1090#1072#1090#1091#1089': '#1085#1103#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 342
    Top = 66
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 245
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btn2Click
  end
  object dbedtHomeScore: TDBEdit
    Left = 213
    Top = 39
    Width = 26
    Height = 21
    DataField = 'PLAYER_HOME_SCORE'
    DataSource = dsGames
    TabOrder = 2
    OnChange = dbedtHomeScoreChange
  end
  object dbedtAwayScore: TDBEdit
    Left = 252
    Top = 39
    Width = 26
    Height = 21
    DataField = 'PLAYER_AWAY_SCORE'
    DataSource = dsGames
    TabOrder = 3
    OnChange = dbedtAwayScoreChange
  end
  object dbedtPLAYER_HOME: TDBEdit
    Left = 72
    Top = 39
    Width = 133
    Height = 21
    DataField = '_HOME_NAME'
    DataSource = dsGames
    TabOrder = 4
  end
  object dbedtPLAYER_HOME1: TDBEdit
    Left = 284
    Top = 39
    Width = 133
    Height = 21
    DataField = '_AWAY_NAME'
    DataSource = dsGames
    TabOrder = 5
  end
  object lcbID: TJvDBSearchComboBox
    Left = 8
    Top = 39
    Width = 58
    Height = 21
    DataField = 'ID'
    DataSource = dsID
    TabOrder = 6
    OnChange = lcbIDChange
  end
  object qryGames: TADOQuery
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PK_CODE'
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
      'GAMES '
      ''
      'where'
      '  ID = :PK_CODE')
    Left = 96
    Top = 55
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
    object qryGames_HOME_NAME: TStringField
      FieldKind = fkLookup
      FieldName = '_HOME_NAME'
      LookupDataSet = qryTeams
      LookupKeyFields = 'TEAMS_ID'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'PLAYER_HOME'
      Size = 255
      Lookup = True
    end
    object qryGames_AWAY_NAME: TStringField
      FieldKind = fkLookup
      FieldName = '_AWAY_NAME'
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
  object dsGames: TDataSource
    DataSet = qryGames
    Left = 64
    Top = 55
  end
  object qryID: TADOQuery
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
      end>
    SQL.Strings = (
      'select'
      '*'
      ''
      'from '
      'GAMES '
      ''
      'where'
      '  (TOURNAMENT = :_GAME_TOURNAMENT)')
    Left = 160
    Top = 55
    object qryIDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryIDPLAYER_HOME: TIntegerField
      FieldName = 'PLAYER_HOME'
    end
    object qryIDPLAYER_AWAY: TIntegerField
      FieldName = 'PLAYER_AWAY'
    end
    object qryIDPLAYER_HOME_SCORE: TIntegerField
      FieldName = 'PLAYER_HOME_SCORE'
    end
    object qryIDPLAYER_AWAY_SCORE: TIntegerField
      FieldName = 'PLAYER_AWAY_SCORE'
    end
    object qryIDTOURNAMENT: TIntegerField
      FieldName = 'TOURNAMENT'
    end
  end
  object dsID: TDataSource
    DataSet = qryID
    Left = 200
    Top = 55
  end
  object qryTeams: TADOQuery
    Active = True
    Connection = dMain.fifaCon
    CursorType = ctStatic
    Parameters = <
      item
        Name = '_TMHOME'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = '_TMHOME'
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
      '  ((:_TMHOME is null) or'
      ' ( TEAMS_ID <>:_TMHOME)) ')
    Left = 392
    Top = 47
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
  object dsTeams: TDataSource
    DataSet = qryTeams
    Left = 360
    Top = 47
  end
end
