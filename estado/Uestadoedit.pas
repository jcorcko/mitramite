unit Uestadoedit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo;

type
  TFestadoedit = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label2: TLabel;
    ToolBar2: TToolBar;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    Layout1: TLayout;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Layout6: TLayout;
    RectMessage: TRectangle;
    Text1: TText;
    FadeTransitionEffect1: TFadeTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    SpeedButton12: TSpeedButton;
    Line1: TLine;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    modificado: Boolean;
  end;

var
  Festadoedit: TFestadoedit;

implementation

{$R *.fmx}

uses Umitramitedm;

procedure TFestadoedit.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if (Memo1.Text='') then errores := errores + #149' La descripción del estado de trámite es requerido.';
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.estados.Active then mitramitedm.estados.Active := True;
    if mitramitedm.estados.Locate('id', mitramitedm.qListarEstados.FieldByName('id').AsInteger, []) and modificado then
    begin
      mitramitedm.estados.Edit;
      mitramitedm.estados.FieldByName('estado').AsString := Memo1.Text;
      mitramitedm.estados.Post;
      ModalResult := mrOK;
    end else Close;
  end;
end;

procedure TFestadoedit.Edit1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB])or(KeyChar in ['0'..'9']) then else Abort;
end;

procedure TFestadoedit.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  modificado := True;
end;

procedure TFestadoedit.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFestadoedit.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
