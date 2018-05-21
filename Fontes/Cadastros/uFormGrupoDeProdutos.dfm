inherited FormGrupoDeProdutos: TFormGrupoDeProdutos
  Caption = 'Grupos de Produtos'
  ClientWidth = 394
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel_Superior: TPanel
    Width = 394
    Height = 57
    ExplicitWidth = 394
    ExplicitHeight = 57
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 26
      Height = 13
      Caption = 'C'#243'd. '
      FocusControl = DBEdit_CodGrupo
    end
    object Label2: TLabel
      Left = 72
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Grupo'
      FocusControl = DBEdit_NomeGrupo
    end
    object Label3: TLabel
      Left = 293
      Top = 8
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEdit_DtCadGrupo
    end
    object DBEdit_CodGrupo: TDBEdit
      Left = 6
      Top = 24
      Width = 60
      Height = 21
      DataField = 'id_grupo_produto'
      DataSource = DS_GrupoDeProdutos
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_NomeGrupo: TDBEdit
      Left = 72
      Top = 24
      Width = 215
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome_grupo'
      DataSource = DS_GrupoDeProdutos
      TabOrder = 1
    end
    object DBEdit_DtCadGrupo: TDBEdit
      Left = 293
      Top = 24
      Width = 84
      Height = 21
      DataField = 'dt_cadastro'
      DataSource = DS_GrupoDeProdutos
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited Panel_Central: TPanel
    Top = 57
    Width = 394
    Height = 362
    ExplicitLeft = 0
    ExplicitTop = 57
    ExplicitWidth = 394
    ExplicitHeight = 362
    inherited DBGrid_Tabela: TDBGrid
      Width = 392
      Height = 360
      DataSource = DS_GrupoDeProdutos
      Columns = <
        item
          Expanded = False
          FieldName = 'id_grupo_produto'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_grupo'
          Width = 220
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
    Width = 394
    ExplicitWidth = 394
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
  object DS_GrupoDeProdutos: TDataSource
    AutoEdit = False
    DataSet = dmDados.GrupoDeProdutos
    Left = 152
    Top = 232
  end
end
