inherited FormCidades: TFormCidades
  Caption = 'Cidades'
  ClientWidth = 382
  OnClose = FormClose
  ExplicitWidth = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel_Superior: TPanel
    Width = 382
    Height = 57
    ExplicitWidth = 382
    ExplicitHeight = 57
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 26
      Height = 13
      Caption = 'C'#243'd. '
      FocusControl = DBEdit_CodCidade
    end
    object Label2: TLabel
      Left = 58
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit_NomeCidade
    end
    object Label5: TLabel
      Left = 278
      Top = 5
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBLookupCB_UF
    end
    object DBEdit_CodCidade: TDBEdit
      Left = 7
      Top = 21
      Width = 45
      Height = 21
      DataField = 'id_cidade'
      DataSource = DS_Cidades
      TabOrder = 0
    end
    object DBEdit_NomeCidade: TDBEdit
      Left = 58
      Top = 21
      Width = 214
      Height = 21
      DataField = 'nome_cidade'
      DataSource = DS_Cidades
      TabOrder = 1
    end
    object DBLookupCB_UF: TDBLookupComboBox
      Left = 278
      Top = 21
      Width = 62
      Height = 21
      DataField = 'nome_estado'
      DataSource = DS_Cidades
      TabOrder = 2
    end
  end
  inherited Panel_Central: TPanel
    Top = 57
    Width = 382
    Height = 362
    ExplicitLeft = 0
    ExplicitTop = 57
    ExplicitWidth = 382
    ExplicitHeight = 362
    inherited DBGrid_Tabela: TDBGrid
      Width = 380
      Height = 360
      DataSource = DS_Cidades
      Columns = <
        item
          Expanded = False
          FieldName = 'id_cidade'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_cidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo_ibge'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'id_estado'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_estado'
          Width = 40
          Visible = True
        end>
    end
  end
  inherited Panel_Inferior: TPanel
    Width = 382
    ExplicitWidth = 382
    inherited BTN_Novo: TButton
      OnClick = BTN_NovoClick
    end
    inherited BTN_Salvar: TButton
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
  object DS_Cidades: TDataSource
    DataSet = dmDados.Cidades
    Left = 304
    Top = 224
  end
end
