unit Udocumentonew;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FireDAC.Stan.Error,
  System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.SearchBox, FMX.EditBox,
  FMX.ComboTrackBar, FMX.ScrollBox, FMX.Memo, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  Data.Bind.Grid, Data.Bind.Components, Data.Bind.DBScope, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFdocumentonew = class(TForm)
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
    Layout6: TLayout;
    RectMessage: TRectangle;
    Text1: TText;
    FadeTransitionEffect1: TFadeTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    SpeedButton12: TSpeedButton;
    Line1: TLine;
    VertScrollBox1: TVertScrollBox;
    Timer1: TTimer;
    Panel1: TPanel;
    Edit2: TEdit;
    EditButton1: TEditButton;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Label7: TLabel;
    Rectangle5: TRectangle;
    Label4: TLabel;
    Memo1: TMemo;
    Rectangle6: TRectangle;
    Label5: TLabel;
    ComboTrackBar1: TComboTrackBar;
    Grid12: TGrid;
    Rectangle7: TRectangle;
    Label6: TLabel;
    Rectangle8: TRectangle;
    Label8: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Grid1: TGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Edit3: TEdit;
    SearchEditButton1: TSearchEditButton;
    Q: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit3ChangeTracking(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure Edit2ChangeTracking(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdocumentonew: TFdocumentonew;

implementation

{$R *.fmx}

uses Umitramitedm, Upersonanew;

procedure TFdocumentonew.Button1Click(Sender: TObject);
var errores: String;
function generarHR: Integer;
var HR: Integer;
begin
  Q.Close;
  Q.Open('select max(documentos.hoja_ruta) as HR from documentos');
  if Q.RecordCount>0 then
     HR := Q.FieldByName('HR').AsInteger
  else HR := 0;
  generarHR := HR + 1;
end;
begin
  errores := '';
  if Label7.Text = '' then errores := #149' El carnet del interesado es requerido o debe estar registrado en el sistema.'#10;
  if Memo1.Text = '' then errores := errores + #149' Los datos de referencia es requerido.'#10;
  if mitramitedm.qListarTramites.RecordCount<1 then errores := errores + #149' El trámite es requerido.'#10;
  if mitramitedm.qVerificarRequisitos.RecordCount<1 then errores := errores + #149' Los requisitos son requeridos.'
  else
  begin
    mitramitedm.qVerificarRequisitos.First;
    while not mitramitedm.qVerificarRequisitos.Eof do
    begin
      if not mitramitedm.qVerificarRequisitos.FieldByName('cumple').AsBoolean then
      begin
        errores := errores + #149' La verificación de requisitos es requerida.';
        Break;
      end;
      mitramitedm.qVerificarRequisitos.Next;
    end;
  end;
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.documentos.Active then mitramitedm.documentos.Active := True;
    try
      mitramitedm.documentos.Insert;
      mitramitedm.documentos.FieldByName('referencia').AsString := Memo1.Text;
      mitramitedm.documentos.FieldByName('fecha_hora_recepcion').AsDateTime := now;
      mitramitedm.documentos.FieldByName('fojas').AsString := ComboTrackBar1.Text;
      mitramitedm.documentos.FieldByName('estado_id').AsInteger := 2;
      mitramitedm.documentos.FieldByName('tramite_id').AsInteger := mitramitedm.qVerificarRequisitos.FieldByName('tramite_id').AsInteger;
      mitramitedm.documentos.FieldByName('persona_id').AsInteger := mitramitedm.qListarPersonas.FieldByName('id').AsInteger;
      mitramitedm.documentos.FieldByName('funcionario_id').AsString := '';  //Se debe registrar funcionario con los datos de sesión iniciada
      mitramitedm.documentos.FieldByName('hoja_ruta').AsInteger := generarHR;
      mitramitedm.documentos.Post;
    except
      on E: EFDDBEngineException do begin
        if E.Kind = ekUKViolated then
        begin
          Text1.Text := 'Se intentó registrar datos repetidos, sólo presione "guardar e imprimir" nuevamente.';
          RectMessage.Opacity := 0;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
        end;
        mitramitedm.personas.Cancel;
        abort;
      end;
    end;
    ModalResult := mrOK;
  end;
end;

procedure TFdocumentonew.Edit2ChangeTracking(Sender: TObject);
begin
  if mitramitedm.qListarPersonas.Locate('carnet', Edit2.Text, [loPartialKey]) and (Edit2.Text<>'') then Label7.Text := mitramitedm.qListarPersonas.FieldByName('nombre_completo').AsString
  else Label7.Text := '';
end;

procedure TFdocumentonew.Edit2KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (Key in [VKUP, VKDOWN, VKLEFT, VKRIGHT, VKBACK, VKDELETE, VKTAB, VKRETURN, VKESCAPE])or(KeyChar in ['0'..'9']) then
  begin
    if Key in [VKTAB, VKRETURN] then
    begin
      if Label7.Text<>'' then
      begin
        Edit2.Text := mitramitedm.qListarPersonas.FieldByName('carnet').AsString;
        Edit2.SelectAll;
      end;
    end;
  end
  else Abort;
end;

procedure TFdocumentonew.Edit3ChangeTracking(Sender: TObject);
begin
  mitramitedm.qListarTramites.Filter := 'tramite like ''%'+ Edit3.Text + '%''';
end;

procedure TFdocumentonew.EditButton1Click(Sender: TObject);
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
    Edit2.Text := Fpersonanew.Edit1.Text;
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFdocumentonew.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = VKESCAPE then Close;
end;

procedure TFdocumentonew.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFdocumentonew.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFdocumentonew.Timer1Timer(Sender: TObject);
begin
  Edit1.Text := DateTimeToStr(now);
end;

end.
