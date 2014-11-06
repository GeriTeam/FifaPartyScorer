unit fTeamEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ADODB, DB, DBTables, JvBDEQuery, Buttons,
  JvExControls, JvDBLookup, ComCtrls, ExtCtrls, JvExExtCtrls, JvRadioGroup,
  JvExMask, JvToolEdit, JvDBLookupComboEdit, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvExStdCtrls, JvCombobox, JvDBSearchComboBox;

type
  TfmEditTeam = class(TForm)
    PageControl1: TPageControl;
    tb1: TTabSheet;
    qryDataEdit: TJvQuery;
    qryDataEditTEAMS_ID: TIntegerField;
    qryDataEditTEAM_NAME: TStringField;
    qryDataEditTEAM_TOURNAMENT: TIntegerField;
    qryDataEditTEAM_POINTS: TIntegerField;
    qryDataEditTEAM_MACHES: TIntegerField;
    dsDataEdit: TDataSource;
    TabSheet2: TTabSheet;
    tb3: TTabSheet;
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
    btn1: TBitBtn;
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
    lbl1: TLabel;
    lbl2: TLabel;
    lcbTournamentGenerate: TJvDBLookupCombo;
    procedure BitBtn1Click(Sender: TObject);
    procedure lcbTournamentChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure CloseDataSets();
    procedure SetTournamentGenerated();
    function GetTournamentGenerated() : Boolean;
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

procedure TfmEditTeam.btn1Click(Sender: TObject);
var
br :Integer;
WinMessage : String;
begin
  br := 0;
  qryTournaments.Open;
  if lcbTournament.ItemIndex <> -1 then
    if not GetTournamentGenerated() then
      begin
        qryDataEdit.Close;
        qryDataEdit.ParamByName('_TEAM_TOURNAMENT').AsInteger :=
          Integer(lcbTournamentGenerate.KeyValue);
        qryDataEdit.Open;
        qryGames.Open;


        try
          while not qryDataEdit.Eof do
            begin
              qryTeams.ParamByName('_TMHOME').AsInteger :=
                qryDataEditTEAMS_ID.AsInteger;
              qryTeams.Open;
              lbl1.Caption := IntToStr(qryTeams.RecordCount);
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
          lbl1.Caption := lcbTournamentGenerate.Value;
          SetTournamentGenerated;
          WinMessage := 'Успещно са генерирани ' + IntToStr(br) + ' мача!';
          MessageDlg(WinMessage, mtInformation, mbOKCancel, 0);
        end;
      end
    else
      MessageDlg('Този турнир вече е генериран', mtError, mbOKCancel, 0);
end;

procedure TfmEditTeam.btn2Click(Sender: TObject);
begin
  qryGames.Close;
  qryGames.Open;
end;

procedure TfmEditTeam.CloseDataSets;
begin
  qryKlasirane.Close;
  qryTournaments.Close;
  qryDataEdit.Close;
  qryPlayers.Close;
end;

procedure TfmEditTeam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   CloseDataSets;
end;

procedure TfmEditTeam.FormShow(Sender: TObject);
begin
  CloseDataSets;

  if PageControl1.ActivePage = tb1 then
    qryTournaments.Open;

  if PageControl1.ActivePage = tb3 then
    begin
       qryTournaments.Open;
       qryDataEdit.Open;
    end;



end;

function TfmEditTeam.GetTournamentGenerated(): Boolean;
begin
  qryTournaments.Close;
    qryTournaments.ParamByName('_TR_ID').AsInteger :=
  Integer(lcbTournamentGenerate.KeyValue);
    qryTournaments.Open;
  if qryTournamentsGENERATED.AsBoolean = True then
    Result := True
  else
    Result := False;
end;

procedure TfmEditTeam.lcbTournamentChange(Sender: TObject);
begin
  if lcbTournament.ItemIndex <> -1 then
    begin
      qryKlasirane.Close;
      qryKlasirane.ParamByName('TOURNAMENT').AsInteger := Integer(lcbTournamentGenerate.KeyValue);
      qryKlasirane.Open;
    end;

end;

procedure TfmEditTeam.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = tb1 then
    qryTournaments.Open;
end;

procedure TfmEditTeam.SetTournamentGenerated;
begin
  qryTournaments.Close;
  qryTournaments.ParamByName('_TR_ID').AsInteger :=
    Integer(lcbTournamentGenerate.KeyValue);
  qryTournaments.Open;
  qryTournaments.Edit;
  qryTournamentsGENERATED.AsBoolean := True;
  qryTournaments.Post;
  qryTournaments.Close;
  qryTournaments.ParamByName('_TR_ID').Clear;
  qryTournaments.Open;
end;

end.
