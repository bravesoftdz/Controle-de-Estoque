object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'WN Estoque v1.0 - BETA'
  ClientHeight = 386
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    757
    386)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 365
    Width = 64
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = '2018 | Willian'
  end
  object Menu: TMainMenu
    Left = 696
    Top = 8
    object MenuArquivo: TMenuItem
      Caption = '&Arquivo'
    end
    object MenuCadastros: TMenuItem
      Caption = '&Cadastros'
      object SubMenu_EstruturaMercadolgica: TMenuItem
        Caption = 'Estrutura Mercadol'#243'gica'
        object SubMenu_Setores: TMenuItem
          Caption = 'Setores'
          OnClick = SubMenu_SetoresClick
        end
        object SubMenu_Grupos: TMenuItem
          Caption = 'Grupos'
          OnClick = SubMenu_GruposClick
        end
        object SubMenu_SubGrupos: TMenuItem
          Caption = 'SubGrupos'
          OnClick = SubMenu_SubGruposClick
        end
      end
      object SubMenu_Produtos: TMenuItem
        Caption = 'Produtos'
        object SubMenu_Marcas: TMenuItem
          Caption = 'Marcas'
          OnClick = SubMenu_MarcasClick
        end
        object SubMenu_Fabricantes: TMenuItem
          Caption = 'Fabricantes'
          OnClick = SubMenu_FabricantesClick
        end
        object SubMenu_Vasilhames: TMenuItem
          Caption = 'Vasilhames'
          OnClick = SubMenu_VasilhamesClick
        end
        object SubMenu_Produto: TMenuItem
          Caption = 'Produto'
          OnClick = SubMenu_ProdutoClick
        end
      end
      object SubMenu_Fornecedor: TMenuItem
        Caption = 'Fornecedor'
        OnClick = SubMenu_FornecedorClick
      end
      object SubMenu_Localizacao: TMenuItem
        Caption = 'Localiza'#231#227'o'
        object SubMenu_Cidades: TMenuItem
          Caption = 'Cidades'
          OnClick = SubMenu_CidadesClick
        end
        object SubMenu_Estados: TMenuItem
          Caption = 'Estados'
          OnClick = SubMenu_EstadosClick
        end
      end
    end
    object MenuEstoque: TMenuItem
      Caption = '&Estoque'
      object SubMenu_SaldoEstoque: TMenuItem
        Caption = 'Saldo Estoque'
      end
      object SubMenu_PesquisaProduto: TMenuItem
        Caption = 'Pesquisa Produto'
        OnClick = SubMenu_PesquisaProdutoClick
      end
    end
    object MenuFinanceiro: TMenuItem
      Caption = '&Financeiro'
    end
  end
end
