unit Uoficinaedit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo, DB, FireDAC.Stan.Error;

type
  TFoficinaedit = class(TForm)
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
    Panel2: TPanel;
    Edit3: TEdit;
    EditButton2: TEditButton;
    Rectangle6: TRectangle;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit2ChangeTracking(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EditButton1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit3ChangeTracking(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    modificado: Boolean;
  end;

var
  Foficinaedit: TFoficinaedit;

implementation

{$R *.fmx}

uses Umitramitedm, Ufuncionarionew, Uunidadnew;

procedure TFoficinaedit.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if (Edit1.Text='') then errores := errores + #149' El código de oficina es requerido.'#10;
  if (Memo1.Text='') then errores := errores + #149' El nombre de oficina es requerido.'#10;
  if (Label7.Text='') then errores := errores + #149' El código de unidad es requerido.';
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.oficinas.Active then mitramitedm.oficinas.Active := True;
    if mitramitedm.oficinas.Locate('id', mitramitedm.qListarOficinas.FieldByName('id').AsInteger, []) and modificado then
    begin
      try
        mitramitedm.oficinas.Edit;
        mitramitedm.oficinas.FieldByName('codigo').AsString := Edit1.Text;
        mitramitedm.oficinas.FieldByName('oficina').AsString := Memo1.Text;
        mitramitedm.oficinas.FieldByName('unidad_id').AsInteger := mitramitedm.qListarUnidades.FieldByName('id').AsInteger;
        if (Label6.Text<>'') then
          mitramitedm.oficinas.FieldByName('funcionario_id').AsInteger := mitramitedm.qListarFuncionarios.FieldByName('id').AsInteger
        else mitramitedm.oficinas.FieldByName('funcionario_id').AsString := '';
        mitramitedm.oficinas.Post;
      except
        on E: EFDDBEngineException do begin
          if E.Kind = ekUKViolated then
          begin
            Text1.Text := 'El código de oficina o carnet de funcionario ya fue introducido en un registro anterior.';
            RectMessage.Opacity := 0;
            RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
          end;
          mitramitedm.oficinas.Cancel;
          abort;
        end;
      end;
      ModalResult := mrOK;
    end else Close;
  end;
end;

procedure TFoficinaedit.Edit1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB])or(KeyChar in ['0'..'9']) then else Abort;
end;

procedure TFoficinaedit.Edit2ChangeTracking(Sender: TObject);
begin
  if mitramitedm.qListarUnidades.Locate('codigo', Edit2.Text, [loPartialKey]) and (Edit2.Text<>'') then Label7.Text := mitramitedm.qListarUnidades.FieldByName('unidad').AsString
  else Label7.Text := '';
end;

procedure TFoficinaedit.Edit2KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB, VKRETURN, VKESCAPE])or(KeyChar in ['0'..'9']) then
  begin
    if Key in [VKTAB, VKRETURN] then
    begin
      if Label7.Text<>'' then
      begin
        Edit2.Text := mitramitedm.qListarUnidades.FieldByName('codigo').AsString;
        Edit2.SelectAll;
      end;
      if Label6.Text<>'' then
      begin
        Edit3.Text := mitramitedm.qListarFuncionarios.FieldByName('carnet').AsString;
        Edit3.SelectAll;
      end;
    end;
  end
  else Abort;
end;

procedure TFoficinaedit.Edit3ChangeTracking(Sender: TObject);
begin
  if mitramitedm.qListarFuncionarios.Locate('carnet', Edit3.Text, [loPartialKey]) and (Edit3.Text<>'') then Label6.Text := mitramitedm.qListarFuncionarios.FieldByName('nombre_funcionario').AsString
  else Label6.Text := '';
end;

procedure TFoficinaedit.EditButton1Click(Sender: TObject);
begin
  Funidadnew.Edit1.Text := '';
  Funidadnew.Edit2.Text := '';
  Funidadnew.Memo1.Text := '';
  Funidadnew.RectMessage.Opacity := 0;
  Funidadnew.Showmodal;
  if Funidadnew.ModalResult=mrOK then
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
    Edit2.Text := Funidadnew.Edit1.Text;
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFoficinaedit.EditButton2Click(Sender: TObject);
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

procedure TFoficinaedit.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  modificado := True;
end;

procedure TFoficinaedit.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = VKEscape then Close;
end;

procedure TFoficinaedit.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFoficinaedit.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
