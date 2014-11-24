unit fPlayGame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, DBCtrls, DB, ADODB,
  Mask, JvCombobox, JvDBCombobox, JvDBSearchComboBox;

type
  TfmGamePlay = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TButton;
    btn2: TButton;
    qryGames: TADOQuery;
    dsGames: TDataSource;
    dbedtHomeScore: TDBEdit;
    dbedtAwayScore: TDBEdit;
    qryGamesID: TAutoIncField;
    qryGamesPLAYER_HOME: TIntegerField;
    qryGamesPLAYER_AWAY: TIntegerField;
    qryGamesPLAYER_HOME_SCORE: TIntegerField;
    qryGamesPLAYER_AWAY_SCORE: TIntegerField;
    qryGamesTOURNAMENT: TIntegerField;
    dbedtPLAYER_HOME: TDBEdit;
    dbedtPLAYER_HOME1: TDBEdit;
    lbl4: TLabel;
    qryID: TADOQuery;
    dsID: TDataSource;
    lcbID: TJvDBSearchComboBox;
    qryIDID: TAutoIncField;
    qryIDPLAYER_HOME: TIntegerField;
    qryIDPLAYER_AWAY: TIntegerField;
    qryIDPLAYER_HOME_SCORE: TIntegerField;
    qryIDPLAYER_AWAY_SCORE: TIntegerField;
    qryIDTOURNAMENT: TIntegerField;
    qryTeams: TADOQuery;
    dsTeams: TDataSource;
    qryTeamsTEAMS_ID: TAutoIncField;
    qryTeamsTEAM_NAME: TWideStringField;
    qryTeamsTEAM_TOURNAMENT: TIntegerField;
    qryTeamsTEAM_POINTS: TIntegerField;
    qryTeamsTEAM_MACHES: TIntegerField;
    qryTeamsTEAM_Player: TIntegerField;
    qryTeamsFIFA_TEAM: TIntegerField;
    qryGames_HOME_NAME: TStringField;
    qryGames_AWAY_NAME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure lcbIDChange(Sender: TObject);

  private
    procedure CloseDS();
  public
    { Public declarations }
  end;

var
  fmGamePlay: TfmGamePlay;

implementation

uses dmMain, fTeamEdit;

{$R *.dfm}

procedure TfmGamePlay.btn2Click(Sender: TObject);
begin
  CloseDS;
  fmGamePlay.Close;
end;

procedure TfmGamePlay.CloseDS;
begin
  qryID.Close;
  qryGames.Close;
end;

procedure TfmGamePlay.FormShow(Sender: TObject);
var
pk_code :Integer;
begin
 fmEditTeam.SetParamsAdo(qryID, '_GAME_TOURNAMENT', viCurrentTournament);
 qryID.Open;
end;

procedure TfmGamePlay.lcbIDChange(Sender: TObject);
begin
  qryGames.Close;
  fmEditTeam.SetParamsAdo(qryGames, 'PK_CODE', qryIDID.AsInteger);
  qryGames.Open;
end;

end.
