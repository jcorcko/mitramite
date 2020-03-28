unit Utramiteedit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo, DB, FireDAC.Stan.Error, FMX.EditBox,
  FMX.ComboTrackBar;

type
  TFtramiteedit = class(TForm)
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
    Edit1: TEdit;
    Rectangle3: TRectangle;
    Label1: TLabel;
    Panel1: TPanel;
    Edit2: TEdit;
    EditButton1: TEditButton;
    Rectangle5: TRectangle;
    Label4: TLabel;
    Label7: TLabel;
    Rectangle6: TRectangle;
    Label5: TLabel;
    Rectangle7: TRectangle;
    Label6: TLabel;
    ComboTrackBar1: TComboTrackBar;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2ChangeTracking(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EditButton1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboTrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    modificado: Boolean;
  end;

var
  Ftramiteedit: TFtramiteedit;

implementation

{$R *.fmx}

uses Umitramitedm, Ufuncionarionew, Uoficinanew;

procedure TFtramiteedit.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if (Edit1.Text='') then errores := errores + #149' El código de trámite es requerido.'#10;
  if (Memo1.Text='') then errores := errores + #149' El nombre de trámite es requerido.'#10;
  if (Label7.Text='') then errores := errores + #149' El código de oficina es requerido.';
  if (StrToInt(ComboTrackBar1.Text)>100) or (StrToInt(ComboTrackBar1.Text)<1) or (ComboTrackBar1.Text='') then errores := errores + #149' El tiempo está fuera de rango, ingrese entre 1 y 100.';
  if (ComboBox1.ItemIndex<0) then errores := errores + #149' La unidad de tiempo es requerida.';
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.tramites.Active then mitramitedm.tramites.Active := True;
    if mitramitedm.tramites.Locate('id', mitramitedm.qListarTramites.FieldByName('id').AsInteger, []) and modificado then
    begin
      try
        mitramitedm.tramites.Edit;
        mitramitedm.tramites.FieldByName('codigo').AsString := Edit1.Text;
        mitramitedm.tramites.FieldByName('tramite').AsString := Memo1.Text;
        mitramitedm.tramites.FieldByName('oficina_id').AsInteger := mitramitedm.qListarOficinas.FieldByName('id').AsInteger;
        mitramitedm.tramites.FieldByName('tiempo').AsString := ComboTrackBar1.Text;
        mitramitedm.tramites.FieldByName('unidad_tiempo').AsInteger := ComboBox1.ItemIndex+1;
        mitramitedm.tramites.Post;
      except
        on E: EFDDBEngineException do begin
          if E.Kind = ekUKViolated then
          begin
            Text1.Text := 'El código de trámite ya fue introducido en un registro anterior.';
            RectMessage.Opacity := 0;
            RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
          end;
          mitramitedm.tramites.Cancel;
          abort;
        end;
      end;
      ModalResult := mrOK;
    end else Close;
  end;
end;

procedure TFtramiteedit.ComboBox1Change(Sender: TObject);
begin
  modificado := True;
end;

procedure TFtramiteedit.ComboTrackBar1Change(Sender: TObject);
begin
  modificado := True;
end;

procedure TFtramiteedit.Edit2ChangeTracking(Sender: TObject);
begin
  if mitramitedm.qListarOficinas.Locate('codigo', Edit2.Text, [loPartialKey]) and (Edit2.Text<>'') then Label7.Text := mitramitedm.qListarOficinas.FieldByName('oficina').AsString
  else Label7.Text := '';
end;

procedure TFtramiteedit.Edit2KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB, VKRETURN, VKESCAPE])or(KeyChar in ['0'..'9']) then
  begin
    if Key in [VKTAB, VKRETURN] then
    begin
      if Label7.Text<>'' then
      begin
        Edit2.Text := mitramitedm.qListarOficinas.FieldByName('codigo').AsString;
        Edit2.SelectAll;
      end;
    end;
  end
  else Abort;
end;

procedure TFtramiteedit.EditButton1Click(Sender: TObject);
begin
  Foficinanew.Edit1.Text := '';
  Foficinanew.Edit2.Text := '';
  Foficinanew.Edit3.Text := '';
  Foficinanew.Memo1.Text := '';
  Foficinanew.RectMessage.Opacity := 0;
  Foficinanew.Showmodal;
  if Foficinanew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    mitramitedm.qListarOficinas.Close;
    mitramitedm.qListarOficinas.Open();
    Edit2.Text := Foficinanew.Edit1.Text;
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFtramiteedit.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  modificado := True;
end;

procedure TFtramiteedit.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = VKEscape then Close;
end;

procedure TFtramiteedit.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFtramiteedit.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
