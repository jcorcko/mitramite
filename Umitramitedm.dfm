object mitramitedm: Tmitramitedm
  OldCreateOrder = False
  Height = 751
  Width = 556
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=tramites_db'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object departamentos: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.departamentos'
    TableName = 'tramites_db.departamentos'
    Left = 120
    Top = 64
  end
  object documentos: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.documentos'
    TableName = 'tramites_db.documentos'
    Left = 120
    Top = 120
  end
  object estados: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.estados'
    TableName = 'tramites_db.estados'
    Left = 120
    Top = 176
  end
  object flujos: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.flujos'
    TableName = 'tramites_db.flujos'
    Left = 120
    Top = 232
  end
  object funcionarios: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.funcionarios'
    TableName = 'tramites_db.funcionarios'
    Left = 120
    Top = 288
  end
  object items: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.items'
    TableName = 'tramites_db.items'
    Left = 120
    Top = 344
  end
  object oficinas: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.oficinas'
    TableName = 'tramites_db.oficinas'
    Left = 120
    Top = 400
  end
  object personas: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.personas'
    TableName = 'tramites_db.personas'
    Left = 120
    Top = 456
  end
  object tramites: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.tramites'
    TableName = 'tramites_db.tramites'
    Left = 120
    Top = 512
  end
  object unidades: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'tramites_db.unidades'
    TableName = 'tramites_db.unidades'
    Left = 120
    Top = 568
  end
  object qListarPersonas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select *, trim(concat(personas.paterno,'#39' '#39',personas.materno,'#39' '#39',' +
        'personas.nombre)) as nombre_completo'
      'from personas'
      
        'where (personas.carnet like trim(concat('#39'%'#39',:CI,'#39'%'#39'))) and (pers' +
        'onas.paterno like trim(concat('#39'%'#39',:app,'#39'%'#39'))) and (personas.mate' +
        'rno like trim(concat('#39'%'#39',:apm,'#39'%'#39'))) and (personas.nombre like t' +
        'rim(concat('#39'%'#39',:nom,'#39'%'#39')))'
      'order by nombre_completo')
    Left = 200
    Top = 456
    ParamData = <
      item
        Name = 'CI'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'APP'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'APM'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'NOM'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qListarItems: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select items.*, personas.carnet, trim(concat(personas.paterno,'#39' ' +
        #39',personas.materno,'#39' '#39',personas.nombre)) as nombre_funcionario, ' +
        'cargos.cargo, funcionarios.fechadesignacion'
      'from items'
      'left join funcionarios on funcionarios.item_id = items.id'
      'left join cargos on funcionarios.cargo_id = cargos.id'
      'left join personas on funcionarios.persona_id = personas.id'
      'order by items.numero')
    Left = 200
    Top = 344
  end
  object cargos: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'cargos'
    TableName = 'cargos'
    Left = 120
    Top = 8
  end
  object qListarCargos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select cargos.*, personas.carnet, trim(concat(personas.paterno,'#39 +
        ' '#39',personas.materno,'#39' '#39',personas.nombre)) as nombre_funcionario,' +
        ' items.numero, funcionarios.fechadesignacion'
      'from cargos'
      'left join funcionarios on funcionarios.cargo_id = cargos.id'
      'left join items on funcionarios.item_id = items.id'
      'left join personas on funcionarios.persona_id = personas.id'
      
        'where cargos.codigo like trim(concat('#39'%'#39',:codcargo,'#39'%'#39')) and car' +
        'gos.cargo like trim(concat('#39'%'#39',:descrip,'#39'%'#39'))'
      'order by cargos.codigo'
      '')
    Left = 200
    Top = 8
    ParamData = <
      item
        Name = 'CODCARGO'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'DESCRIP'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qListarFuncionarios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select funcionarios.*, personas.carnet, trim(concat(personas.pat' +
        'erno,'#39' '#39',personas.materno,'#39' '#39',personas.nombre)) as nombre_funcio' +
        'nario, items.numero, cargos.cargo, cargos.codigo, cargos.servici' +
        'o'
      'from funcionarios'
      'left join cargos on funcionarios.cargo_id = cargos.id'
      'left join items on funcionarios.item_id = items.id'
      'left join personas on funcionarios.persona_id = personas.id'
      
        'where (personas.carnet like trim(concat('#39'%'#39',:CI,'#39'%'#39'))) and (pers' +
        'onas.paterno like trim(concat('#39'%'#39',:app,'#39'%'#39'))) and (personas.mate' +
        'rno like trim(concat('#39'%'#39',:apm,'#39'%'#39'))) and (personas.nombre like t' +
        'rim(concat('#39'%'#39',:nom,'#39'%'#39')))'
      'order by nombre_funcionario')
    Left = 200
    Top = 288
    ParamData = <
      item
        Name = 'CI'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'APP'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'APM'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'NOM'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qListarItemsAcefalos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select items.*'
      'from items'
      'where items.acefalo=1')
    Left = 280
    Top = 344
  end
  object qListarEstados: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select estados.*'
      'from estados'
      'where (estados.estado like trim(concat('#39'%'#39',:std,'#39'%'#39')))')
    Left = 200
    Top = 176
    ParamData = <
      item
        Name = 'STD'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qListarUnidades: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select unidades.*, personas.carnet, trim(concat(personas.paterno' +
        ','#39' '#39',personas.materno,'#39' '#39',personas.nombre)) as responsable_unida' +
        'd, items.numero, cargos.cargo, cargos.codigo as cargo_codigo, ca' +
        'rgos.servicio'
      'from unidades'
      
        'left join funcionarios on unidades.funcionario_id = funcionarios' +
        '.id'
      'left join cargos on funcionarios.cargo_id = cargos.id'
      'left join items on funcionarios.item_id = items.id'
      'left join personas on funcionarios.persona_id = personas.id'
      
        'where (unidades.codigo like trim(concat('#39'%'#39',:cod,'#39'%'#39'))) and (uni' +
        'dades.unidad like trim(concat('#39'%'#39',:unid,'#39'%'#39')))'
      'order by unidades.codigo')
    Left = 200
    Top = 568
    ParamData = <
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'UNID'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qListarOficinas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select oficinas.*, unidades.codigo as unidad_codigo, unidades.un' +
        'idad, personas.carnet, trim(concat(personas.paterno,'#39' '#39',personas' +
        '.materno,'#39' '#39',personas.nombre)) as responsable_oficina, items.num' +
        'ero, cargos.cargo, cargos.codigo as cargo_codigo, cargos.servici' +
        'o'
      'from oficinas'
      
        'left join funcionarios on oficinas.funcionario_id = funcionarios' +
        '.id'
      'left join personas on funcionarios.persona_id = personas.id'
      'left join cargos on funcionarios.cargo_id = cargos.id'
      'left join items on funcionarios.item_id = items.id'
      'left join unidades on oficinas.unidad_id = unidades.id'
      
        'where (oficinas.codigo like trim(concat('#39'%'#39',:cod,'#39'%'#39'))) and (ofi' +
        'cinas.oficina like trim(concat('#39'%'#39',:ofic,'#39'%'#39')))'
      'order by oficinas.codigo')
    Left = 200
    Top = 400
    ParamData = <
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'OFIC'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qListarTramites: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select tramites.*, oficinas.codigo as oficina_codigo, oficinas.o' +
        'ficina,'
      '  CASE '
      '    when tramites.unidad_tiempo=1 then '#39'HORAS'#39
      '    when tramites.unidad_tiempo=2 then '#39'DIAS HABILES'#39
      '    when tramites.unidad_tiempo=3 then '#39'DIAS CALENDARIO'#39
      '    when tramites.unidad_tiempo=4 then '#39'SEMANAS'#39
      '    when tramites.unidad_tiempo=5 then '#39'MESES'#39
      '  ELSE '#39#39' END as unid_tiempo'
      'from tramites'
      'left join oficinas on tramites.oficina_id = oficinas.id'
      
        'where (tramites.codigo like trim(concat('#39'%'#39',:cod,'#39'%'#39'))) and (tra' +
        'mites.tramite like trim(concat('#39'%'#39',:tram,'#39'%'#39')))'
      'order by tramites.codigo')
    Left = 200
    Top = 512
    ParamData = <
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'TRAM'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object requisitos: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'requisitos'
    TableName = 'requisitos'
    Left = 120
    Top = 624
  end
  object qListarRequisitos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select requisitos.*, '#39'False'#39' as seleccionar'
      'from requisitos'
      'where (requisitos.requisito like trim(concat('#39'%'#39',:req,'#39'%'#39')))'
      'order by requisitos.requisito')
    Left = 200
    Top = 624
    ParamData = <
      item
        Name = 'REQ'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qVerRequisitos: TFDQuery
    IndexFieldNames = 'tramite_id'
    MasterSource = dsqListarTramites
    MasterFields = 'id'
    DetailFields = 'tramite_id'
    Connection = FDConnection1
    SQL.Strings = (
      
        'select requisitos_tramites.*, tramites.tramite, tramites.tiempo,' +
        ' requisitos.requisito,'
      '  CASE '
      '    when tramites.unidad_tiempo=1 then '#39'HORAS'#39
      '    when tramites.unidad_tiempo=2 then '#39'DIAS HABILES'#39
      '    when tramites.unidad_tiempo=3 then '#39'DIAS CALENDARIO'#39
      '    when tramites.unidad_tiempo=4 then '#39'MESES'#39
      '  ELSE '#39#39' END as unid_tiempo'
      'from requisitos_tramites'
      'join tramites on requisitos_tramites.tramite_id = tramites.id'
      
        'join requisitos on requisitos_tramites.requisito_id = requisitos' +
        '.id'
      'where (requisitos.requisito like trim(concat('#39'%'#39',:req,'#39'%'#39')))'
      'order by requisitos.requisito')
    Left = 200
    Top = 680
    ParamData = <
      item
        Name = 'REQ'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object dsqListarTramites: TDataSource
    DataSet = qListarTramites
    Left = 280
    Top = 512
  end
  object requisitos_tramites: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'requisitos_tramites'
    TableName = 'requisitos_tramites'
    Left = 120
    Top = 680
  end
  object qSeleccionarRequisitos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select requisitos.*, '#39'False'#39' as seleccionar'
      'from requisitos'
      
        'where (requisitos.requisito like trim(concat('#39'%'#39',:req,'#39'%'#39'))) and' +
        ' (requisitos.id not in (select requisito_id from requisitos_tram' +
        'ites where requisitos_tramites.tramite_id = :tram_id))'
      'order by requisitos.requisito')
    Left = 280
    Top = 624
    ParamData = <
      item
        Name = 'REQ'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'TRAM_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object qSeleccionarRequisitosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qSeleccionarRequisitosrequisito: TStringField
      FieldName = 'requisito'
      Origin = 'requisito'
      Required = True
      Size = 255
    end
    object qSeleccionarRequisitosseleccionar: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'seleccionar'
      Origin = 'seleccionar'
      ProviderFlags = []
      Size = 5
    end
  end
  object qListarDocumentos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select documentos.*, estados.estado, tramites.tramite, trim(conc' +
        'at(personas.paterno,'#39' '#39',personas.materno,'#39' '#39',personas.nombre)) a' +
        's usuario, personas.carnet,'
      
        ' (select trim(concat(personas.paterno,'#39' '#39',personas.materno,'#39' '#39',p' +
        'ersonas.nombre, '#39' | '#39', cargos.cargo)) as nombre_funcionario'
      'from funcionarios'
      'join cargos on funcionarios.cargo_id = cargos.id'
      'join personas on funcionarios.persona_id = personas.id'
      
        'where (funcionarios.id = documentos.funcionario_id)) as funciona' +
        'rio'
      'from documentos'
      'join estados on documentos.estado_id = estados.id'
      'join tramites on documentos.tramite_id = tramites.id'
      'join personas on documentos.persona_id = personas.id'
      
        'where (personas.carnet like trim(concat('#39'%'#39',:CI,'#39'%'#39'))) and (docu' +
        'mentos.hoja_ruta like trim(concat('#39'%'#39',:hojaruta,'#39'%'#39')))'
      'order by documentos.id DESC')
    Left = 200
    Top = 120
    ParamData = <
      item
        Name = 'CI'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'HOJARUTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
end
