unit dmMain;

interface

uses
  SysUtils, Classes, ADODB, DB, DBTables, Forms, ShellApi, Windows, Messages, Dialogs,
  JvComponentBase, JvThread, JvTimer, DBClient, Variants;

type
  TdMain = class(TDataModule)
    fifaCon: TADOConnection;
    procedure fifaConBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
//  function AddDSN(const DSN, Database, Description: String): Boolean;
  end;

var
  dMain: TdMain;
  vsConString :String;


  implementation

{$R *.dfm}

procedure TdMain.fifaConBeforeConnect(Sender: TObject);

begin

    vsConString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
    ExtractFileDir(Application.ExeName) +
    '\FIFAPARTYDB.mdb;Persist Security Info=False';

    fifaCon.ConnectionString := vsConString;


end;

end.
