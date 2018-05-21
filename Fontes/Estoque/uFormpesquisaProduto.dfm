object FormPesquisaProduto: TFormPesquisaProduto
  Left = 0
  Top = 0
  Caption = 'Pesquisa Produto'
  ClientHeight = 348
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EDT_Localizar: TEdit
    Left = 8
    Top = 8
    Width = 425
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyUp = EDT_LocalizarKeyUp
  end
  object DBGrid_TabPesquisaProduto: TDBGrid
    Left = 8
    Top = 39
    Width = 561
    Height = 297
    DataSource = DS_PesquisaProduto
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_produto'
        Title.Caption = 'C'#243'd. Produto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_barras'
        Title.Caption = 'C'#243'd. Barras'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_nome'
        Title.Caption = 'Produto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_unidade'
        Title.Caption = 'UN'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_valor_venda'
        Title.Caption = 'Pre'#231'o de Venda'
        Width = 90
        Visible = True
      end>
  end
  object DS_PesquisaProduto: TDataSource
    AutoEdit = False
    DataSet = DataSet_Produtos
    Left = 328
    Top = 112
  end
  object DataSet_Produtos: TADODataSet
    Active = True
    Connection = dmDados.Con_Dados
    CursorType = ctStatic
    CommandText = 
      'select * from Produtos Where pro_nome Like ? +'#39'%'#39' Order by pro_n' +
      'ome'
    Parameters = <
      item
        Name = '?'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 216
    Top = 112
  end
end
