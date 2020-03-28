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
  Ufuncionarionew in 'funcionario\Ufuncionarionew.pas' {Ffuncionarionew},
  Ufuncionarioedit in 'funcionario\Ufuncionarioedit.pas' {Ffuncionarioedit},
  Uestadonew in 'estado\Uestadonew.pas' {Festadonew},
  Ucargonew in 'cargo\Ucargonew.pas' {Fcargonew},
  Uestadoedit in 'estado\Uestadoedit.pas' {Festadoedit},
  Uunidadnew in 'unidad\Uunidadnew.pas' {Funidadnew},
  Uunidadedit in 'unidad\Uunidadedit.pas' {Funidadedit},
  Uoficinanew in 'oficina\Uoficinanew.pas' {Foficinanew},
  Uoficinaedit in 'oficina\Uoficinaedit.pas' {Foficinaedit},
  Utramitenew in 'tramite\Utramitenew.pas' {Ftramitenew},
  Utramiteedit in 'tramite\Utramiteedit.pas' {Ftramiteedit},
  Urequisitonew in 'requisito\Urequisitonew.pas' {Frequisitonew},
  Urequisitoedit in 'requisito\Urequisitoedit.pas' {Frequisitoedit},
  Urequisitoview in 'requisito\Urequisitoview.pas' {Frequisitoview},
  Urequisitoadd in 'requisito\Urequisitoadd.pas' {Frequisitoadd},
  Uprueba in 'Uprueba.pas' {Fpruebas};

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
  Application.CreateForm(TFestadonew, Festadonew);
  Application.CreateForm(TFfuncionarionew, Ffuncionarionew);
  Application.CreateForm(TFfuncionarioedit, Ffuncionarioedit);
  Application.CreateForm(TFcargonew, Fcargonew);
  Application.CreateForm(TFcargonew, Fcargonew);
  Application.CreateForm(TFestadoedit, Festadoedit);
  Application.CreateForm(TFunidadnew, Funidadnew);
  Application.CreateForm(TFunidadedit, Funidadedit);
  Application.CreateForm(TFoficinanew, Foficinanew);
  Application.CreateForm(TFoficinaedit, Foficinaedit);
  Application.CreateForm(TFtramitenew, Ftramitenew);
  Application.CreateForm(TFtramiteedit, Ftramiteedit);
  Application.CreateForm(TFrequisitonew, Frequisitonew);
  Application.CreateForm(TFrequisitoedit, Frequisitoedit);
  Application.CreateForm(TFrequisitoview, Frequisitoview);
  Application.CreateForm(TFrequisitoadd, Frequisitoadd);
  Application.CreateForm(TFpruebas, Fpruebas);
  Application.Run;
end.
