inherited FormSubGruposDeProdutos: TFormSubGruposDeProdutos
  Caption = 'SubGrupos de Produtos'
  ClientWidth = 423
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel_Superior: TPanel
    Width = 423
    Height = 57
    ExplicitWidth = 423
    ExplicitHeight = 57
    object Label1: TLabel
      Left = 9
      Top = 6
      Width = 26
      Height = 13
      Caption = 'C'#243'd. '
      FocusControl = DBEdit_CodSubGrupo
    end
    object Label2: TLabel
      Left = 90
      Top = 6
      Width = 46
      Height = 13
      Caption = 'Subgrupo'
      FocusControl = DBEdit_NomeSubgrupo
    end
    object Label3: TLabel
      Left = 323
      Top = 6
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEdit_DtCadSubgrupo
    end
    object DBEdit_CodSubGrupo: TDBEdit
      Left = 9
      Top = 22
      Width = 75
      Height = 21
      DataField = 'id_subgrupo_produtos'
      DataSource = DS_SubGrupo
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_NomeSubgrupo: TDBEdit
      Left = 90
      Top = 22
      Width = 227
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome_subgrupo'
      DataSource = DS_SubGrupo
      TabOrder = 1
    end
    object DBEdit_DtCadSubgrupo: TDBEdit
      Left = 323
      Top = 22
      Width = 89
      Height = 21
      DataField = 'dt_cadastro'
      DataSource = DS_SubGrupo
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited Panel_Central: TPanel
    Top = 57
    Width = 423
    Height = 362
    ExplicitLeft = 0
    ExplicitTop = 57
    ExplicitWidth = 423
    ExplicitHeight = 362
    inherited DBGrid_Tabela: TDBGrid
      Width = 421
      Height = 360
      DataSource = DS_SubGrupo
      Columns = <
        item
          Expanded = False
          FieldName = 'id_subgrupo_produtos'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_subgrupo'
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
    Width = 423
    ExplicitWidth = 423
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
  object DS_SubGrupo: TDataSource
    AutoEdit = False
    DataSet = dmDados.SubGruposProdutos
    Left = 192
    Top = 232
  end
end
