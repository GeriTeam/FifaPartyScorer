object dMain: TdMain
  OldCreateOrder = False
  Height = 150
  Width = 215
  object fifaCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\FIfaFriendlyScor' +
      'er\FifaPartyScorer\DB\FIFAPARTYDB.mdb;Persist Security Info=Fals' +
      'e'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    BeforeConnect = fifaConBeforeConnect
    Left = 16
    Top = 56
  end
  object dbCon: TDatabase
    AliasName = 'FIFADB'
    Connected = True
    DatabaseName = 'db'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 16
    Top = 8
  end
end
