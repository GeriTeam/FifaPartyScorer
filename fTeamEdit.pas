unit fTeamEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ADODB, DB, DBTables, JvBDEQuery, Buttons,
  JvExControls, JvDBLookup, ComCtrls, ExtCtrls, JvExExtCtrls, JvRadioGroup,
  JvExMask, JvToolEdit, JvDBLookupComboEdit, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvDBCombobox, JvMemo,
  dblookup, frxClass, frxDBSet;

type
  TfmEditTeam = class(TForm)
    tb1: TTabSheet;
    dsDataEdit: TDataSource;
    tb2: TTabSheet;
    tb3: TTabSheet;
    grpAddTeam: TGroupBox;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtPlayer: TJvDBLookupCombo;
    rgTeam: TJvRadioGroup;
    lblAddTeam: TLabel;
    dsPlayers: TDataSource;
    JvDBGrid1: TJvDBGrid;
    dsKlasirane: TDataSource;
    dsTournaments: TDataSource;
    lcbTournament: TJvDBSearchComboBox;
    btnRefresh: TBitBtn;
    dsGames: TDataSource;
    dsTeams: TDataSource;
    gdGames: TJvDBGrid;
    btn2: TBitBtn;
    pnl1: TPanel;
    btn1: TBitBtn;
    lcbTournamentGenerate: TJvDBSearchComboBox;
    lcbFilterTournament: TJvDBSearchComboBox;
    grdTeams: TJvDBGrid;
    lcbTeamsAddFilter: TJvDBSearchComboBox;
    pgc1: TPageControl;
    lcbInsertTeam: TJvDBSearchComboBox;
    dsTeamsAdd: TDataSource;
    grp1: TGroupBox;
    edtTEAM_NAME: TEdit;
    edtAddTournament: TEdit;
    btn3: TBitBtn;
    lbl1: TLabel;
    dsFIFATeams: TDataSource;
    cbRealTeam: TJvDBSearchComboBox;
    qryTeamsAdd: TADOQuery;
    qryTeamsAddTEAM_TOURNAMENT: TIntegerField;
    qryTeamsAddTEAMS_ID: TAutoIncField;
    qryTeamsAddTEAM_NAME: TWideStringField;
    qryTeamsAddTEAM_POINTS: TIntegerField;
    qryTeamsAddTEAM_MACHES: TIntegerField;
    qryTeamsAddTEAM_Player: TIntegerField;
    qryDataEdit: TADOQuery;
    qryDataEditTEAM_TOURNAMENT: TIntegerField;
    qryDataEditTEAMS_ID: TAutoIncField;
    qryDataEditTEAM_NAME: TWideStringField;
    qryDataEditTEAM_POINTS: TIntegerField;
    qryDataEditTEAM_MACHES: TIntegerField;
    qryDataEditTEAM_Player: TIntegerField;
    qryDataEditFIFA_TEAM: TIntegerField;
    qryFIFATeams: TADOQuery;
    qryTournaments: TADOQuery;
    qryFIFATeamsID: TAutoIncField;
    qryFIFATeamsNAME: TWideStringField;
    qryTournamentsID: TAutoIncField;
    qryTournamentsNAME: TWideStringField;
    qryTournamentsSCHEME: TIntegerField;
    qryTournamentsGENERATED: TBooleanField;
    qryKlasirane: TADOQuery;
    qryKlasiraneTEAMS_ID: TAutoIncField;
    qryKlasiraneTEAM_NAME: TWideStringField;
    qryKlasiraneTEAM_TOURNAMENT: TIntegerField;
    qryKlasiraneTEAM_POINTS: TIntegerField;
    qryKlasiraneTEAM_MACHES: TIntegerField;
    qryKlasiraneTEAM_Player: TIntegerField;
    qryKlasiraneFIFA_TEAM: TIntegerField;
    qryPlayers: TADOQuery;
    qryPlayersID: TAutoIncField;
    qryPlayersNAME: TWideStringField;
    qryGames: TADOQuery;
    qryGamesID: TAutoIncField;
    qryGamesPLAYER_HOME: TIntegerField;
    qryGamesPLAYER_AWAY: TIntegerField;
    qryGamesPLAYER_HOME_SCORE: TIntegerField;
    qryGamesPLAYER_AWAY_SCORE: TIntegerField;
    qryGamesTOURNAMENT: TIntegerField;
    qryTeams: TADOQuery;
    qryTeamsTEAMS_ID: TAutoIncField;
    qryTeamsTEAM_NAME: TWideStringField;
    qryTeamsTEAM_TOURNAMENT: TIntegerField;
    qryTeamsTEAM_POINTS: TIntegerField;
    qryTeamsTEAM_MACHES: TIntegerField;
    qryTeamsTEAM_Player: TIntegerField;
    qryTeamsFIFA_TEAM: TIntegerField;
    qryKlasirane_Player_Name: TStringField;
    qryDataEdit_TOURNAMENT_NAME: TStringField;
    qryDataEdit_PLAYER_NAME: TStringField;
    qryGames_NAME_HOME: TStringField;
    qryGames_AWAY_TEAM: TStringField;
    btn4: TBitBtn;
    qryGamesIS_PLAYED: TBooleanField;
    qryKlasiraneTEAM_WIN: TIntegerField;
    qryKlasiraneTEAM_LOSE: TIntegerField;
    qryKlasiraneTEAM_DRAW: TIntegerField;
    btn5: TButton;
    rptKlasirane: TfrxReport;
    Klasirane: TfrxDBDataset;
    procedure lcbTournamentChange(Sender: TObject);
    procedure pgctb2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lcbFilterTournamentChange(Sender: TObject);
    procedure qryTeamsBeforeOpen(DataSet: TDataSet);
    procedure lcbTeamsAddFilterChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rgTeamClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    procedure CloseDataSets();
    procedure SetTournamentGenerated(param :Integer);
    function GetTournamentGenerated(param :Integer) : Boolean;
  public
    procedure SetParamsAdo (qry : TADOQuery; Prm : string; Val : Variant);
  end;

