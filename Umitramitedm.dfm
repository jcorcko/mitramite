object mitramitedm: Tmitramitedm
  OldCreateOrder = False
  Height = 695
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
    Left = 184
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
      
        'select items.*, trim(concat(personas.paterno,'#39' '#39',personas.matern' +
        'o,'#39' '#39',personas.nombre)) as nombre_funcionario, cargos.cargo, fun' +
        'cionarios.fechadesignacion'
      'from items'
      'left join funcionarios on funcionarios.item_id = items.id'
      'left join cargos on funcionarios.cargo_id = cargos.id'
      'left join personas on funcionarios.persona_id = personas.id'
      'order by items.numero')
    Left = 184
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
      
        'select cargos.*, trim(concat(personas.paterno,'#39' '#39',personas.mater' +
        'no,'#39' '#39',personas.nombre)) as nombre_funcionario, items.numero, fu' +
        'ncionarios.fechadesignacion'
      'from cargos'
      'left join funcionarios on funcionarios.cargo_id = cargos.id'
      'left join items on funcionarios.item_id = items.id'
      'left join personas on funcionarios.persona_id = personas.id'
      
        'where cargos.codigo like trim(concat('#39'%'#39',:codcargo,'#39'%'#39')) and car' +
        'gos.cargo like trim(concat('#39'%'#39',:descrip,'#39'%'#39'))'
      'order by cargos.cargo')
    Left = 184
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
end
