unit Uunidadedit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo, DB, FireDAC.Stan.Error;

type
  TFunidadedit = class(TForm)
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
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    modificado: Boolean;
  end;

var
  Funidadedit: TFunidadedit;

implementation

{$R *.fmx}

uses Umitramitedm, Ufuncionarionew;

procedure TFunidadedit.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if (Edit1.Text='') then errores := errores + #149' El código de unidad es requerido.'#10;
  if (Memo1.Text='') then errores := errores + #149' El nombre de unidad es requerido.'#10;
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.unidades.Active then mitramitedm.unidades.Active := True;
    if mitramitedm.unidades.Locate('id', mitramitedm.qListarUnidades.FieldByName('id').AsInteger, []) and modificado then
    begin
      try
        mitramitedm.unidades.Edit;
        mitramitedm.unidades.FieldByName('codigo').AsString := Edit1.Text;
        mitramitedm.unidades.FieldByName('unidad').AsString := Memo1.Text;
      if (Label7.Text<>'') then
        mitramitedm.unidades.FieldByName('funcionario_id').AsInteger := mitramitedm.qListarFuncionarios.FieldByName('id').AsInteger
      else mitramitedm.unidades.FieldByName('funcionario_id').AsString := '';
        mitramitedm.unidades.Post;
      except
        on E: EFDDBEngineException do begin
          if E.Kind = ekUKViolated then
          begin
            Text1.Text := 'El código de unidad o carnet de funcionario ya fue introducido en un registro anterior.';
            RectMessage.Opacity := 0;
            RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
          end;
          mitramitedm.unidades.Cancel;
          abort;
        end;
      end;
      ModalResult := mrOK;
    end else close;
  end;
end;

procedure TFunidadedit.Edit1KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB])or(KeyChar in ['0'..'9']) then else Abort;
end;

procedure TFunidadedit.Edit2ChangeTracking(Sender: TObject);
begin
  if mitramitedm.qListarFuncionarios.Locate('carnet', Edit2.Text, [loPartialKey]) and (Edit2.Text<>'') then Label7.Text := mitramitedm.qListarFuncionarios.FieldByName('nombre_funcionario').AsString
  else Label7.Text := '';
end;

procedure TFunidadedit.Edit2KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB, VKRETURN, VKESCAPE])or(KeyChar in ['0'..'9']) then
  begin
    if Key in [VKTAB, VKRETURN] then
    begin
      if Label7.Text<>'' then
      begin
        Edit2.Text := mitramitedm.qListarFuncionarios.FieldByName('carnet').AsString;
        Edit2.SelectAll;
      end;
    end;
  end
  else Abort;
end;

procedure TFunidadedit.EditButton1Click(Sender: TObject);
begin
  Ffuncionarionew.Edit1.Text := '';
  Ffuncionarionew.Edit2.Text := '';
  Ffuncionarionew.Edit3.Text := '';
  Ffuncionarionew.Memo1.Text := '';
  Ffuncionarionew.RectMessage.Opacity := 0;
  Ffuncionarionew.Showmodal;
  if Ffuncionarionew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    mitramitedm.qListarItemsAcefalos.Close;
    mitramitedm.qListarItemsAcefalos.Open();
    mitramitedm.qListarCargos.Close;
    mitramitedm.qListarCargos.Open();
    mitramitedm.qListarFuncionarios.Close;
    mitramitedm.qListarFuncionarios.Open();
    Edit2.Text := Ffuncionarionew.Edit1.Text;
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFunidadedit.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  modificado := True;
end;

procedure TFunidadedit.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = VKEscape then Close;
end;

procedure TFunidadedit.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFunidadedit.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