var
  fmEditTeam: TfmEditTeam;
  isFilter :Boolean;
  viCurrentTournament :Integer;

implementation

uses dmMain, fPlayGame;

{$R *.dfm}

procedure TfmEditTeam.BitBtn3Click(Sender: TObject);
begin
  try
    qryDataEdit.Insert;
    qryDataEditTEAM_NAME.AsString := edtTEAM_NAME.Text;
    qryDataEditTEAM_TOURNAMENT.AsInteger := lcbInsertTeam.ItemIndex + 1;

    if rgTeam.ItemIndex = 1 then
      qryDataEditFIFA_TEAM.AsInteger := cbRealTeam.ItemIndex + 1
    else
      qryDataEditFIFA_TEAM.AsInteger := 632;

    qryDataEdit.Post;
  finally
    qryDataEdit.Close;
    qryDataEdit.Open;
  end;

end;

procedure TfmEditTeam.btn1Click(Sender: TObject);
var
ItemIndex,CurrentTournament :Integer;
br :Integer;
WinMessage : String;
begin
  qryGames.Close;
  SetParamsAdo(qryGames,'_GAME_TOURNAMENT', null);
  br := 0;
  ItemIndex := lcbTournamentGenerate.ItemIndex + 1;
  isFilter := False;
    if not GetTournamentGenerated(ItemIndex) then
      begin
        qryDataEdit.Close;
        SetParamsAdo(qryDataEdit,'_TEAM_TOURNAMENT', ItemIndex);
        CurrentTournament := ItemIndex;
        qryDataEdit.Open;
        qryGames.Open;
//        qryTournaments.Close;
//        qryTournaments.ParamByName('_TR_ID').Clear;
//        qryTournaments.Open;
        try
          while not qryDataEdit.Eof do
            begin
              qryTeams.Close;
              SetParamsAdo(qryTeams,'_TOURNAMENT', ItemIndex);
              SetParamsAdo(qryTeams,'_TMHOME', qryDataEditTEAMS_ID.AsInteger);
              qryTeams.Open;
              while not qryTeams.Eof do
                begin
                  qryGames.Insert;
                  qryGamesPLAYER_HOME.AsInteger := qryDataEditTEAMS_ID.AsInteger;
                  qryGamesPLAYER_AWAY.AsInteger := qryTeamsTEAMS_ID.AsInteger;
                  qryGamesTOURNAMENT.AsInteger := CurrentTournament;
                  qryGames.Post;
                  qryTeams.Next;
                  Inc(br);
                end;
              qryTeams.Close;
              qryDataEdit.Next;
            end;
        finally
          qryDataEdit.Close;
          SetTournamentGenerated(ItemIndex);
          WinMessage := 'Успещно са генерирани ' + IntToStr(br) + ' мача!';
          MessageDlg(WinMessage, mtInformation, mbOKCancel, 0);
        end;
      end
    else
      MessageDlg('Този турнир вече е генериран', mtError, mbOKCancel, 0);
end;

