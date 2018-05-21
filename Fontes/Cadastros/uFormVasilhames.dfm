inherited FormVasilhames: TFormVasilhames
  Caption = 'FormVasilhames'
  ClientWidth = 435
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel_Superior: TPanel
    Width = 435
    Height = 65
    ExplicitWidth = 435
    ExplicitHeight = 65
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 23
      Height = 13
      Caption = 'C'#243'd.'
      FocusControl = DBEdit_CodCadVasilhame
    end
    object Label2: TLabel
      Left = 95
      Top = 8
      Width = 73
      Height = 13
      Caption = 'C'#243'd. Vasilhame'
      FocusControl = DBEdit_CodVasilhame
    end
    object Label3: TLabel
      Left = 183
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit_DescricaoVasilhame
    end
    object DBEdit_CodCadVasilhame: TDBEdit
      Left = 16
      Top = 24
      Width = 73
      Height = 21
      DataField = 'id_vasilhame'
      DataSource = DS_Vasilhames
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_CodVasilhame: TDBEdit
      Left = 95
      Top = 24
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      DataField = 'cod_vasilhame'
      DataSource = DS_Vasilhames
      TabOrder = 1
    end
    object DBEdit_DescricaoVasilhame: TDBEdit
      Left = 183
      Top = 24
      Width = 242
      Height = 21
      CharCase = ecUpperCase
      DataField = 'vasilhame_descricao'
      DataSource = DS_Vasilhames
      TabOrder = 2
    end
  end
  inherited Panel_Central: TPanel
    Top = 65
    Width = 435
    Height = 354
    ExplicitLeft = 0
    ExplicitTop = 65
    ExplicitWidth = 435
    ExplicitHeight = 354
    inherited DBGrid_Tabela: TDBGrid
      Width = 433
      Height = 352
      DataSource = DS_Vasilhames
      Columns = <
        item
          Expanded = False
          FieldName = 'id_vasilhame'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_vasilhame'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vasilhame_descricao'
          Width = 280
          Visible = True
        end>
    end
  end
  inherited Panel_Inferior: TPanel
    Width = 435
    ExplicitWidth = 435
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
  object DS_Vasilhames: TDataSource
    AutoEdit = False
    DataSet = dmDados.Vasilhames
    Left = 192
    Top = 248
  end
end
