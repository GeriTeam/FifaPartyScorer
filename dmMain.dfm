object dMain: TdMain
  OldCreateOrder = False
  Height = 150
  Width = 215
  object DB: TDatabase
    AliasName = 'FIFADB'
    Connected = True
    DatabaseName = 'db'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 16
    Top = 8
  end
  object fifaCon: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;Data S' +
      'ource=FIFADB'
    Provider = 'MSDASQL.1'
    Left = 16
    Top = 56
  end
end
