unit Urequisitoadd;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo, System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.DialogService,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, DB;

type
  TFrequisitoadd = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label2: TLabel;
    ToolBar2: TToolBar;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    Layout1: TLayout;
    Layout6: TLayout;
    RectMessage: TRectangle;
    Text1: TText;
    FadeTransitionEffect1: TFadeTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    SpeedButton12: TSpeedButton;
    Line1: TLine;
    Layout47: TLayout;
    Layout48: TLayout;
    Rectangle90: TRectangle;
    Edit2: TEdit;
    Label61: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    VertScrollBox12: TVertScrollBox;
    Grid12: TGrid;
    Layout49: TLayout;
    Rectangle93: TRectangle;
    SpeedButton87: TSpeedButton;
    Layout50: TLayout;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Rectangle94: TRectangle;
    SpeedButton88: TSpeedButton;
    CheckBox1: TCheckBox;
    ClearEditButton1: TClearEditButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure SpeedButton86Click(Sender: TObject);
    procedure SpeedButton85Click(Sender: TObject);
    procedure SpeedButton89Click(Sender: TObject);
    procedure SpeedButton88Click(Sender: TObject);
    procedure Edit2ChangeTracking(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    modificado: Boolean;
  end;

var
  Frequisitoadd: TFrequisitoadd;

implementation

{$R *.fmx}

uses Umitramitedm, Urequisitonew;

procedure TFrequisitoadd.Button1Click(Sender: TObject);
begin
  mitramitedm.qSeleccionarRequisitos.First;
  while not mitramitedm.qSeleccionarRequisitos.Eof do
  begin
    if mitramitedm.qSeleccionarRequisitos.FieldByName('seleccionar').AsBoolean then
    begin
      if not mitramitedm.requisitos_tramites.Active then mitramitedm.requisitos_tramites.Active := True;
      mitramitedm.requisitos_tramites.Insert;
      mitramitedm.requisitos_tramites.FieldByName('tramite_id').AsInteger := mitramitedm.qListarTramites.FieldByName('id').AsInteger;
      mitramitedm.requisitos_tramites.FieldByName('requisito_id').AsInteger := mitramitedm.qSeleccionarRequisitos.FieldByName('id').AsInteger;
      mitramitedm.requisitos_tramites.Post;
      if not modificado then modificado := True;
    end;
    mitramitedm.qSeleccionarRequisitos.Next;
  end;
  if modificado then ModalResult := mrOK
  else Close;
end;

procedure TFrequisitoadd.CheckBox1Change(Sender: TObject);
begin
  if mitramitedm.qSeleccionarRequisitos.RecordCount>0 then
  begin
    if CheckBox1.IsChecked then
    begin
      mitramitedm.qSeleccionarRequisitos.First;
      while not mitramitedm.qSeleccionarRequisitos.Eof do
      begin
        mitramitedm.qSeleccionarRequisitos.Edit;
        mitramitedm.qSeleccionarRequisitos.FieldByName('seleccionar').AsBoolean := True;
        mitramitedm.qSeleccionarRequisitos.Next;
      end;
    end
    else
    begin
      mitramitedm.qSeleccionarRequisitos.First;
      while not mitramitedm.qSeleccionarRequisitos.Eof do
      begin
        mitramitedm.qSeleccionarRequisitos.Edit;
        mitramitedm.qSeleccionarRequisitos.FieldByName('seleccionar').AsBoolean := False;
        mitramitedm.qSeleccionarRequisitos.Next;
      end;
    end;
    Grid12.ScrollToTop(False);
  end
  else
  begin
    Text1.Text := 'No existen datos para eliminar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFrequisitoadd.Edit2ChangeTracking(Sender: TObject);
begin
  mitramitedm.qSeleccionarRequisitos.Filter := 'requisito like ''%'+ Edit2.Text + '%''';
  mitramitedm.qSeleccionarRequisitos.Filtered := True;
end;

procedure TFrequisitoadd.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = VKESCAPE then Close;
end;

procedure TFrequisitoadd.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFrequisitoadd.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrequisitoadd.SpeedButton85Click(Sender: TObject);
begin
  Edit2.Text := '';
  SpeedButton86Click(Self);
end;

procedure TFrequisitoadd.SpeedButton86Click(Sender: TObject);
begin
  mitramitedm.qVerRequisitos.Close;
  mitramitedm.qVerRequisitos.ParamByName('req').AsString := Edit2.Text;
  mitramitedm.qVerRequisitos.Open();
  if mitramitedm.qVerRequisitos.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFrequisitoadd.SpeedButton88Click(Sender: TObject);
begin
  Frequisitonew.Memo1.Text := '';
  Frequisitonew.RectMessage.Opacity := 0;
  Frequisitonew.Showmodal;
  if Frequisitonew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    mitramitedm.qSeleccionarRequisitos.Close;
    mitramitedm.qSeleccionarRequisitos.Open();
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFrequisitoadd.SpeedButton89Click(Sender: TObject);
begin
  if mitramitedm.qVerRequisitos.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.requisitos_tramites.Active then mitramitedm.requisitos_tramites.Active := True;
        if mitramitedm.requisitos_tramites.Locate('id', mitramitedm.qVerRequisitos.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.requisitos_tramites.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton85Click(Self);
          modificado := True;
        end;
      end
      else
      begin
        Text1.Text := 'No se ha eliminado ningún registro.';
        RectMessage.Fill.Color := TAlphaColorRec.Red;
        RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
        RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
        Abort;
      end;
    end);
  end
  else
  begin
    Text1.Text := 'No existen datos para eliminar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

end.
