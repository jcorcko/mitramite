unit Urequisitoview;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo, System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.DialogService,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TFrequisitoview = class(TForm)
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
    Layout47: TLayout;
    Layout48: TLayout;
    Rectangle90: TRectangle;
    Edit2: TEdit;
    Label61: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Rectangle91: TRectangle;
    SpeedButton85: TSpeedButton;
    SpeedButton86: TSpeedButton;
    VertScrollBox12: TVertScrollBox;
    Grid12: TGrid;
    Layout49: TLayout;
    Rectangle93: TRectangle;
    SpeedButton87: TSpeedButton;
    Layout50: TLayout;
    Rectangle94: TRectangle;
    Rectangle95: TRectangle;
    SpeedButton88: TSpeedButton;
    SpeedButton89: TSpeedButton;
    Layout2: TLayout;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure SpeedButton86Click(Sender: TObject);
    procedure SpeedButton85Click(Sender: TObject);
    procedure SpeedButton89Click(Sender: TObject);
    procedure SpeedButton88Click(Sender: TObject);
  private
    { Private declarations }
  public
    modificado: Boolean;
  end;

var
  Frequisitoview: TFrequisitoview;

implementation

{$R *.fmx}

uses Umitramitedm, Urequisitoadd;

procedure TFrequisitoview.Button1Click(Sender: TObject);
begin
  if modificado then ModalResult := mrOK
  else Close;
end;

procedure TFrequisitoview.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = VKESCAPE then Close;
end;

procedure TFrequisitoview.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFrequisitoview.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrequisitoview.SpeedButton85Click(Sender: TObject);
begin
  Edit2.Text := '';
  SpeedButton86Click(Self);
end;

procedure TFrequisitoview.SpeedButton86Click(Sender: TObject);
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

procedure TFrequisitoview.SpeedButton88Click(Sender: TObject);
begin
  if mitramitedm.qSeleccionarRequisitos.ParamByName('tram_id').AsInteger <> mitramitedm.qListarTramites.FieldByName('id').AsInteger then
  begin
    mitramitedm.qSeleccionarRequisitos.Close;
    mitramitedm.qSeleccionarRequisitos.ParamByName('tram_id').AsString := mitramitedm.qListarTramites.FieldByName('id').AsString;
    mitramitedm.qSeleccionarRequisitos.Open();
  end;
  Frequisitoadd.modificado := False;
  Frequisitoadd.ShowModal;
  if Frequisitoadd.ModalResult = mrOK then
  begin
    Text1.Text := 'Los requisitos para el trámite fueron agregados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton85Click(Self);
    modificado := True;
  end
  else
  begin
    Text1.Text := 'No se han agregado más requisitos para el trámite.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFrequisitoview.SpeedButton89Click(Sender: TObject);
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
