object fmEditTeam: TfmEditTeam
  Left = 0
  Top = 0
  Caption = 'fmEditTeam'
  ClientHeight = 351
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 817
    Height = 281
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1083#1072#1089#1080#1088#1072#1085#1077
      ExplicitLeft = 0
    end
    object TabSheet2: TTabSheet
      Caption = #1054#1090#1073#1086#1088#1080
      ImageIndex = 1
      ExplicitLeft = 0
      object grpAddTeam: TGroupBox
        Left = 544
        Top = 16
        Width = 257
        Height = 209
        Caption = ' '#1044#1086#1073#1072#1074#1080' '#1054#1090#1073#1086#1088' '
        TabOrder = 0
        object Label1: TLabel
          Left = 19
          Top = 16
          Width = 77
          Height = 13
          Caption = #1048#1084#1077' '#1085#1072' '#1086#1090#1073#1086#1088#1072':'
        end
        object Label2: TLabel
          Left = 146
          Top = 18
          Width = 73
          Height = 13
          Caption = #1056#1077#1072#1083#1077#1085' '#1048#1075#1088#1072#1095':'
        end
        object lblAddTeam: TLabel
          Left = 11
          Top = 140
          Width = 36
          Height = 13
          Caption = #1058#1091#1088#1085#1080#1088
        end
        object DBEdit1: TDBEdit
          Left = 19
          Top = 32
          Width = 121
          Height = 21
          DataField = 'TEAM_NAME'
          DataSource = dsDataEdit
          TabOrder = 0
        end
        object BitBtn3: TBitBtn
          Left = 174
          Top = 171
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 146
          Top = 32
          Width = 102
          Height = 21
          DataField = '_PLAYER_NAME'
          DataSource = dsDataEdit
          TabOrder = 2
        end
        object rgTeam: TJvRadioGroup
          Left = 11
          Top = 59
          Width = 238
          Height = 48
          Caption = '  '#1056#1077#1072#1083#1077#1085' '#1086#1090#1073#1086#1088' '#1074' '#1080#1075#1088#1072#1090#1072'  '
          Columns = 2
          Items.Strings = (
            #1055#1088#1077#1076#1080' '#1074#1089#1077#1082#1080' '#1084#1072#1095
            #1058#1074#1098#1088#1076' '#1086#1090#1073#1086#1088)
          TabOrder = 3
          CaptionVisible = True
        end
        object cbRealTeam: TJvDBLookupCombo
          Left = 11
          Top = 113
          Width = 145
          Height = 21
          TabOrder = 4
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1088#1086#1075#1088#1072#1084#1072
      ImageIndex = 2
      ExplicitWidth = 629
      ExplicitHeight = 249
    end
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
  end
  object qryDataEdit: TJvQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select'
      '*'
      'from '
      'TEAMS')
    Macros = <>
    Left = 200
    Top = 256
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
  end
  object dsDataEdit: TDataSource
    DataSet = qryDataEdit
    Left = 200
    Top = 304
  end
  object qryPlayers: TJvQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select'
      '*'
      'from '
      'PLAYERS')
    Macros = <>
    Left = 256
    Top = 256
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
    Left = 256
    Top = 304
  end
end
