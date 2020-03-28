unit Urequisitoedit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo;

type
  TFrequisitoedit = class(TForm)
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
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    modificado: Boolean;
  end;

var
  Frequisitoedit: TFrequisitoedit;

implementation

{$R *.fmx}

uses Umitramitedm;

procedure TFrequisitoedit.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if (Memo1.Text='') then errores := errores + #149' La descripción del requisito de trámite es requerido.';
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.requisitos.Active then mitramitedm.requisitos.Active := True;
    if mitramitedm.requisitos.Locate('id', mitramitedm.qListarRequisitos.FieldByName('id').AsInteger, []) and modificado then
    begin
      mitramitedm.requisitos.Edit;
      mitramitedm.requisitos.FieldByName('requisito').AsString := Memo1.Text;
      mitramitedm.requisitos.Post;
      ModalResult := mrOK;
    end else Close;
  end;
end;

procedure TFrequisitoedit.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = VKESCAPE then Close;
  modificado := True;
end;

procedure TFrequisitoedit.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFrequisitoedit.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
