inherited FormFabricantes: TFormFabricantes
  Caption = 'Fabricantes'
  ClientWidth = 392
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 398
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel_Superior: TPanel
    Width = 392
    Height = 65
    ExplicitWidth = 392
    ExplicitHeight = 65
    object Label1: TLabel
      Left = 10
      Top = 8
      Width = 26
      Height = 13
      Caption = 'C'#243'd. '
      FocusControl = DBEdit_CodFabricante
    end
    object Label2: TLabel
      Left = 76
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Fabricante'
      FocusControl = DBEdit_NomeFabricante
    end
    object Label3: TLabel
      Left = 298
      Top = 8
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro'
      FocusControl = DBEdit_DtCadFabricante
    end
    object DBEdit_CodFabricante: TDBEdit
      Left = 10
      Top = 24
      Width = 60
      Height = 21
      DataField = 'id_fabricante'
      DataSource = DS_Fabricantes
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_NomeFabricante: TDBEdit
      Left = 76
      Top = 24
      Width = 216
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome_fabricante'
      DataSource = DS_Fabricantes
      TabOrder = 1
    end
    object DBEdit_DtCadFabricante: TDBEdit
      Left = 298
      Top = 24
      Width = 71
      Height = 21
      DataField = 'dt_cadastro'
      DataSource = DS_Fabricantes
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited Panel_Central: TPanel
    Top = 65
    Width = 392
    Height = 354
    ExplicitLeft = 0
    ExplicitTop = 65
    ExplicitWidth = 392
    ExplicitHeight = 354
    inherited DBGrid_Tabela: TDBGrid
      Width = 390
      Height = 352
      DataSource = DS_Fabricantes
      Columns = <
        item
          Expanded = False
          FieldName = 'id_fabricante'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_fabricante'
          Width = 230
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
    Width = 392
    ExplicitWidth = 392
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
  object DS_Fabricantes: TDataSource
    AutoEdit = False
    DataSet = dmDados.Fabricantes
    Left = 144
    Top = 240
  end
end
