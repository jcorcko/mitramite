unit Ufuncionarioedit;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo, DB, DateUtils;

type
  TFfuncionarioedit = class(TForm)
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
    Rectangle6: TRectangle;
    Label5: TLabel;
    Edit3: TEdit;
    Rectangle7: TRectangle;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    Panel2: TPanel;
    EditButton1: TEditButton;
    EditButton2: TEditButton;
    EditButton3: TEditButton;
    Label9: TLabel;
    Panel3: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit1ChangeTracking(Sender: TObject);
    procedure Edit2ChangeTracking(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure Edit3ChangeTracking(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    modificado: Boolean;
  end;

var
  Ffuncionarioedit: TFfuncionarioedit;

implementation

{$R *.fmx}

uses Umitramitedm, Upersonanew, Ucargonew, Uitemnew;

procedure TFfuncionarioedit.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if Edit1.Text='' then errores := #149' El carnet es requerido.'#10;
  if (Edit2.Text='') then errores := errores + #149' El código de cargo es requerido.'#10;
  if (Edit3.Text='') then errores := errores + #149' El número de item es requerido.'#10;
  if (Memo1.Text='') then errores := errores + #149' La observación es requerida.'#10;
  if (DateEdit1.Date>DateOf(now)) then errores := errores + #149' La fecha es incorrecta.';
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.funcionarios.Active then mitramitedm.funcionarios.Active := True;
    if mitramitedm.funcionarios.Locate('id', mitramitedm.qListarFuncionarios.FieldByName('id').AsInteger, []) and modificado then
    begin
      mitramitedm.funcionarios.Edit;
      mitramitedm.funcionarios.FieldByName('persona_id').AsInteger := mitramitedm.qListarPersonas.FieldByName('id').AsInteger;
      mitramitedm.funcionarios.FieldByName('cargo_id').AsInteger := mitramitedm.qListarCargos.FieldByName('id').AsInteger;
      mitramitedm.funcionarios.FieldByName('item_id').AsInteger := mitramitedm.qListarItemsAcefalos.FieldByName('id').AsInteger;
      mitramitedm.funcionarios.FieldByName('fechadesignacion').AsDateTime := DateEdit1.Date;
      mitramitedm.funcionarios.FieldByName('observaciones').AsString := Memo1.Text;
      mitramitedm.funcionarios.FieldByName('baja').AsBoolean := False;
      mitramitedm.funcionarios.Post;
      if not mitramitedm.items.Active then mitramitedm.items.Active := True;
      if mitramitedm.items.Locate('id', mitramitedm.qListarItemsAcefalos.FieldByName('id').AsInteger, []) then
      begin
        mitramitedm.items.Edit;
        mitramitedm.items.FieldByName('acefalo').AsBoolean := False;
        mitramitedm.items.Post;
      end;
      ModalResult := mrOK;
    end else close;
  end;
end;

procedure TFfuncionarioedit.Edit1ChangeTracking(Sender: TObject);
begin
  if mitramitedm.qListarPersonas.Locate('carnet', Edit1.Text, [loPartialKey]) and (Edit1.Text<>'') then Label7.Text := mitramitedm.qListarPersonas.FieldByName('nombre_completo').AsString
  else Label7.Text := '';
end;

procedure TFfuncionarioedit.Edit1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB, VKRETURN])or(KeyChar in ['0'..'9']) then
  begin
    if Key in [VKTAB, VKRETURN] then
    begin
      if Label7.Text<>'' then
      begin
        Edit1.Text := mitramitedm.qListarPersonas.FieldByName('carnet').AsString;
        Edit1.SelectAll;
      end;
      if Label8.Text<>'' then
      begin
        Edit2.Text := mitramitedm.qListarCargos.FieldByName('codigo').AsString;
        Edit2.SelectAll;
      end;
      if Label9.Text<>'' then
      begin
        Edit3.Text := mitramitedm.qListarItems.FieldByName('numero').AsString;
        Edit3.SelectAll;
      end;
    end;
  end
  else Abort;
end;

procedure TFfuncionarioedit.Edit2ChangeTracking(Sender: TObject);
begin
  if mitramitedm.qListarCargos.Locate('codigo', Edit2.Text, [loPartialKey]) and (Edit2.Text<>'') then Label8.Text := mitramitedm.qListarCargos.FieldByName('cargo').AsString
  else Label8.Text := '';
end;

procedure TFfuncionarioedit.Edit3ChangeTracking(Sender: TObject);
begin
  if mitramitedm.qListarItemsAcefalos.Locate('numero', Edit3.Text, [loPartialKey]) and (Edit3.Text<>'') then Label9.Text := mitramitedm.qListarItemsAcefalos.FieldByName('descripcion').AsString
  else Label9.Text := '';
end;

procedure TFfuncionarioedit.EditButton1Click(Sender: TObject);
begin
  Fpersonanew.Edit1.Text := '';
  Fpersonanew.Edit2.Text := '';
  Fpersonanew.Edit3.Text := '';
  Fpersonanew.Edit4.Text := '';
  Fpersonanew.Edit5.Text := '';
  Fpersonanew.Edit6.Text := '';
  Fpersonanew.Edit7.Text := '';
  Fpersonanew.Edit8.Text := '';
  Fpersonanew.Edit9.Text := '';
  Fpersonanew.ComboBox1.ItemIndex := 0;
  Fpersonanew.RectMessage.Opacity := 0;
  Fpersonanew.Showmodal;
  if Fpersonanew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    mitramitedm.qListarPersonas.Close;
    mitramitedm.qListarPersonas.ParamByName('CI').AsString := '';
    mitramitedm.qListarPersonas.ParamByName('app').AsString := '';
    mitramitedm.qListarPersonas.ParamByName('apm').AsString := '';
    mitramitedm.qListarPersonas.ParamByName('nom').AsString := '';
    mitramitedm.qListarPersonas.Open();
    Edit1.Text := Fpersonanew.Edit1.Text;
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFfuncionarioedit.EditButton2Click(Sender: TObject);
begin
  Fcargonew.Edit1.Text := '';
  Fcargonew.Memo1.Text := '';
  Fcargonew.Edit2.Text := '';
  Fcargonew.RectMessage.Opacity := 0;
  Fcargonew.Showmodal;
  if Fcargonew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    mitramitedm.qListarCargos.Close;
    mitramitedm.qListarCargos.ParamByName('codcargo').AsString := '';
    mitramitedm.qListarCargos.ParamByName('descrip').AsString := '';
    mitramitedm.qListarCargos.Open();
    Edit2.Text := Fcargonew.Edit1.Text;
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFfuncionarioedit.EditButton3Click(Sender: TObject);
begin
  Fitemnew.Edit1.Text := '';
  Fitemnew.Memo1.Text := '';
  Fitemnew.DateEdit1.Date := now;
  Fitemnew.RectMessage.Opacity := 0;
  Fitemnew.Showmodal;
  if Fitemnew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    mitramitedm.qListarItemsAcefalos.Close;
    mitramitedm.qListarItemsAcefalos.Open();
    Edit3.Text := Fitemnew.Edit1.Text;
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFfuncionarioedit.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  modificado := True;
end;

procedure TFfuncionarioedit.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFfuncionarioedit.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
