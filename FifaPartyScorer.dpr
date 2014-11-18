program FifaPartyScorer;

uses
  Forms,
  dmMain in 'dmMain.pas' {dMain: TDataModule},
  fTeamEdit in 'fTeamEdit.pas' {fmEditTeam},
  fPlayGame in 'fPlayGame.pas' {fmGamePlay};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdMain, dMain);
  Application.CreateForm(TfmEditTeam, fmEditTeam);
  Application.CreateForm(TfmGamePlay, fmGamePlay);
  Application.Run;
end.
