object dMain: TdMain
  OldCreateOrder = False
  Height = 150
  Width = 215
  object fifaCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\FI' +
      'faFriendlyScorer\FifaPartyScorer\DB\FIFAPARTYDB.mdb;Mode=Share D' +
      'eny None;Extended Properties="";Persist Security Info=False;Jet ' +
      'OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Da' +
      'tabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lo' +
      'cking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Globa' +
      'l Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLE' +
      'DB:Create System Database=False;Jet OLEDB:Encrypt Database=False' +
      ';Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact ' +
      'Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    BeforeConnect = fifaConBeforeConnect
    Left = 16
    Top = 16
  end
end
