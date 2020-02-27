program MiTramite;

uses
  System.StartUpCopy,
  FMX.Forms,
  Umain in 'Umain.pas' {Fmain},
  Usplash in 'Usplash.pas' {SplashForm},
  Umitramitedm in 'Umitramitedm.pas' {mitramitedm: TDataModule},
  Upersonanew in 'persona\Upersonanew.pas' {Fpersonanew},
  Upersonaedit in 'persona\Upersonaedit.pas' {Fpersonaedit},
  Uitemedit in 'item\Uitemedit.pas' {Fitemedit},
  Uitemnew in 'item\Uitemnew.pas' {Fitemnew},
  Ucargoedit in 'cargo\Ucargoedit.pas' {Fcargoedit},
  Ucargonew in 'cargo\Ucargonew.pas' {Fcargonew};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSplashForm, SplashForm);
  Application.CreateForm(Tmitramitedm, mitramitedm);
  Application.CreateForm(TFpersonanew, Fpersonanew);
  Application.CreateForm(TFpersonaedit, Fpersonaedit);
  Application.CreateForm(TFitemedit, Fitemedit);
  Application.CreateForm(TFitemnew, Fitemnew);
  Application.CreateForm(TFcargoedit, Fcargoedit);
  Application.CreateForm(TFcargonew, Fcargonew);
  Application.Run;
end.
