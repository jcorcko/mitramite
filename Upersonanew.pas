unit Upersonanew;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.ListBox,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Layouts;

type
  TFpersonanew = class(TForm)
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
    Edit2: TEdit;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Edit3: TEdit;
    Rectangle5: TRectangle;
    Label4: TLabel;
    Edit4: TEdit;
    Rectangle6: TRectangle;
    Label5: TLabel;
    Edit5: TEdit;
    Rectangle7: TRectangle;
    Label6: TLabel;
    Edit6: TEdit;
    Rectangle8: TRectangle;
    Label7: TLabel;
    Edit7: TEdit;
    Rectangle9: TRectangle;
    Label8: TLabel;
    Edit9: TEdit;
    Rectangle10: TRectangle;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Rectangle11: TRectangle;
    Label10: TLabel;
    Rectangle13: TRectangle;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Edit8: TEdit;
    Rectangle12: TRectangle;
    Label12: TLabel;
    Layout6: TLayout;
    RectMessage: TRectangle;
    Text1: TText;
    FadeTransitionEffect1: TFadeTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    SpeedButton12: TSpeedButton;
    Line1: TLine;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpersonanew: TFpersonanew;

implementation

{$R *.fmx}

uses Umitramitedm;

procedure TFpersonanew.Button1Click(Sender: TObject);
var errores: String;
begin
  errores := '';
  if Edit1.Text='' then errores := #149' El carnet es requerido.'#10;
  if (Edit2.Text='') and (Edit3.Text='') then errores := errores + #149' Uno de los apellidos es requerido.'#10;
  if Edit4.Text='' then errores := errores + #149' El nombre es requerido.'#10;
  if (Edit6.Text='') and (Edit7.Text='') then errores := errores + #149' El número de teléfono o celular es requerido.';
  Text1.Text := errores;
  if Text1.Text<>'' then
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear)
  else
  begin
    if not mitramitedm.personas.Active then mitramitedm.personas.Active := True;
    mitramitedm.personas.Insert;
    mitramitedm.personas.FieldByName('carnet').AsString := Edit1.Text;
    mitramitedm.personas.FieldByName('paterno').AsString := Edit2.Text;
    mitramitedm.personas.FieldByName('materno').AsString := Edit3.Text;
    mitramitedm.personas.FieldByName('nombre').AsString := Edit4.Text;
    if RadioButton1.IsChecked then mitramitedm.personas.FieldByName('sexo').AsString := 'M'
    else mitramitedm.personas.FieldByName('sexo').AsString := 'F';
    mitramitedm.personas.FieldByName('direccion').AsString := Edit5.Text;
    mitramitedm.personas.FieldByName('telefono').AsString := Edit6.Text;
    mitramitedm.personas.FieldByName('celular').AsString := Edit7.Text;
    mitramitedm.personas.FieldByName('email').AsString := Edit8.Text;
    mitramitedm.personas.FieldByName('ciudad').AsString := Edit9.Text;
    mitramitedm.personas.FieldByName('activo').AsInteger := 1;
    mitramitedm.personas.FieldByName('departamento_id').AsInteger := ComboBox1.ItemIndex + 1;
    mitramitedm.personas.Post;
    ModalResult := mrOK;
  end;
end;

procedure TFpersonanew.SpeedButton12Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFpersonanew.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
