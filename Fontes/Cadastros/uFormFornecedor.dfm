object FormFornecedor: TFormFornecedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fornecedor'
  ClientHeight = 431
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuFornecedor
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Superior: TPanel
    Left = 0
    Top = 35
    Width = 607
    Height = 56
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 605
    object Label1: TLabel
      Left = 5
      Top = 7
      Width = 26
      Height = 13
      Caption = 'C'#243'd. '
      FocusControl = DBEdit_CodFornecedor
    end
    object Label2: TLabel
      Left = 87
      Top = 7
      Width = 60
      Height = 13
      Caption = 'Raz'#227'o Social'
      FocusControl = DBEdit_NomeFornecedor
    end
    object Label3: TLabel
      Left = 407
      Top = 7
      Width = 48
      Height = 13
      Caption = 'CNPJ/CPF'
      FocusControl = DBEdit_CNPJ_CPF
    end
    object DBEdit_CodFornecedor: TDBEdit
      Left = 5
      Top = 23
      Width = 76
      Height = 21
      DataField = 'id_fornecedor'
      DataSource = DS_Fornecedor
      TabOrder = 0
    end
    object DBEdit_NomeFornecedor: TDBEdit
      Left = 87
      Top = 23
      Width = 314
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome_fornecedor'
      DataSource = DS_Fornecedor
      TabOrder = 1
    end
    object DBEdit_CNPJ_CPF: TDBEdit
      Left = 407
      Top = 23
      Width = 170
      Height = 21
      DataField = 'for_cpf_cnpj'
      DataSource = DS_Fornecedor
      TabOrder = 2
    end
  end
  object Panel_Central: TPanel
    Left = 0
    Top = 91
    Width = 607
    Height = 285
    Align = alClient
    TabOrder = 1
    ExplicitTop = 85
    ExplicitWidth = 753
    ExplicitHeight = 358
    object PageControl_DadosFornecedor: TPageControl
      Left = 1
      Top = 1
      Width = 605
      Height = 283
      ActivePage = Tab_Cadastro
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 87
      ExplicitTop = 60
      ExplicitWidth = 289
      ExplicitHeight = 193
      object Tab_Cadastro: TTabSheet
        AlignWithMargins = True
        Caption = 'Dados'
        ExplicitLeft = -96
        ExplicitTop = -37
        ExplicitWidth = 281
        ExplicitHeight = 165
        object Label4: TLabel
          Left = 6
          Top = 8
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          FocusControl = DBEdit_NomeFantasia
        end
        object Label5: TLabel
          Left = 240
          Top = 8
          Width = 59
          Height = 13
          Caption = 'Ins. Est./RG'
          FocusControl = DBEdit_IE_RG
        end
        object Label6: TLabel
          Left = 368
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit_Telefone
        end
        object Label7: TLabel
          Left = 474
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit_Celular
        end
        object Label8: TLabel
          Left = 6
          Top = 52
          Width = 24
          Height = 13
          Caption = 'Email'
          FocusControl = DBEdit_Email
        end
        object Label9: TLabel
          Left = 216
          Top = 52
          Width = 18
          Height = 13
          Caption = 'Site'
          FocusControl = DBEdit_Site
        end
        object Label10: TLabel
          Left = 384
          Top = 52
          Width = 62
          Height = 13
          Caption = 'Dt. Cadastro'
          FocusControl = DBEdit_DtCadastro
        end
        object Label11: TLabel
          Left = 490
          Top = 52
          Width = 25
          Height = 13
          Caption = 'Ativo'
          FocusControl = DBEdit_Ativo
        end
        object Label12: TLabel
          Left = 6
          Top = 98
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit_Endereco
        end
        object Label13: TLabel
          Left = 368
          Top = 97
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit_Bairro
        end
        object Label14: TLabel
          Left = 8
          Top = 140
          Width = 19
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit_CEP
        end
        object Label15: TLabel
          Left = 114
          Top = 140
          Width = 59
          Height = 13
          Caption = 'C'#243'd. Cidade'
          FocusControl = DBEdit_CodCidade
        end
        object Label16: TLabel
          Left = 368
          Top = 140
          Width = 59
          Height = 13
          Caption = 'C'#243'd. Estado'
          FocusControl = DBEdit_CodEstado
        end
        object Label17: TLabel
          Left = 6
          Top = 184
          Width = 89
          Height = 13
          Caption = 'Contato/Vendedor'
          FocusControl = DBEdit_NomeContato
        end
        object Label18: TLabel
          Left = 253
          Top = 184
          Width = 134
          Height = 13
          Caption = 'Telefone Contato/Vendedor'
          FocusControl = DBEdit_TelefoneContato
        end
        object DBEdit_NomeFantasia: TDBEdit
          Left = 6
          Top = 24
          Width = 228
          Height = 21
          CharCase = ecUpperCase
          DataField = 'for_nome_usual'
          DataSource = DS_Fornecedor
          TabOrder = 0
        end
        object DBEdit_IE_RG: TDBEdit
          Left = 240
          Top = 24
          Width = 122
          Height = 21
          DataField = 'for_rg_ie'
          DataSource = DS_Fornecedor
          TabOrder = 1
        end
        object DBEdit_Telefone: TDBEdit
          Left = 368
          Top = 24
          Width = 100
          Height = 21
          DataField = 'for_telefone'
          DataSource = DS_Fornecedor
          TabOrder = 2
        end
        object DBEdit_Celular: TDBEdit
          Left = 474
          Top = 24
          Width = 104
          Height = 21
          DataField = 'for_celular'
          DataSource = DS_Fornecedor
          TabOrder = 3
        end
        object DBEdit_Email: TDBEdit
          Left = 6
          Top = 68
          Width = 204
          Height = 21
          DataField = 'for_email'
          DataSource = DS_Fornecedor
          TabOrder = 4
        end
        object DBEdit_Site: TDBEdit
          Left = 216
          Top = 68
          Width = 162
          Height = 21
          DataField = 'for_site'
          DataSource = DS_Fornecedor
          TabOrder = 5
        end
        object DBEdit_DtCadastro: TDBEdit
          Left = 384
          Top = 68
          Width = 100
          Height = 21
          DataField = 'for_dt_cadastro'
          DataSource = DS_Fornecedor
          TabOrder = 6
        end
        object DBEdit_Ativo: TDBEdit
          Left = 490
          Top = 68
          Width = 88
          Height = 21
          DataField = 'for_ativo'
          DataSource = DS_Fornecedor
          TabOrder = 7
        end
        object DBEdit_Endereco: TDBEdit
          Left = 6
          Top = 113
          Width = 356
          Height = 21
          CharCase = ecUpperCase
          DataField = 'for_endereco'
          DataSource = DS_Fornecedor
          TabOrder = 8
        end
        object DBEdit_Bairro: TDBEdit
          Left = 368
          Top = 113
          Width = 210
          Height = 21
          CharCase = ecUpperCase
          DataField = 'for_bairro'
          DataSource = DS_Fornecedor
          TabOrder = 9
        end
        object DBEdit_CEP: TDBEdit
          Left = 8
          Top = 156
          Width = 100
          Height = 21
          DataField = 'for_cep'
          DataSource = DS_Fornecedor
          TabOrder = 10
        end
        object DBEdit_CodCidade: TDBEdit
          Left = 114
          Top = 156
          Width = 59
          Height = 21
          DataField = 'id_cidade'
          DataSource = DS_Fornecedor
          TabOrder = 11
        end
        object DBEdit_CodEstado: TDBEdit
          Left = 368
          Top = 156
          Width = 59
          Height = 21
          DataField = 'id_estado'
          DataSource = DS_Fornecedor
          TabOrder = 12
        end
        object DBEdit_NomeContato: TDBEdit
          Left = 6
          Top = 200
          Width = 236
          Height = 21
          CharCase = ecUpperCase
          DataField = 'for_contato'
          DataSource = DS_Fornecedor
          TabOrder = 13
        end
        object DBEdit_TelefoneContato: TDBEdit
          Left = 253
          Top = 200
          Width = 134
          Height = 21
          DataField = 'for_cotato_telefone'
          DataSource = DS_Fornecedor
          TabOrder = 14
        end
        object DBLookupCB_NomeCidade: TDBLookupComboBox
          Left = 179
          Top = 156
          Width = 183
          Height = 21
          DataField = 'nome_cidade'
          DataSource = DS_Fornecedor
          TabOrder = 15
        end
        object DBLookupCB_UF: TDBLookupComboBox
          Left = 433
          Top = 156
          Width = 40
          Height = 21
          DataField = 'nome_estado'
          DataSource = DS_Fornecedor
          TabOrder = 16
        end
      end
    end
  end
  object Panel_Inferior: TPanel
    Left = 0
    Top = 376
    Width = 607
    Height = 55
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 397
    ExplicitWidth = 590
  end
  object Panel_Menus: TPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 35
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 605
    object BTN_Primeiro: TButton
      Left = 5
      Top = 4
      Width = 39
      Height = 25
      Caption = '<<'
      TabOrder = 0
      OnClick = BTN_PrimeiroClick
    end
    object BTN_Anterior: TButton
      Left = 45
      Top = 4
      Width = 39
      Height = 25
      Caption = '<'
      TabOrder = 1
      OnClick = BTN_AnteriorClick
    end
    object BTN_Proximo: TButton
      Left = 85
      Top = 4
      Width = 39
      Height = 25
      Caption = '>'
      TabOrder = 2
      OnClick = BTN_ProximoClick
    end
    object BTN_Ultimo: TButton
      Left = 125
      Top = 4
      Width = 39
      Height = 25
      Caption = '>>'
      TabOrder = 3
      OnClick = BTN_UltimoClick
    end
    object BTN_Novo: TButton
      Left = 172
      Top = 4
      Width = 60
      Height = 25
      Caption = 'Novo'
      Default = True
      TabOrder = 4
      OnClick = BTN_NovoClick
    end
    object BTN_Editar: TButton
      Left = 234
      Top = 4
      Width = 60
      Height = 25
      Caption = 'Editar'
      TabOrder = 5
      OnClick = BTN_EditarClick
    end
    object BTN_Salvar: TButton
      Left = 296
      Top = 4
      Width = 60
      Height = 25
      Caption = 'Salvar'
      Default = True
      TabOrder = 6
      OnClick = BTN_SalvarClick
    end
    object BTN_Excluir: TButton
      Left = 359
      Top = 4
      Width = 60
      Height = 25
      Caption = 'Excluir'
      TabOrder = 7
      OnClick = BTN_ExcluirClick
    end
    object BTN_Cancelar: TButton
      Left = 421
      Top = 4
      Width = 60
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 8
      OnClick = BTN_CancelarClick
    end
  end
  object DS_Fornecedor: TDataSource
    DataSet = dmDados.Fornecedores
    Left = 336
    Top = 40
  end
  object MenuFornecedor: TMainMenu
    Left = 528
    Top = 8
    object Registro1: TMenuItem
      Caption = 'Registro'
    end
  end
end
