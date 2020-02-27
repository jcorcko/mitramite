unit Uitemnew;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo;

type
  TFitemnew = class(TForm)
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
    DateEdit1: TDateEdit;
    Memo1: TMemo;
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
  Fitemnew: TFitemnew;

implementation

{$R *.fmx}

uses Umitramitedm;

procedure TFitemnew.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if Edit1.Text='' then errores := #149' El número de item es requerido.'#10;
  if (Memo1.Text='') then errores := errores + #149' La descripción del item es requerido.'#10;
  if DateEdit1.Date>now then errores := errores + #149' La fecha es incorrecta.'#10;
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.items.Active then mitramitedm.items.Active := True;
    mitramitedm.items.Insert;
    mitramitedm.items.FieldByName('numero').AsString := Edit1.Text;
    mitramitedm.items.FieldByName('descripcion').AsString := Memo1.Text;
    mitramitedm.items.FieldByName('fecha_creacion').AsDateTime := DateEdit1.Date;
    mitramitedm.items.FieldByName('acefalo').AsBoolean := True;
    mitramitedm.items.Post;
    ModalResult := mrOK;
  end;
end;

procedure TFitemnew.Edit1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB])or(KeyChar in ['0'..'9']) then else Abort;
end;

procedure TFitemnew.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFitemnew.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
