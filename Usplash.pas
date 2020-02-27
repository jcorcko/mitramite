unit Usplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Effects;

type
  TSplashForm = class(TForm)
    Rectangle1: TRectangle;
    StartupTimer: TTimer;
    ShadowEffect1: TShadowEffect;
    procedure StartupTimerTimer(Sender: TObject);
    procedure LoadMainForm;
    procedure FormCreate(Sender: TObject);
private
  FStartTicks: integer;
  FOKToClose: boolean;
public
  var FInitialized: Boolean;
end;

var
  SplashForm: TSplashForm;
implementation

{$R *.fmx}

uses Umain;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
  StartupTimer.Enabled := True;
end;

procedure TSplashForm.LoadMainForm;
var
  form: TForm;
begin
  form := TFMain.Create(Application);
  form.Show;
  Application.MainForm := form;
  Close;
end;

procedure TSplashForm.StartupTimerTimer(Sender: TObject);
begin
  StartupTimer.Enabled := false;
  if not FInitialized then begin
    FInitialized := true;
    LoadMainForm;
  end;
end;

end.
