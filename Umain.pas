unit Umain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.DateUtils, FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid,
  Data.Bind.DBScope, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.DialogService,
  FMX.ListBox, FMX.Edit, Data.Bind.Controls, Fmx.Bind.Navigator, Data.DB, Winapi.ShellAPI, Winapi.Windows,
  FMX.ComboEdit, FMX.DateTimeCtrls, FMX.TabControl, FMX.Ani, FMX.Effects,
  FMX.Filter.Effects, FMX.MultiView, System.ImageList, FMX.ImgList,
  FMX.Styles.Objects;

type
  TFmain = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    TabControl1: TTabControl;
    Rectangle9: TRectangle;
    SpeedButton13: TSpeedButton;
    RectMessage: TRectangle;
    SpeedButton12: TSpeedButton;
    Layout6: TLayout;
    Text1: TText;
    VertScrollBox3: TVertScrollBox;
    Grid3: TGrid;
    Layout7: TLayout;
    Rectangle14: TRectangle;
    SpeedButton17: TSpeedButton;
    Layout8: TLayout;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Layout11: TLayout;
    Rectangle22: TRectangle;
    SpeedButton26: TSpeedButton;
    SpeedButton25: TSpeedButton;
    Edit2: TEdit;
    Label11: TLabel;
    Edit1: TEdit;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Rectangle13: TRectangle;
    Rectangle23: TRectangle;
    Label18: TLabel;
    Layout2: TLayout;
    TabTipoTramites: TTabItem;
    TabFlujoTramites: TTabItem;
    TabOficinas: TTabItem;
    TabUnidades: TTabItem;
    TabPersonas: TTabItem;
    TabEstados: TTabItem;
    TabFuncionarios: TTabItem;
    TabCargos: TTabItem;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle3: TRectangle;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Rectangle4: TRectangle;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    Rectangle5: TRectangle;
    Label6: TLabel;
    VertScrollBox1: TVertScrollBox;
    Grid1: TGrid;
    Layout5: TLayout;
    Rectangle6: TRectangle;
    SpeedButton20: TSpeedButton;
    Layout9: TLayout;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    Layout10: TLayout;
    Layout12: TLayout;
    Rectangle11: TRectangle;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Rectangle12: TRectangle;
    SpeedButton24: TSpeedButton;
    SpeedButton27: TSpeedButton;
    Rectangle18: TRectangle;
    Label15: TLabel;
    VertScrollBox2: TVertScrollBox;
    Grid2: TGrid;
    Layout13: TLayout;
    Rectangle19: TRectangle;
    SpeedButton28: TSpeedButton;
    Layout14: TLayout;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    Layout15: TLayout;
    Layout16: TLayout;
    Rectangle25: TRectangle;
    Edit7: TEdit;
    Edit8: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Rectangle26: TRectangle;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    Rectangle27: TRectangle;
    Label21: TLabel;
    VertScrollBox4: TVertScrollBox;
    Grid4: TGrid;
    Layout17: TLayout;
    Rectangle28: TRectangle;
    SpeedButton34: TSpeedButton;
    Layout18: TLayout;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    Layout19: TLayout;
    Layout20: TLayout;
    Rectangle32: TRectangle;
    Edit9: TEdit;
    Edit10: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Rectangle33: TRectangle;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    Rectangle34: TRectangle;
    Label26: TLabel;
    VertScrollBox5: TVertScrollBox;
    Grid5: TGrid;
    Layout21: TLayout;
    Rectangle35: TRectangle;
    SpeedButton40: TSpeedButton;
    Layout22: TLayout;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    Layout23: TLayout;
    Layout24: TLayout;
    Rectangle39: TRectangle;
    Edit11: TEdit;
    Edit12: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Rectangle40: TRectangle;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    Rectangle41: TRectangle;
    Label31: TLabel;
    VertScrollBox6: TVertScrollBox;
    Grid6: TGrid;
    Layout25: TLayout;
    Rectangle42: TRectangle;
    SpeedButton46: TSpeedButton;
    Layout26: TLayout;
    Rectangle43: TRectangle;
    SpeedButton47: TSpeedButton;
    Rectangle44: TRectangle;
    SpeedButton48: TSpeedButton;
    Rectangle45: TRectangle;
    SpeedButton49: TSpeedButton;
    Layout27: TLayout;
    Layout28: TLayout;
    Rectangle46: TRectangle;
    Edit13: TEdit;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Rectangle47: TRectangle;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    Rectangle48: TRectangle;
    Label36: TLabel;
    VertScrollBox7: TVertScrollBox;
    Grid7: TGrid;
    Layout29: TLayout;
    Rectangle49: TRectangle;
    SpeedButton52: TSpeedButton;
    Layout30: TLayout;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    Layout31: TLayout;
    Layout32: TLayout;
    Rectangle53: TRectangle;
    Label37: TLabel;
    Label39: TLabel;
    Rectangle54: TRectangle;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    Rectangle55: TRectangle;
    Label41: TLabel;
    VertScrollBox8: TVertScrollBox;
    Grid8: TGrid;
    Layout33: TLayout;
    Rectangle56: TRectangle;
    SpeedButton58: TSpeedButton;
    Layout34: TLayout;
    SpeedButton59: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    Layout35: TLayout;
    Layout36: TLayout;
    Rectangle60: TRectangle;
    Label42: TLabel;
    Label44: TLabel;
    Rectangle61: TRectangle;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    Rectangle62: TRectangle;
    Label46: TLabel;
    VertScrollBox9: TVertScrollBox;
    Grid9: TGrid;
    Layout37: TLayout;
    Rectangle63: TRectangle;
    SpeedButton64: TSpeedButton;
    Layout38: TLayout;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    TabItems: TTabItem;
    Layout39: TLayout;
    Layout40: TLayout;
    Rectangle67: TRectangle;
    Edit19: TEdit;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Rectangle68: TRectangle;
    SpeedButton68: TSpeedButton;
    SpeedButton69: TSpeedButton;
    Rectangle69: TRectangle;
    Label51: TLabel;
    VertScrollBox10: TVertScrollBox;
    Grid10: TGrid;
    Layout41: TLayout;
    Rectangle70: TRectangle;
    SpeedButton70: TSpeedButton;
    Layout42: TLayout;
    SpeedButton71: TSpeedButton;
    SpeedButton72: TSpeedButton;
    SpeedButton73: TSpeedButton;
    Edit22: TEdit;
    Label53: TLabel;
    Label52: TLabel;
    Edit21: TEdit;
    Label33: TLabel;
    Edit14: TEdit;
    Label38: TLabel;
    Edit15: TEdit;
    Label40: TLabel;
    Edit16: TEdit;
    Label54: TLabel;
    Edit23: TEdit;
    Label43: TLabel;
    Edit17: TEdit;
    Label45: TLabel;
    Edit18: TEdit;
    MultiView1: TMultiView;
    Rectangle74: TRectangle;
    Rectangle75: TRectangle;
    Rectangle76: TRectangle;
    ToolBar2: TToolBar;
    SpeedButton75: TSpeedButton;
    Edit20: TEdit;
    PasswordEditButton1: TPasswordEditButton;
    Edit24: TEdit;
    ClearEditButton1: TClearEditButton;
    SpeedButton76: TSpeedButton;
    SpeedButton77: TSpeedButton;
    Rectangle77: TRectangle;
    Rectangle78: TRectangle;
    Rectangle79: TRectangle;
    FadeTransitionEffect1: TFadeTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    TabUsuarios: TTabItem;
    Layout43: TLayout;
    Layout44: TLayout;
    Rectangle80: TRectangle;
    Label48: TLabel;
    Label55: TLabel;
    Rectangle81: TRectangle;
    Rectangle82: TRectangle;
    Label57: TLabel;
    VertScrollBox11: TVertScrollBox;
    Grid11: TGrid;
    Layout45: TLayout;
    Rectangle83: TRectangle;
    SpeedButton80: TSpeedButton;
    Layout46: TLayout;
    SpeedButton81: TSpeedButton;
    SpeedButton82: TSpeedButton;
    SpeedButton83: TSpeedButton;
    Label56: TLabel;
    Edit25: TEdit;
    Label58: TLabel;
    Edit26: TEdit;
    Label59: TLabel;
    Edit27: TEdit;
    Label60: TLabel;
    Edit28: TEdit;
    SpeedButton78: TSpeedButton;
    SpeedButton79: TSpeedButton;
    Rectangle88: TRectangle;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle10: TRectangle;
    Rectangle20: TRectangle;
    Rectangle21: TRectangle;
    Rectangle24: TRectangle;
    Rectangle29: TRectangle;
    Rectangle30: TRectangle;
    Rectangle31: TRectangle;
    Rectangle36: TRectangle;
    Rectangle37: TRectangle;
    Rectangle38: TRectangle;
    Rectangle50: TRectangle;
    Rectangle51: TRectangle;
    Rectangle52: TRectangle;
    Rectangle57: TRectangle;
    Rectangle58: TRectangle;
    Rectangle59: TRectangle;
    Rectangle64: TRectangle;
    Rectangle65: TRectangle;
    Rectangle66: TRectangle;
    Rectangle71: TRectangle;
    Rectangle72: TRectangle;
    Rectangle73: TRectangle;
    Rectangle84: TRectangle;
    Rectangle85: TRectangle;
    Rectangle86: TRectangle;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Overlay: TRectangle;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    BindSourceDB6: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB6: TLinkGridToDataSource;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    BindSourceDB8: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB8: TLinkGridToDataSource;
    TabRequisitos: TTabItem;
    Layout47: TLayout;
    Layout48: TLayout;
    Rectangle90: TRectangle;
    Edit29: TEdit;
    Label61: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Rectangle91: TRectangle;
    SpeedButton85: TSpeedButton;
    SpeedButton86: TSpeedButton;
    Rectangle92: TRectangle;
    Label65: TLabel;
    VertScrollBox12: TVertScrollBox;
    Grid12: TGrid;
    Layout49: TLayout;
    Rectangle93: TRectangle;
    SpeedButton87: TSpeedButton;
    Layout50: TLayout;
    Rectangle94: TRectangle;
    Rectangle95: TRectangle;
    Rectangle96: TRectangle;
    SpeedButton88: TSpeedButton;
    SpeedButton89: TSpeedButton;
    SpeedButton90: TSpeedButton;
    HorzScrollBox1: THorzScrollBox;
    ToolBar1: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton74: TSpeedButton;
    Rectangle89: TRectangle;
    Rectangle87: TRectangle;
    SpeedButton84: TSpeedButton;
    BindSourceDB9: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB9: TLinkGridToDataSource;
    Rectangle97: TRectangle;
    SpeedButton91: TSpeedButton;
    BindSourceDB10: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB10: TLinkGridToDataSource;
    function Ejecutar(Programa:String;Esperar:Boolean=True):Boolean;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton74Click(Sender: TObject);
    procedure SpeedButton75Click(Sender: TObject);
    procedure SpeedButton3MouseEnter(Sender: TObject);
    procedure SpeedButton3MouseLeave(Sender: TObject);
    procedure SpeedButton2MouseEnter(Sender: TObject);
    procedure SpeedButton4MouseEnter(Sender: TObject);
    procedure SpeedButton5MouseEnter(Sender: TObject);
    procedure SpeedButton6MouseEnter(Sender: TObject);
    procedure SpeedButton7MouseEnter(Sender: TObject);
    procedure SpeedButton8MouseEnter(Sender: TObject);
    procedure SpeedButton9MouseEnter(Sender: TObject);
    procedure SpeedButton10MouseEnter(Sender: TObject);
    procedure SpeedButton11MouseEnter(Sender: TObject);
    procedure SpeedButton74MouseEnter(Sender: TObject);
    procedure SpeedButton47Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton48Click(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure SpeedButton71Click(Sender: TObject);
    procedure SpeedButton72Click(Sender: TObject);
    procedure SpeedButton73Click(Sender: TObject);
    procedure SpeedButton68Click(Sender: TObject);
    procedure SpeedButton69Click(Sender: TObject);
    procedure SpeedButton65Click(Sender: TObject);
    procedure SpeedButton66Click(Sender: TObject);
    procedure SpeedButton62Click(Sender: TObject);
    procedure SpeedButton63Click(Sender: TObject);
    procedure SpeedButton67Click(Sender: TObject);
    procedure SpeedButton57Click(Sender: TObject);
    procedure SpeedButton56Click(Sender: TObject);
    procedure SpeedButton59Click(Sender: TObject);
    procedure SpeedButton60Click(Sender: TObject);
    procedure SpeedButton61Click(Sender: TObject);
    procedure OverlayClick(Sender: TObject);
    procedure SpeedButton53Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure SpeedButton54Click(Sender: TObject);
    procedure SpeedButton55Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton42Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton84Click(Sender: TObject);
    procedure SpeedButton84MouseEnter(Sender: TObject);
    procedure SpeedButton84MouseLeave(Sender: TObject);
    procedure SpeedButton88Click(Sender: TObject);
    procedure SpeedButton86Click(Sender: TObject);
    procedure SpeedButton85Click(Sender: TObject);
    procedure SpeedButton89Click(Sender: TObject);
    procedure SpeedButton90Click(Sender: TObject);
    procedure SpeedButton91Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
  private
    { Private declarations }
  public
    DIR: String;
  end;

var
  Fmain: TFmain;

implementation

{$R *.fmx}

uses Upersonanew, Umitramitedm, Upersonaedit, Uitemnew, Uitemedit, Ucargonew,
  Ucargoedit, Ufuncionarionew, Ufuncionarioedit, Uestadonew, Uestadoedit,
  Uunidadnew, Uunidadedit, Uoficinanew, Uoficinaedit, Utramitenew, Utramiteedit,
  Urequisitonew, Urequisitoedit, Uprueba, Urequisitoview;

function TFmain.Ejecutar(Programa:String;Esperar:Boolean=True):Boolean;
var ProcInfo:TProcessInformation;
    Info:TStartupInfo;
begin
  FillChar(Info,SizeOF(Info),0);
  Info.cb:=SizeOf(Info);
  Info.dwFlags:=STARTF_USESHOWWINDOW;
  Info.wShowWindow:=SW_SHOWNORMAL;
  Result:=CreateProcess(nil,PChar(Programa),nil,nil,False,0,nil,nil,Info,ProcInfo);
  if Esperar then
    while WaitForSingleObject(ProcInfo.hProcess,100)=Wait_TimeOut do
    begin
      Application.ProcessMessages;
      if Application.Terminated then Break;
    end;
end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TDialogService.MessageDialog('Está a punto de salir de la aplicación. Salir ahora?', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
  procedure(const AResult: TModalResult)
  begin
     if AResult = mrYES then
       Application.Terminate
     else
       Abort;
  end);
end;

procedure TFmain.FormCreate(Sender: TObject);
begin
  DIR := System.SysUtils.GetCurrentDir;
  mitramitedm.FDConnection1.Connected := True;
  mitramitedm.qListarPersonas.Close;
  mitramitedm.qListarPersonas.Open();
  mitramitedm.qListarItems.Close;
  mitramitedm.qListarItems.Open();
  mitramitedm.qListarItemsAcefalos.Close;
  mitramitedm.qListarItemsAcefalos.Open();
  mitramitedm.qListarCargos.Close;
  mitramitedm.qListarCargos.Open();
  mitramitedm.qListarFuncionarios.Close;
  mitramitedm.qListarFuncionarios.Open();
  mitramitedm.qListarEstados.Close;
  mitramitedm.qListarEstados.Open();
  mitramitedm.qListarUnidades.Close;
  mitramitedm.qListarUnidades.Open();
  mitramitedm.qListarOficinas.Close;
  mitramitedm.qListarOficinas.Open();
  mitramitedm.qListarTramites.Close;
  mitramitedm.qListarTramites.Open();
  mitramitedm.qListarRequisitos.Close;
  mitramitedm.qListarRequisitos.Open();
  mitramitedm.qVerRequisitos.Close;
  mitramitedm.qVerRequisitos.Open();
end;

procedure TFmain.OverlayClick(Sender: TObject);
begin
  Overlay.Visible := False;
end;

procedure TFmain.SpeedButton32Click(Sender: TObject);
begin
  Edit7.Text := '';
  Edit8.Text := '';
  SpeedButton33Click(Self);
end;

procedure TFmain.SpeedButton33Click(Sender: TObject);
begin
  mitramitedm.qListarOficinas.Close;
  mitramitedm.qListarOficinas.ParamByName('cod').AsString := Edit7.Text;
  mitramitedm.qListarOficinas.ParamByName('ofic').AsString := Edit8.Text;
  mitramitedm.qListarOficinas.Open();
  if mitramitedm.qListarOficinas.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton35Click(Sender: TObject);
begin
  Overlay.Visible := True;
  Foficinanew.Edit1.Text := '';
  Foficinanew.Edit2.Text := '';
  Foficinanew.Edit3.Text := '';
  Foficinanew.Memo1.Text := '';
  Foficinanew.RectMessage.Opacity := 0;
  Foficinanew.Showmodal;
  Overlay.Visible := False;
  if Foficinanew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton32Click(Self);
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton36Click(Sender: TObject);
begin
  if mitramitedm.qListarOficinas.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.oficinas.Active then mitramitedm.oficinas.Active := True;
        if mitramitedm.oficinas.Locate('id', mitramitedm.qListarOficinas.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.oficinas.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton32Click(Self);
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

procedure TFmain.SpeedButton37Click(Sender: TObject);
begin
  if mitramitedm.qListarOficinas.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Foficinaedit.Edit1.Text := mitramitedm.qListarOficinas.FieldByName('codigo').AsString;
    Foficinaedit.Memo1.Text := mitramitedm.qListarOficinas.FieldByName('oficina').AsString;
    Foficinaedit.Edit2.Text := mitramitedm.qListarOficinas.FieldByName('unidad_codigo').AsString;
    Foficinaedit.Edit3.Text := mitramitedm.qListarOficinas.FieldByName('carnet').AsString;
    Foficinaedit.modificado := False;
    Foficinaedit.RectMessage.Opacity := 0;
    Foficinaedit.Showmodal;
    Overlay.Visible := False;
    if Foficinaedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton32Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton38Click(Sender: TObject);
begin
  Edit9.Text := '';
  Edit10.Text := '';
  SpeedButton39Click(Self);
end;

procedure TFmain.SpeedButton39Click(Sender: TObject);
begin
  mitramitedm.qListarUnidades.Close;
  mitramitedm.qListarUnidades.ParamByName('cod').AsString := Edit9.Text;
  mitramitedm.qListarUnidades.ParamByName('unid').AsString := Edit10.Text;
  mitramitedm.qListarUnidades.Open();
  if mitramitedm.qListarUnidades.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton3Click(Sender: TObject);
begin
  TabControl1.TabIndex := 2;
  if SpeedButton3.IsPressed then Rectangle87.Position.X := SpeedButton3.Position.X;
end;

procedure TFmain.SpeedButton3MouseEnter(Sender: TObject);
begin
  if not SpeedButton3.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton3.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton3MouseLeave(Sender: TObject);
begin
  Rectangle89.Visible := False;
end;

procedure TFmain.SpeedButton10Click(Sender: TObject);
begin
  TabControl1.TabIndex := 9;
  if SpeedButton10.IsPressed then Rectangle87.Position.X := SpeedButton10.Position.X;
end;

procedure TFmain.SpeedButton10MouseEnter(Sender: TObject);
begin
  if not SpeedButton10.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton10.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton11Click(Sender: TObject);
begin
  TabControl1.TabIndex := 10;
  if SpeedButton11.IsPressed then Rectangle87.Position.X := SpeedButton11.Position.X;
end;

procedure TFmain.SpeedButton11MouseEnter(Sender: TObject);
begin
  if not SpeedButton11.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton11.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton12Click(Sender: TObject);
begin
    TDialogService.MessageDialog('No existen registros de títulos del carnet ingresado', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], TMsgDlgBtn.mbOK, 0, nil);
end;

procedure TFmain.SpeedButton14Click(Sender: TObject);
begin
  Fpruebas.ShowModal;
  Text1.Text := 'Mensaje de éxito.';
  RectMessage.Fill.Color := $FF00CE68;
  RectMessage.AnimateFloat('Opacity', 1.0, 1, TAnimationType.In, TInterpolationType.Linear);
  RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
  RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
end;

procedure TFmain.SpeedButton15Click(Sender: TObject);
begin
  Text1.Text := 'Mensaje de error.';
  RectMessage.Fill.Color := TAlphaColorRec.Red;
  RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
end;

procedure TFmain.SpeedButton18Click(Sender: TObject);
begin
  Edit3.Text := '';
  Edit4.Text := '';
  SpeedButton19Click(Self);
end;

procedure TFmain.SpeedButton19Click(Sender: TObject);
begin
  mitramitedm.qListarTramites.Close;
  mitramitedm.qListarTramites.ParamByName('cod').AsString := Edit3.Text;
  mitramitedm.qListarTramites.ParamByName('tram').AsString := Edit4.Text;
  mitramitedm.qListarTramites.Open();
  if mitramitedm.qListarTramites.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFmain.SpeedButton21Click(Sender: TObject);
begin
  Overlay.Visible := True;
  Ftramitenew.Edit1.Text := '';
  Ftramitenew.Edit2.Text := '';
  Ftramitenew.Memo1.Text := '';
  Ftramitenew.RectMessage.Opacity := 0;
  Ftramitenew.Showmodal;
  Overlay.Visible := False;
  if Ftramitenew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton18Click(Self);
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton22Click(Sender: TObject);
begin
  if mitramitedm.qListarTramites.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.tramites.Active then mitramitedm.tramites.Active := True;
        if mitramitedm.tramites.Locate('id', mitramitedm.qListarTramites.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.tramites.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton38Click(Self);
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

procedure TFmain.SpeedButton23Click(Sender: TObject);
begin
  if mitramitedm.qListarTramites.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Ftramiteedit.Edit1.Text := mitramitedm.qListarTramites.FieldByName('codigo').AsString;
    Ftramiteedit.Memo1.Text := mitramitedm.qListarTramites.FieldByName('tramite').AsString;
    Ftramiteedit.Edit2.Text := mitramitedm.qListarTramites.FieldByName('oficina_codigo').AsString;
    Ftramiteedit.ComboTrackBar1.Text := mitramitedm.qListarTramites.FieldByName('tiempo').AsString;
    Ftramiteedit.ComboBox1.ItemIndex := mitramitedm.qListarTramites.FieldByName('unidad_tiempo').AsInteger-1;
    Ftramiteedit.modificado := False;
    Ftramiteedit.RectMessage.Opacity := 0;
    Ftramiteedit.Showmodal;
    Overlay.Visible := False;
    if Ftramiteedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton18Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton24Click(Sender: TObject);
begin
  if RectMessage.Opacity = 1 then
  begin
    RectMessage.AnimateFloat('Opacity', 1.0, 0, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloat('Opacity', 0, 2, TAnimationType.Out, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton25Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  SpeedButton26Click(Self);
  showmessage('Hello');
end;

procedure TFmain.SpeedButton26Click(Sender: TObject);
begin
//
end;

procedure TFmain.SpeedButton2Click(Sender: TObject);
begin
  TabControl1.TabIndex := 0;
  if SpeedButton2.IsPressed then Rectangle87.Position.X := SpeedButton2.Position.X;
end;

procedure TFmain.SpeedButton2MouseEnter(Sender: TObject);
begin
  if not SpeedButton2.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton2.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton41Click(Sender: TObject);
begin
  Overlay.Visible := True;
  Funidadnew.Edit1.Text := '';
  Funidadnew.Edit2.Text := '';
  Funidadnew.Memo1.Text := '';
  Funidadnew.RectMessage.Opacity := 0;
  Funidadnew.Showmodal;
  Overlay.Visible := False;
  if Funidadnew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton38Click(Self);
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton42Click(Sender: TObject);
begin
  if mitramitedm.qListarUnidades.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.unidades.Active then mitramitedm.unidades.Active := True;
        if mitramitedm.unidades.Locate('id', mitramitedm.qListarUnidades.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.unidades.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton38Click(Self);
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

procedure TFmain.SpeedButton43Click(Sender: TObject);
begin
  if mitramitedm.qListarUnidades.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Funidadedit.Edit1.Text := mitramitedm.qListarUnidades.FieldByName('codigo').AsString;
    Funidadedit.Memo1.Text := mitramitedm.qListarUnidades.FieldByName('unidad').AsString;
    Funidadedit.Edit2.Text := mitramitedm.qListarUnidades.FieldByName('carnet').AsString;
    Funidadedit.modificado := False;
    Funidadedit.RectMessage.Opacity := 0;
    Funidadedit.Showmodal;
    Overlay.Visible := False;
    if Funidadedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton38Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton44Click(Sender: TObject);
begin
  Edit11.Text := '';
  Edit12.Text := '';
  Edit21.Text := '';
  Edit22.Text := '';
  SpeedButton45Click(Self);
end;

procedure TFmain.SpeedButton45Click(Sender: TObject);
begin
  mitramitedm.qListarPersonas.Close;
  mitramitedm.qListarPersonas.ParamByName('CI').AsString := Edit11.Text;
  mitramitedm.qListarPersonas.ParamByName('app').AsString := Edit12.Text;
  mitramitedm.qListarPersonas.ParamByName('apm').AsString := Edit21.Text;
  mitramitedm.qListarPersonas.ParamByName('nom').AsString := Edit22.Text;
  mitramitedm.qListarPersonas.Open();
  if mitramitedm.qListarPersonas.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton47Click(Sender: TObject);
begin
  Overlay.Visible := True;
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
  Overlay.Visible := False;
  if Fpersonanew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton44Click(Self);
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton48Click(Sender: TObject);
begin
  if mitramitedm.qListarPersonas.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.personas.Active then mitramitedm.personas.Active := True;
        if mitramitedm.personas.Locate('id', mitramitedm.qListarPersonas.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.personas.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton44Click(Self);
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

procedure TFmain.SpeedButton49Click(Sender: TObject);
begin
  if mitramitedm.qListarPersonas.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Fpersonaedit.Edit1.Text := mitramitedm.qListarPersonas.FieldByName('carnet').AsString;
    Fpersonaedit.Edit2.Text := mitramitedm.qListarPersonas.FieldByName('paterno').AsString;
    Fpersonaedit.Edit3.Text := mitramitedm.qListarPersonas.FieldByName('materno').AsString;
    Fpersonaedit.Edit4.Text := mitramitedm.qListarPersonas.FieldByName('nombre').AsString;
    if mitramitedm.qListarPersonas.FieldByName('sexo').AsString = 'M' then
      Fpersonaedit.RadioButton1.IsChecked := True
    else
      Fpersonaedit.RadioButton2.IsChecked := True;
    Fpersonaedit.Edit5.Text := mitramitedm.qListarPersonas.FieldByName('direccion').AsString;
    Fpersonaedit.Edit6.Text := mitramitedm.qListarPersonas.FieldByName('telefono').AsString;
    Fpersonaedit.Edit7.Text := mitramitedm.qListarPersonas.FieldByName('celular').AsString;
    Fpersonaedit.Edit8.Text := mitramitedm.qListarPersonas.FieldByName('email').AsString;
    Fpersonaedit.Edit9.Text := mitramitedm.qListarPersonas.FieldByName('ciudad').AsString;
    Fpersonaedit.ComboBox1.ItemIndex := mitramitedm.qListarPersonas.FieldByName('departamento_id').AsInteger-1;
    Fpersonaedit.modificado := False;
    Fpersonaedit.RectMessage.Opacity := 0;
    Fpersonaedit.Showmodal;
    Overlay.Visible := False;
    if Fpersonaedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton44Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton4Click(Sender: TObject);
begin
  TabControl1.TabIndex := 1;
  if SpeedButton4.IsPressed then Rectangle87.Position.X := SpeedButton4.Position.X;
end;

procedure TFmain.SpeedButton4MouseEnter(Sender: TObject);
begin
  if not SpeedButton4.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton4.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton50Click(Sender: TObject);
begin
  Edit13.Text := '';
  SpeedButton51Click(Self);
end;

procedure TFmain.SpeedButton51Click(Sender: TObject);
begin
  mitramitedm.qListarEstados.Close;
  mitramitedm.qListarEstados.ParamByName('std').AsString := Edit13.Text;
  mitramitedm.qListarEstados.Open();
  if mitramitedm.qListarEstados.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton53Click(Sender: TObject);
begin
  Overlay.Visible := True;
  Festadonew.Memo1.Text := '';
  Festadonew.RectMessage.Opacity := 0;
  Festadonew.Showmodal;
  Overlay.Visible := False;
  if Festadonew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton50Click(Self);
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton54Click(Sender: TObject);
begin
  if mitramitedm.qListarEstados.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.estados.Active then mitramitedm.estados.Active := True;
        if mitramitedm.estados.Locate('id', mitramitedm.qListarEstados.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.estados.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton50Click(Self);
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

procedure TFmain.SpeedButton55Click(Sender: TObject);
begin
  if mitramitedm.qListarEstados.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Festadoedit.Memo1.Text := mitramitedm.qListarEstados.FieldByName('estado').AsString;
    Festadoedit.modificado := False;
    Festadoedit.RectMessage.Opacity := 0;
    Festadoedit.Showmodal;
    Overlay.Visible := False;
    if Festadoedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton50Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton56Click(Sender: TObject);
begin
  Edit14.Text := '';
  Edit15.Text := '';
  Edit16.Text := '';
  Edit23.Text := '';
  SpeedButton57Click(Self);
end;

procedure TFmain.SpeedButton57Click(Sender: TObject);
begin
  mitramitedm.qListarFuncionarios.Close;
  mitramitedm.qListarFuncionarios.ParamByName('CI').AsString := Edit14.Text;
  mitramitedm.qListarFuncionarios.ParamByName('app').AsString := Edit15.Text;
  mitramitedm.qListarFuncionarios.ParamByName('apm').AsString := Edit16.Text;
  mitramitedm.qListarFuncionarios.ParamByName('nom').AsString := Edit23.Text;
  mitramitedm.qListarFuncionarios.Open();
  if mitramitedm.qListarFuncionarios.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton59Click(Sender: TObject);
begin
  Overlay.Visible := True;
  Ffuncionarionew.Edit1.Text := '';
  Ffuncionarionew.Edit2.Text := '';
  Ffuncionarionew.Edit3.Text := '';
  Ffuncionarionew.Memo1.Text := '';
  Ffuncionarionew.RectMessage.Opacity := 0;
  Ffuncionarionew.Showmodal;
  Overlay.Visible := False;
  if Ffuncionarionew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton56Click(Self);
    SpeedButton62Click(Self);
    SpeedButton68Click(Self);
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton5Click(Sender: TObject);
begin
  TabControl1.TabIndex := 5;
  if SpeedButton5.IsPressed then Rectangle87.Position.X := SpeedButton5.Position.X;
end;

procedure TFmain.SpeedButton5MouseEnter(Sender: TObject);
begin
  if not SpeedButton5.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton5.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton60Click(Sender: TObject);
begin
  if mitramitedm.qListarfuncionarios.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.funcionarios.Active then mitramitedm.funcionarios.Active := True;
        if mitramitedm.funcionarios.Locate('id', mitramitedm.qListarfuncionarios.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.funcionarios.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton56Click(Self);
          SpeedButton62Click(Self);
          SpeedButton68Click(Self);
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

procedure TFmain.SpeedButton61Click(Sender: TObject);
begin
  if mitramitedm.qListarFuncionarios.RecordCount>0 then
  begin
    Overlay.Visible := True;
    if mitramitedm.qListarPersonas.Locate('id', mitramitedm.qListarFuncionarios.FieldByName('persona_id').AsInteger, []) then
      Ffuncionarioedit.Edit1.Text := mitramitedm.qListarPersonas.FieldByName('carnet').AsString
    else
      Ffuncionarioedit.Edit1.Text := '';
    if mitramitedm.qListarCargos.Locate('id', mitramitedm.qListarFuncionarios.FieldByName('cargo_id').AsInteger, []) then
      Ffuncionarioedit.Edit2.Text := mitramitedm.qListarCargos.FieldByName('codigo').AsString
    else
      Ffuncionarioedit.Edit2.Text := '';
    if mitramitedm.qListarItems.Locate('id', mitramitedm.qListarFuncionarios.FieldByName('item_id').AsInteger, []) then
      Ffuncionarioedit.Edit3.Text := mitramitedm.qListarItems.FieldByName('numero').AsString;
    Ffuncionarioedit.Memo1.Text := mitramitedm.qListarFuncionarios.FieldByName('observaciones').AsString;
    Ffuncionarioedit.DateEdit1.Date := mitramitedm.qListarFuncionarios.FieldByName('fechadesignacion').AsDateTime;
    Ffuncionarioedit.modificado := False;
    Ffuncionarioedit.RectMessage.Opacity := 0;
    Ffuncionarioedit.Showmodal;
    Overlay.Visible := False;
    if Ffuncionarioedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton56Click(Self);
      SpeedButton62Click(Self);
      SpeedButton68Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton62Click(Sender: TObject);
begin
  Edit17.Text := '';
  Edit18.Text := '';
  SpeedButton63Click(Self);
end;

procedure TFmain.SpeedButton63Click(Sender: TObject);
begin
  mitramitedm.qListarCargos.Close;
  mitramitedm.qListarCargos.ParamByName('codcargo').AsString := Edit17.Text;
  mitramitedm.qListarCargos.ParamByName('descrip').AsString := Edit18.Text;
  mitramitedm.qListarCargos.Open();
  if mitramitedm.qListarCargos.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton65Click(Sender: TObject);
begin
  Overlay.Visible := True;
  Fcargonew.Edit1.Text := '';
  Fcargonew.Memo1.Text := '';
  Fcargonew.Edit2.Text := '';
  Fcargonew.RectMessage.Opacity := 0;
  Fcargonew.Showmodal;
  Overlay.Visible := False;
  if Fcargonew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton62Click(Self);
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton66Click(Sender: TObject);
begin
  if mitramitedm.qListarcargos.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.cargos.Active then mitramitedm.cargos.Active := True;
        if mitramitedm.cargos.Locate('id', mitramitedm.qListarcargos.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.cargos.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton62Click(Self);
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

procedure TFmain.SpeedButton67Click(Sender: TObject);
begin
  if mitramitedm.qListarCargos.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Fcargoedit.Edit1.Text := mitramitedm.qListarCargos.FieldByName('codigo').AsString;
    Fcargoedit.Memo1.Text := mitramitedm.qListarCargos.FieldByName('cargo').AsString;
    Fcargoedit.Edit2.Text := mitramitedm.qListarCargos.FieldByName('servicio').AsString;
    Fcargoedit.modificado := False;
    Fcargoedit.RectMessage.Opacity := 0;
    Fcargoedit.Showmodal;
    Overlay.Visible := False;
    if Fcargoedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton62Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton68Click(Sender: TObject);
begin
  Edit19.Text := '';
  SpeedButton69Click(Self);
end;

procedure TFmain.SpeedButton69Click(Sender: TObject);
begin
  mitramitedm.qListarItems.Close;
  if mitramitedm.qListarItems.SQL.Count>6 then mitramitedm.qListarItems.SQL.Delete(5);
  if Edit19.Text<>'' then
    mitramitedm.qListarItems.SQL.Insert(5, 'where items.numero = ' + Edit19.Text);
  mitramitedm.qListarItems.Open();
  if mitramitedm.qListarItems.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton6Click(Sender: TObject);
begin
  TabControl1.TabIndex := 6;
  if SpeedButton6.IsPressed then Rectangle87.Position.X := SpeedButton6.Position.X;
end;

procedure TFmain.SpeedButton6MouseEnter(Sender: TObject);
begin
  if not SpeedButton6.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton6.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton71Click(Sender: TObject);
begin
  Overlay.Visible := True;
  Fitemnew.Edit1.Text := '';
  Fitemnew.Memo1.Text := '';
  Fitemnew.DateEdit1.Date := now;
  Fitemnew.RectMessage.Opacity := 0;
  Fitemnew.Showmodal;
  Overlay.Visible := False;
  if Fitemnew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton68Click(Self);
    mitramitedm.qListarItemsAcefalos.Close;
    mitramitedm.qListarItemsAcefalos.Open();
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton72Click(Sender: TObject);
begin
  if mitramitedm.qListarItems.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.items.Active then mitramitedm.items.Active := True;
        if mitramitedm.items.Locate('id', mitramitedm.qListarItems.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.items.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton68Click(Self);
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

procedure TFmain.SpeedButton73Click(Sender: TObject);
begin
  if mitramitedm.qListarItems.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Fitemedit.Edit1.Text := mitramitedm.qListarItems.FieldByName('numero').AsString;
    Fitemedit.Memo1.Text := mitramitedm.qListarItems.FieldByName('descripcion').AsString;
    Fitemedit.DateEdit1.Date := mitramitedm.qListarItems.FieldByName('fecha_creacion').AsDateTime;
    Fitemedit.modificado := False;
    Fitemedit.RectMessage.Opacity := 0;
    Fitemedit.Showmodal;
    Overlay.Visible := False;
    if Fitemedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton68Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton74Click(Sender: TObject);
begin
  TabControl1.TabIndex := 11;
  if SpeedButton74.IsPressed then Rectangle87.Position.X := SpeedButton74.Position.X;
end;

procedure TFmain.SpeedButton74MouseEnter(Sender: TObject);
begin
  if not SpeedButton74.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton74.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton75Click(Sender: TObject);
begin
  Multiview1.HideMaster;
end;

procedure TFmain.SpeedButton7Click(Sender: TObject);
begin
  TabControl1.TabIndex := 7;
  if SpeedButton7.IsPressed then Rectangle87.Position.X := SpeedButton7.Position.X;
end;

procedure TFmain.SpeedButton7MouseEnter(Sender: TObject);
begin
  if not SpeedButton7.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton7.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton84Click(Sender: TObject);
begin
  TabControl1.TabIndex := 3;
  if SpeedButton84.IsPressed then Rectangle87.Position.X := SpeedButton84.Position.X;
end;

procedure TFmain.SpeedButton84MouseEnter(Sender: TObject);
begin
  if not SpeedButton84.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton84.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton84MouseLeave(Sender: TObject);
begin
  Rectangle89.Visible := False;
end;

procedure TFmain.SpeedButton85Click(Sender: TObject);
begin
  Edit29.Text := '';
  SpeedButton86Click(Self);
end;

procedure TFmain.SpeedButton86Click(Sender: TObject);
begin
  mitramitedm.qListarRequisitos.Close;
  mitramitedm.qListarRequisitos.ParamByName('req').AsString := Edit29.Text;
  mitramitedm.qListarRequisitos.Open();
  if mitramitedm.qListarRequisitos.RecordCount < 1 then
  begin
    Text1.Text := 'No existen datos para mostrar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton88Click(Sender: TObject);
begin
  Overlay.Visible := True;
  Frequisitonew.Memo1.Text := '';
  Frequisitonew.RectMessage.Opacity := 0;
  Frequisitonew.Showmodal;
  Overlay.Visible := False;
  if Frequisitonew.ModalResult=mrOK then
  begin
    Text1.Text := 'Los datos de registro fueron guardados correctamente.';
    RectMessage.Fill.Color := $FF00CE68;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
    SpeedButton85Click(Self);
  end
  else
  begin
    Text1.Text := 'No se ha guardado ningún registro.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton89Click(Sender: TObject);
begin
  if mitramitedm.qListarRequisitos.RecordCount>0 then
  begin
    TDialogService.MessageDialog('Está a punto de eliminar el registro seleccionado. Eliminar ahora?'#10#10'Una vez eliminado, no podrá recuperar los datos de este registro.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbYes, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        if not mitramitedm.requisitos.Active then mitramitedm.requisitos.Active := True;
        if mitramitedm.requisitos.Locate('id', mitramitedm.qListarRequisitos.FieldByName('id').AsInteger, []) then
        begin
          mitramitedm.requisitos.Delete;
          Text1.Text := 'Los datos del registro seleccionado fueron eliminados correctamente.';
          RectMessage.Fill.Color := $FF00CE68;
          RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
          RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
          SpeedButton85Click(Self);
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

procedure TFmain.SpeedButton8Click(Sender: TObject);
begin
  TabControl1.TabIndex := 4;
  if SpeedButton8.IsPressed then Rectangle87.Position.X := SpeedButton8.Position.X;
end;

procedure TFmain.SpeedButton8MouseEnter(Sender: TObject);
begin
  if not SpeedButton8.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton8.Position.X;
    Rectangle89.Visible := True;
  end;
end;

procedure TFmain.SpeedButton90Click(Sender: TObject);
begin
  if mitramitedm.qListarRequisitos.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Frequisitoedit.Memo1.Text := mitramitedm.qListarRequisitos.FieldByName('requisito').AsString;
    Frequisitoedit.modificado := False;
    Frequisitoedit.RectMessage.Opacity := 0;
    Frequisitoedit.Showmodal;
    Overlay.Visible := False;
    if Frequisitoedit.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton85Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos para modificar.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton91Click(Sender: TObject);
begin
  if mitramitedm.qListarTramites.RecordCount>0 then
  begin
    Overlay.Visible := True;
    Frequisitoview.Memo1.Text := mitramitedm.qListarTramites.FieldByName('tramite').AsString;
    Frequisitoview.Edit1.Text := mitramitedm.qListarTramites.FieldByName('tiempo').AsString + ' ' + mitramitedm.qListarTramites.FieldByName('unid_tiempo').AsString;
    Frequisitoview.RectMessage.Opacity := 0;
    Frequisitoview.modificado := False;
    Frequisitoview.Showmodal;
    Overlay.Visible := False;
    if Frequisitoview.ModalResult=mrOK then
    begin
      Text1.Text := 'Los datos modificados fueron guardados correctamente.';
      RectMessage.Fill.Color := $FF00CE68;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 2, 5, TAnimationType.InOut, TInterpolationType.Linear);
      SpeedButton18Click(Self);
    end
    else
    begin
      Text1.Text := 'No se ha modificado ningún registro.';
      RectMessage.Fill.Color := TAlphaColorRec.Red;
      RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
      RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
    end;
  end
  else
  begin
    Text1.Text := 'No existen datos de trámite para asignar requisitos.';
    RectMessage.Fill.Color := TAlphaColorRec.Red;
    RectMessage.AnimateFloat('Opacity', 1.0, 0.5, TAnimationType.In, TInterpolationType.Linear);
    RectMessage.AnimateFloatDelay('Opacity', 0, 1, 4, TAnimationType.InOut, TInterpolationType.Linear);
  end;
end;

procedure TFmain.SpeedButton9Click(Sender: TObject);
begin
  TabControl1.TabIndex := 8;
  if SpeedButton9.IsPressed then Rectangle87.Position.X := SpeedButton9.Position.X;
end;

procedure TFmain.SpeedButton9MouseEnter(Sender: TObject);
begin
  if not SpeedButton9.IsPressed then
  begin
    Rectangle89.Position.X := SpeedButton9.Position.X;
    Rectangle89.Visible := True;
  end;
end;

end.

{procedure TFmain.SpeedButton5Click(Sender: TObject);
var dia, mes, anio: Word;
    d, m, a: String;
begin
  d := ''; m := ''; a := '';
  //DecodeDate(DateEdit1.Date, anio, mes, dia);
  if dia<10 then d := '0'+InttoStr(dia)
  else d := InttoStr(dia);
  case mes of
    1: m := 'enero';
    2: m := 'febrero';
    3: m := 'marzo';
    4: m := 'abril';
    5: m := 'mayo';
    6: m := 'junio';
    7: m := 'julio';
    8: m := 'agosto';
    9: m := 'septiembre';
   10: m := 'octubre';
   11: m := 'noviembre';
   12: m := 'diciembre';
  end;
  a := InttoStr(anio);
  //Ejecutar(DIR+'\legalreport.exe', True);
end;     }

