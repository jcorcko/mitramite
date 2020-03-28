unit Umitramitedm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  Tmitramitedm = class(TDataModule)
    FDConnection1: TFDConnection;
    departamentos: TFDTable;
    documentos: TFDTable;
    estados: TFDTable;
    flujos: TFDTable;
    funcionarios: TFDTable;
    items: TFDTable;
    oficinas: TFDTable;
    personas: TFDTable;
    tramites: TFDTable;
    unidades: TFDTable;
    qListarPersonas: TFDQuery;
    qListarItems: TFDQuery;
    cargos: TFDTable;
    qListarCargos: TFDQuery;
    qListarFuncionarios: TFDQuery;
    qListarItemsAcefalos: TFDQuery;
    qListarEstados: TFDQuery;
    qListarUnidades: TFDQuery;
    qListarOficinas: TFDQuery;
    qListarTramites: TFDQuery;
    requisitos: TFDTable;
    qListarRequisitos: TFDQuery;
    qVerRequisitos: TFDQuery;
    dsqListarTramites: TDataSource;
    requisitos_tramites: TFDTable;
    qSeleccionarRequisitos: TFDQuery;
    qSeleccionarRequisitosid: TFDAutoIncField;
    qSeleccionarRequisitosrequisito: TStringField;
    qSeleccionarRequisitosseleccionar: TStringField;
    qListarDocumentos: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mitramitedm: Tmitramitedm;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
