unit fTeamEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ADODB, DB, DBTables, JvBDEQuery, Buttons,
  JvExControls, JvDBLookup, ComCtrls, ExtCtrls, JvExExtCtrls, JvRadioGroup,
  JvExMask, JvToolEdit, JvDBLookupComboEdit, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvDBCombobox, JvMemo;

type
  TfmEditTeam = class(TForm)
    tb1: TTabSheet;
    qryDataEdit: TJvQuery;
    qryDataEditTEAMS_ID: TIntegerField;
    qryDataEditTEAM_NAME: TStringField;
    qryDataEditTEAM_TOURNAMENT: TIntegerField;
    qryDataEditTEAM_POINTS: TIntegerField;
    qryDataEditTEAM_MACHES: TIntegerField;
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
    qryPlayers: TJvQuery;
    dsPlayers: TDataSource;
    qryPlayersID: TIntegerField;
    qryPlayersNAME: TStringField;
    qryDataEditTEAM_Player: TIntegerField;
    qryDataEdit_PLAYER_NAME: TStringField;
    JvDBGrid1: TJvDBGrid;
    qryKlasirane: TJvQuery;
    dsKlasirane: TDataSource;
    qryKlasiraneTEAMS_ID: TIntegerField;
    qryKlasiraneTEAM_NAME: TStringField;
    qryKlasiraneTEAM_TOURNAMENT: TIntegerField;
    qryKlasiraneTEAM_POINTS: TIntegerField;
    qryKlasiraneTEAM_MACHES: TIntegerField;
    qryKlasiraneTEAM_Player: TIntegerField;
    qryTournaments: TJvQuery;
    dsTournaments: TDataSource;
    qryTournamentsID: TIntegerField;
    qryTournamentsNAME: TStringField;
    qryTournamentsSCHEME: TIntegerField;
    lcbTournament: TJvDBSearchComboBox;
    btnRefresh: TBitBtn;
    qryTournamentsGENERATED: TBooleanField;
    qryGames: TJvQuery;
    dsGames: TDataSource;
    qryGamesID: TIntegerField;
    qryGamesPLAYER_HOME: TIntegerField;
    qryGamesPLAYER_AWAY: TIntegerField;
    qryGamesPLAYER_HOME_SCORE: TIntegerField;
    qryGamesPLAYER_AWAY_SCORE: TIntegerField;
    qryTeams: TJvQuery;
    dsTeams: TDataSource;
    qryTeamsTEAMS_ID: TIntegerField;
    qryTeamsTEAM_NAME: TStringField;
    qryTeamsTEAM_TOURNAMENT: TIntegerField;
    qryTeamsTEAM_POINTS: TIntegerField;
    qryTeamsTEAM_MACHES: TIntegerField;
    qryTeamsTEAM_Player: TIntegerField;
    qryGamesTOURNAMENT: TIntegerField;
    qryGames_NAME_HOME: TStringField;
    qryGames_NAME_AWAY: TStringField;
    gdGames: TJvDBGrid;
    btn2: TBitBtn;
    qryDataEdit_TOURNAMENT_NAME: TStringField;
    pnl1: TPanel;
    btn1: TBitBtn;
    lcbTournamentGenerate: TJvDBSearchComboBox;
    lcbFilterTournament: TJvDBSearchComboBox;
    grdTeams: TJvDBGrid;
    lcbTeamsAddFilter: TJvDBSearchComboBox;
    pgc1: TPageControl;
    lcbInsertTeam: TJvDBSearchComboBox;
    qryTeamsAdd: TJvQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    dsTeamsAdd: TDataSource;
    grp1: TGroupBox;
    edtTEAM_NAME: TEdit;
    qryKlasirane_Player_Name: TStringField;
    edtAddTournament: TEdit;
    btn3: TBitBtn;
    lbl1: TLabel;
    qryFIFATeams: TJvQuery;
    dsFIFATeams: TDataSource;
    qryFIFATeamsID: TIntegerField;
    qryFIFATeamsNAME: TStringField;
    qryDataEditFIFA_TEAM: TIntegerField;
    cbRealTeam: TJvDBSearchComboBox;
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
  private
    procedure CloseDataSets();
    procedure SetTournamentGenerated(param :Integer);
    function GetTournamentGenerated(param :Integer) : Boolean;
  public
    { Public declarations }
  end;

var
  fmEditTeam: TfmEditTeam;
  isFilter :Boolean;

implementation

uses dmMain;

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
ItemIndex :Integer;
br :Integer;
WinMessage : String;
begin
  qryGames.Close;
  qryGames.ParamByName('_GAME_TOURNAMENT').Clear;
  br := 0;
  ItemIndex := lcbTournamentGenerate.ItemIndex + 1;
  isFilter := False;
    if not GetTournamentGenerated(ItemIndex) then
      begin
        qryDataEdit.Close;
        qryDataEdit.ParamByName('_TEAM_TOURNAMENT').AsInteger := ItemIndex;
        qryDataEdit.Open;
        qryGames.Open;
//        qryTournaments.Close;
//        qryTournaments.ParamByName('_TR_ID').Clear;
//        qryTournaments.Open;

        try
          while not qryDataEdit.Eof do
            begin
              qryTeams.Close;
              qryTeams.ParamByName('_TOURNAMENT').AsInteger := ItemIndex;
              qryTeams.ParamByName('_TMHOME').AsInteger :=
                qryDataEditTEAMS_ID.AsInteger;
              qryTeams.Open;
              while not qryTeams.Eof do
                begin
                  qryGames.Insert;
                  qryGamesPLAYER_HOME.AsInteger := qryDataEditTEAMS_ID.AsInteger;
                  qryGamesPLAYER_AWAY.AsInteger := qryTeamsTEAMS_ID.AsInteger;
                  qryGamesTOURNAMENT.AsInteger := qryDataEdit.ParamByName('_TEAM_TOURNAMENT').AsInteger;
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
  CloseDataSets;

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
    qryTournaments.ParamByName('_TR_ID').AsInteger :=
      param;
    qryTournaments.Open;
  if qryTournamentsGENERATED.AsBoolean = True then
    begin
      qryTournaments.Close;
      qryTournaments.ParamByName('_TR_ID').Clear;
      qryTournaments.Open;
      lcbTournamentGenerate.ItemIndex := param - 1;
      Result := True
    end
  else
    begin
      qryTournaments.Close;
      qryTournaments.ParamByName('_TR_ID').Clear;
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
    qryGames.ParamByName('_GAME_TOURNAMENT').AsInteger := lcbFilterTournament.ItemIndex + 1;
    qryTeams.ParamByName('_TOURNAMENT').AsInteger := lcbFilterTournament.ItemIndex + 1;
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
    qryDataEdit.ParamByName('_TEAM_TOURNAMENT').AsInteger := lcbFilterTournament.ItemIndex + 1;
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
      qryKlasirane.ParamByName('TOURNAMENT').AsInteger := lcbTournamentGenerate.ItemIndex + 1;
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
    qryTeams.ParamByName('_TMHOME').Clear;
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

procedure TfmEditTeam.SetTournamentGenerated(param :Integer);
begin
  qryTournaments.Close;
  qryTournaments.ParamByName('_TR_ID').AsInteger :=
    param;
  qryTournaments.Open;
  qryTournaments.Edit;
  qryTournamentsGENERATED.AsBoolean := True;
  qryTournaments.Post;
  qryTournaments.Close;
  qryTournaments.ParamByName('_TR_ID').Clear;
  qryTournaments.Open;
end;

end.
