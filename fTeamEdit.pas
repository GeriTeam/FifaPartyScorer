unit fTeamEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ADODB, DB, DBTables, JvBDEQuery, Buttons,
  JvExControls, JvDBLookup, ComCtrls, ExtCtrls, JvExExtCtrls, JvRadioGroup;

type
  TfmEditTeam = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    qryDataEdit: TJvQuery;
    qryDataEditTEAMS_ID: TIntegerField;
    qryDataEditTEAM_NAME: TStringField;
    qryDataEditTEAM_TOURNAMENT: TIntegerField;
    qryDataEditTEAM_POINTS: TIntegerField;
    qryDataEditTEAM_MACHES: TIntegerField;
    dsDataEdit: TDataSource;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    BitBtn2: TBitBtn;
    grpAddTeam: TGroupBox;
    DBEdit1: TDBEdit;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    rgTeam: TJvRadioGroup;
    cbRealTeam: TJvDBLookupCombo;
    lblAddTeam: TLabel;
    qryPlayers: TJvQuery;
    dsPlayers: TDataSource;
    qryPlayersID: TIntegerField;
    qryPlayersNAME: TStringField;
    qryDataEditTEAM_Player: TIntegerField;
    qryDataEdit_PLAYER_NAME: TStringField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEditTeam: TfmEditTeam;

implementation

{$R *.dfm}

procedure TfmEditTeam.BitBtn1Click(Sender: TObject);
begin
  qryPlayers.Open;

  qryDataEdit.Edit;

end;

end.
