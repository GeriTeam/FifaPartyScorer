program FifaPartyScorer;

uses
  Forms,
  dmMain in 'dmMain.pas' {dMain: TDataModule},
  fTeamEdit in 'fTeamEdit.pas' {fmEditTeam};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdMain, dMain);
  Application.CreateForm(TfmEditTeam, fmEditTeam);
  Application.Run;
end.
