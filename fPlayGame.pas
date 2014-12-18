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
    qryGamesIS_PLAYED: TBooleanField;
    lblISPLAYED: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure lcbIDChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbedtHomeScoreChange(Sender: TObject);
    procedure dbedtAwayScoreChange(Sender: TObject);

  private
    procedure CloseDS();
  public
    procedure SetParamsAdo(qry: TADOQuery; Prm: string; Val: Variant);
  end;

var
  fmGamePlay: TfmGamePlay;
  isChange :Boolean;

implementation

uses dmMain, fTeamEdit;

{$R *.dfm}

procedure TfmGamePlay.btn1Click(Sender: TObject);
begin
  if isChange and not qryGamesIS_PLAYED.AsBoolean then
  begin
    qryGames.Edit;
    qryGamesPLAYER_HOME_SCORE.AsInteger := StrToInt(dbedtHomeScore.Text);
    qryGamesPLAYER_AWAY_SCORE.AsInteger := StrToInt(dbedtAwayScore.Text);
    qryGames.Post;
//Домакин
    if qryGamesPLAYER_HOME_SCORE.AsInteger > qryGamesPLAYER_AWAY_SCORE.AsInteger then
     begin
       qryTeams.Close;
       SetParamsAdo(qryTeams,'_TMHOME', qryGamesPLAYER_HOME.AsInteger);
       qryTeams.Open;
       qryTeams.Edit;
       qryTeamsTEAM_POINTS.AsInteger := qryTeamsTEAM_POINTS.AsInteger + 3;
       qryTeams.Append;
     end;
//Гост
    if qryGamesPLAYER_HOME_SCORE.AsInteger < qryGamesPLAYER_AWAY_SCORE.AsInteger then
     begin
       qryTeams.Close;
       SetParamsAdo(qryTeams,'_TMHOME', qryGamesPLAYER_AWAY.AsInteger);
       qryTeams.Open;
       qryTeams.Edit;
       qryTeamsTEAM_POINTS.AsInteger := qryTeamsTEAM_POINTS.AsInteger + 3;
       qryTeams.Append;
     end;
 // Равен
    if qryGamesPLAYER_HOME_SCORE.AsInteger = qryGamesPLAYER_AWAY_SCORE.AsInteger then
     begin
       qryTeams.Close;
       SetParamsAdo(qryTeams,'_TMHOME', qryGamesPLAYER_AWAY.AsInteger);
       qryTeams.Open;
       qryTeams.Edit;
       qryTeamsTEAM_POINTS.AsInteger := qryTeamsTEAM_POINTS.AsInteger + 1;
       qryTeams.Append;
       qryTeams.Close;
       SetParamsAdo(qryTeams,'_TMHOME', qryGamesPLAYER_HOME.AsInteger);
       qryTeams.Open;
       qryTeams.Edit;
       qryTeamsTEAM_POINTS.AsInteger := qryTeamsTEAM_POINTS.AsInteger + 1;
       qryTeams.Append;
     end;
// Добаваяме + 1 за това че мачът се е изиграл

     qryTeams.Close;
     SetParamsAdo(qryTeams,'_TMHOME', qryGamesPLAYER_AWAY.AsInteger);
     qryTeams.Open;
     qryTeams.Edit;
     qryTeamsTEAM_MACHES.AsInteger := qryTeamsTEAM_MACHES.AsInteger+ 1;
     qryTeams.Append;
     qryTeams.Close;
     SetParamsAdo(qryTeams,'_TMHOME', qryGamesPLAYER_HOME.AsInteger);
     qryTeams.Open;
     qryTeams.Edit;
     qryTeamsTEAM_MACHES.AsInteger := qryTeamsTEAM_MACHES.AsInteger + 1;
     qryTeams.Append;

// нулираме параметъра
     qryGames.Edit;
     qryGamesIS_PLAYED.AsBoolean := True;
     qryGames.Append;
     qryTeams.Close;
     SetParamsAdo(qryTeams,'_TMHOME', null);
     qryTeams.Open;

  end;
end;

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

procedure TfmGamePlay.dbedtAwayScoreChange(Sender: TObject);
begin
  isChange := True;
end;

procedure TfmGamePlay.dbedtHomeScoreChange(Sender: TObject);
begin
  isChange := True;
end;

procedure TfmGamePlay.FormShow(Sender: TObject);
var
pk_code :Integer;
begin
 fmEditTeam.SetParamsAdo(qryID, '_GAME_TOURNAMENT', viCurrentTournament);
 qryID.Open;
 isChange := False;
end;

procedure TfmGamePlay.lcbIDChange(Sender: TObject);
begin
  qryGames.Close;
  fmEditTeam.SetParamsAdo(qryGames, 'PK_CODE', qryIDID.AsInteger);
  qryGames.Open;
  if qryGamesIS_PLAYED.AsBoolean then
    begin
      lblISPLAYED.Caption := 'Мачът е игран';
      lblISPLAYED.Font.Color := clRed;
    end
  else
    begin
      lblISPLAYED.Caption := 'Мачът не е игран';
      lblISPLAYED.Font.Color := clGreen;
    end;
end;

procedure TfmGamePlay.SetParamsAdo(qry: TADOQuery; Prm: string; Val: Variant);
var
  Z : Integer;
begin
  with qry do
    for Z:= 0 to Parameters.Count - 1 do
      if (Prm = '*') or (Parameters[Z].Name = Prm) then
        Parameters[Z].Value:= Val;
end;

end.