procedure TfmEditTeam.btn3Click(Sender: TObject);
begin
  qryTournaments.Insert;
  qryTournamentsNAME.AsString := edtAddTournament.Text;
  qryTournamentsGENERATED.AsBoolean := False;
  qryTournaments.Post;
  MessageDlg('Успешно създаден Турнир ''' + edtAddTournament.Text + '''', mtInformation, mbOKCancel, 0 );
end;

procedure TfmEditTeam.btn4Click(Sender: TObject);
begin
  if viCurrentTournament > 0 then
    fmGamePlay.ShowModal
  else
  ShowMessage(' Не е избран турнир ! ');
end;

procedure TfmEditTeam.btn5Click(Sender: TObject);
begin
  rptKlasirane.ShowReport(True);
end;

procedure TfmEditTeam.CloseDataSets;
begin
  qryKlasirane.Close;
  qryTournaments.Close;
  qryDataEdit.Close;
  qryPlayers.Close;
  qryGames.Close;
  qryTeams.Close;
end;

procedure TfmEditTeam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   CloseDataSets;
end;

procedure TfmEditTeam.FormShow(Sender: TObject);
begin
  pgc1.ActivePage := tb1;
  CloseDataSets;
  viCurrentTournament := -1;

  if pgc1.ActivePage = tb1 then
    qryTournaments.Open;

  if pgc1.ActivePage = tb2 then
    qryTournaments.Open;

  if pgc1.ActivePage = tb3 then
    qryTournaments.Open;
end;

function TfmEditTeam.GetTournamentGenerated(param :Integer): Boolean;
begin

  qryTournaments.Close;
  SetParamsAdo(qryTournaments,'_TR_ID',param);
    qryTournaments.Open;
  if qryTournamentsGENERATED.AsBoolean = True then
    begin
      qryTournaments.Close;
      SetParamsAdo(qryTournaments,'_TR_ID',null);
      qryTournaments.Open;
      lcbTournamentGenerate.ItemIndex := param - 1;
      Result := True
    end
  else
    begin
      qryTournaments.Close;
      SetParamsAdo(qryTournaments,'_TR_ID', null);
      qryTournaments.Open;
      lcbTournamentGenerate.ItemIndex := param - 1;
      Result := False;
    end;

end;

procedure TfmEditTeam.lcbFilterTournamentChange(Sender: TObject);
begin

  try
    isFilter := True;
    qryGames.Close;
    qryTeams.Close;
    SetParamsAdo(qryGames,'_GAME_TOURNAMENT',lcbFilterTournament.ItemIndex + 1);
    SetParamsAdo(qryTeams,'_TOURNAMENT',lcbFilterTournament.ItemIndex + 1);
    viCurrentTournament := lcbFilterTournament.ItemIndex + 1;
  finally
    qryTeams.Open;
    qryGames.Open;
  end;


end;

procedure TfmEditTeam.lcbTeamsAddFilterChange(Sender: TObject);
begin
  try
    isFilter := True;
    qryDataEdit.Close;
    qryPlayers.Close;
    SetParamsAdo(qryDataEdit, '_TEAM_TOURNAMENT', lcbFilterTournament.ItemIndex + 1);
    viCurrentTournament := lcbFilterTournament.ItemIndex + 1;
  finally
    qryDataEdit.Open;
    qryPlayers.Open;

  end;
end;

procedure TfmEditTeam.lcbTournamentChange(Sender: TObject);
begin
  if lcbTournament.ItemIndex <> -1 then
    begin
      qryPlayers.Close;
      qryKlasirane.Close;
      SetParamsAdo(qryKlasirane, 'TOURNAMENT', lcbTournamentGenerate.ItemIndex + 1);
      viCurrentTournament := lcbTournamentGenerate.ItemIndex + 1;
      qryPlayers.Open;
      qryKlasirane.Open;
    end;

end;

procedure TfmEditTeam.pgctb2Change(Sender: TObject);
begin
  CloseDataSets;

  if pgc1.ActivePage = tb1 then
    qryTournaments.Open;

  if pgc1.ActivePage = tb2 then
    qryTournaments.Open;

  if pgc1.ActivePage = tb3 then
    qryTournaments.Open;
end;

procedure TfmEditTeam.qryTeamsBeforeOpen(DataSet: TDataSet);
begin
  if isFilter then
    SetParamsAdo(qryTeams, '_TMHOME', null );
end;

procedure TfmEditTeam.rgTeamClick(Sender: TObject);
begin
  if rgTeam.ItemIndex = 0 then
    begin
      cbRealTeam.Enabled := False;
      qryFIFATeams.Close
    end
  else
  begin
    qryFIFATeams.Open;
    cbRealTeam.Enabled := True;
  end;
end;

procedure TfmEditTeam.SetParamsAdo(qry: TADOQuery; Prm: string; Val: Variant);
var
  Z : Integer;
begin
  with qry do
    for Z:= 0 to Parameters.Count - 1 do
      if (Prm = '*') or (Parameters[Z].Name = Prm) then
        Parameters[Z].Value:= Val;
end;

procedure TfmEditTeam.SetTournamentGenerated(param :Integer);
begin
  qryTournaments.Close;
  SetParamsAdo(qryTournaments,'_TR_ID', param);
  qryTournaments.Open;
  qryTournaments.Edit;
  qryTournamentsGENERATED.AsBoolean := True;
  qryTournaments.Post;
  qryTournaments.Close;
  SetParamsAdo(qryTournaments,'_TR_ID', null);
  qryTournaments.Open;
end;

end.
