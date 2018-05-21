inherited FormMarcas: TFormMarcas
  Caption = 'Marcas'
  ClientWidth = 402
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 408
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel_Superior: TPanel
    Width = 402
    Height = 65
    ExplicitWidth = 402
    ExplicitHeight = 65
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 26
      Height = 13
      Caption = 'C'#243'd. '
      FocusControl = DBEdit_CodMarca
    end
    object Label2: TLabel
      Left = 79
      Top = 10
      Width = 29
      Height = 13
      Caption = 'Marca'
      FocusControl = DBEdit_NomeMarca
    end
    object Label3: TLabel
      Left = 292
      Top = 10
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEdit_DtCadMarca
    end
    object DBEdit_CodMarca: TDBEdit
      Left = 8
      Top = 26
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      DataField = 'id_marca'
      DataSource = DS_Marcas
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_NomeMarca: TDBEdit
      Left = 79
      Top = 26
      Width = 209
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome_marca'
      DataSource = DS_Marcas
      TabOrder = 1
    end
    object DBEdit_DtCadMarca: TDBEdit
      Left = 292
      Top = 26
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'dt_cadastro'
      DataSource = DS_Marcas
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited Panel_Central: TPanel
    Top = 65
    Width = 402
    Height = 354
    ExplicitLeft = 0
    ExplicitTop = 65
    ExplicitWidth = 402
    ExplicitHeight = 354
    inherited DBGrid_Tabela: TDBGrid
      Width = 400
      Height = 352
      DataSource = DS_Marcas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
      Columns = <
        item
          Expanded = False
          FieldName = 'id_marca'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_marca'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_cadastro'
          Width = 80
          Visible = True
        end>
    end
  end
  inherited Panel_Inferior: TPanel
    Width = 402
    ExplicitWidth = 402
    inherited BTN_Novo: TButton
      Default = True
      OnClick = BTN_NovoClick
    end
    inherited BTN_Salvar: TButton
      Default = True
      OnClick = BTN_SalvarClick
    end
    inherited BTN_Excluir: TButton
      OnClick = BTN_ExcluirClick
    end
    inherited BTN_Cancelar: TButton
      OnClick = BTN_CancelarClick
    end
    inherited BTN_Editar: TButton
      OnClick = BTN_EditarClick
    end
  end
  object DS_Marcas: TDataSource
    AutoEdit = False
    DataSet = dmDados.Marcas
    Left = 168
    Top = 224
  end
end
