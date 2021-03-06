inherited FormSetores: TFormSetores
  Caption = 'Setores'
  ClientWidth = 461
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 467
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel_Superior: TPanel
    Width = 461
    Height = 57
    ExplicitWidth = 461
    ExplicitHeight = 57
    object Label1: TLabel
      Left = 10
      Top = 8
      Width = 26
      Height = 13
      Caption = 'C'#243'd. '
      FocusControl = DBEdit_CodSetor
    end
    object Label2: TLabel
      Left = 81
      Top = 8
      Width = 26
      Height = 13
      Caption = 'Setor'
      FocusControl = DBEdit_NomeSetor
    end
    object Label3: TLabel
      Left = 250
      Top = 8
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEdit_DtCadSetor
    end
    object DBEdit_CodSetor: TDBEdit
      Left = 10
      Top = 24
      Width = 65
      Height = 21
      DataField = 'id_setor'
      DataSource = DS_Setores
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_NomeSetor: TDBEdit
      Left = 81
      Top = 24
      Width = 163
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome_setor'
      DataSource = DS_Setores
      TabOrder = 1
    end
    object DBEdit_DtCadSetor: TDBEdit
      Left = 250
      Top = 24
      Width = 81
      Height = 21
      DataField = 'dt_cadastro'
      DataSource = DS_Setores
      ReadOnly = True
      TabOrder = 2
    end
    object RadioButton_SetorAtivo: TRadioButton
      Left = 337
      Top = 25
      Width = 56
      Height = 17
      Caption = 'Ativo'
      TabOrder = 3
    end
    object RadioButton_SetorDesativado: TRadioButton
      Left = 399
      Top = 25
      Width = 64
      Height = 17
      Caption = 'Inativo'
      TabOrder = 4
    end
  end
  inherited Panel_Central: TPanel
    Top = 57
    Width = 461
    Height = 362
    ExplicitLeft = 0
    ExplicitTop = 57
    ExplicitWidth = 461
    ExplicitHeight = 362
    inherited DBGrid_Tabela: TDBGrid
      Width = 459
      Height = 360
      DataSource = DS_Setores
      Columns = <
        item
          Expanded = False
          FieldName = 'id_setor'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_setor'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_cadastro'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'setor_ativo'
          Width = 50
          Visible = True
        end>
    end
  end
  inherited Panel_Inferior: TPanel
    Width = 461
    ExplicitWidth = 461
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
  object DS_Setores: TDataSource
    DataSet = dmDados.Setores
    Left = 168
    Top = 192
  end
end
