unit dmMain;

interface

uses
  SysUtils, Classes, ADODB, DB, DBTables, Forms, ShellApi, Windows, Messages, Dialogs,
  JvComponentBase, JvThread, JvTimer, DBClient, Variants;

type
  TdMain = class(TDataModule)
    fifaCon: TADOConnection;
    dbCon: TDatabase;
    procedure fifaConBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
  function AddDSN(const DSN, Database, Description: String): Boolean;
  end;

var
  dMain: TdMain;
  vsConString :String;
const
  ODBC_ADD_DSN = 1; // Add data source
  ODBC_CONFIG_DSN = 2; // Configure (edit) data source
  ODBC_REMOVE_DSN = 3; // Remove data source
  ODBC_ADD_SYS_DSN = 4; // add a system DSN
  ODBC_CONFIG_SYS_DSN = 5; // Configure a system DSN
  ODBC_REMOVE_SYS_DSN = 6; // remove a system DSN
  ODBC_REMOVE_DEFAULT_DSN = 7; // remove the default DSN
  function SQLConfigDataSource(
  hwndParent: HWND;
  fRequest: WORD;
  lpszDriver: LPCSTR;
  lpszAttributes: LPCSTR): BOOL; stdcall; external 'ODBCCP32.DLL';

  implementation

{$R *.dfm}

function TdMain.AddDSN(const DSN, Database, Description: String): Boolean;
begin
    Result := SQLConfigDataSource(0, ODBC_ADD_DSN,
    'Microsoft Access Driver (*.mdb)', PAnsiChar(
    'DSN=' + DSN + #0 +
    'Driver=ODBCJT32.DLL'#0 +
    'DBQ=' + Database + ''#0 +
    'DefaultDir=' + ExtractFilePath(Database) + #0 +
    'Description=' + Description + #0 +
    'FIL=MS Access'#0 +
    'UID=Admin'#0));
end;

procedure TdMain.fifaConBeforeConnect(Sender: TObject);
begin
    AddDSN('FIFADB', ExtractFileDir(Application.ExeName) +
    '\FIFAPARTYDB.mdb', 'nanan');

    vsConString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
    ExtractFileDir(Application.ExeName) +
    '\FIFAPARTYDB.mdb;Persist Security Info=False';

  fifaCon.ConnectionString := vsConString;
end;

end.
