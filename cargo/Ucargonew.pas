unit Ucargonew;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo, FireDAC.Stan.Error;

type
  TFcargonew = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label2: TLabel;
    ToolBar2: TToolBar;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    Layout1: TLayout;
    Edit1: TEdit;
    Rectangle3: TRectangle;
    Label1: TLabel;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Rectangle5: TRectangle;
    Label4: TLabel;
    Layout6: TLayout;
    RectMessage: TRectangle;
    Text1: TText;
    FadeTransitionEffect1: TFadeTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    SpeedButton12: TSpeedButton;
    Line1: TLine;
    Memo1: TMemo;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcargonew: TFcargonew;

implementation

{$R *.fmx}

uses Umitramitedm;

procedure TFcargonew.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if Edit1.Text='' then errores := #149' El código de cargo es requerido.'#10;
  if (Memo1.Text='') then errores := errores + #149' La descripción del cargo es requerido.';
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.cargos.Active then mitramitedm.cargos.Active := True;
    try
      mitramitedm.cargos.Insert;
      mitramitedm.cargos.FieldByName('codigo').AsString := Edit1.Text;
      mitramitedm.cargos.FieldByName('cargo').AsString := Memo1.Text;
      mitramitedm.cargos.FieldByName('servicio').AsString := Edit2.Text;
      mitramitedm.cargos.Post;
    except
      on E: EFDDBEngineException do begin
        if E.Kind = ekUKViolated then
        begin
          Text1.Text := 'El código de cargo ya fue introducido en un registro anterior.';
          RectMessage.Opacity := 0;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
        end;
        mitramitedm.cargos.Cancel;
        abort;
      end;
    end;
    ModalResult := mrOK;
  end;
end;

procedure TFcargonew.Edit1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB])or(KeyChar in ['0'..'9']) then else Abort;
end;

procedure TFcargonew.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFcargonew.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
