unit dmMain;

interface

uses
  SysUtils, Classes, ADODB, DB, DBTables;

type
  TdMain = class(TDataModule)
    DB: TDatabase;
    fifaCon: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dMain: TdMain;

implementation

{$R *.dfm}

end.
