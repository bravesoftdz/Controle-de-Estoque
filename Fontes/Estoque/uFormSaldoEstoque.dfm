object FormSaldoEstoque: TFormSaldoEstoque
  Left = 0
  Top = 0
  Caption = 'FormSaldoEstoque'
  ClientHeight = 400
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 144
    Width = 748
    Height = 233
    DataSource = DS_SaldoEstoque
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_saldo_estoque'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_produto'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde_minima'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde_estocado'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde_area_venda'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde_troca'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_produto'
        Width = 200
        Visible = True
      end>
  end
  object DS_SaldoEstoque: TDataSource
    DataSet = dmDados.SaldoEstoque
    Left = 224
    Top = 304
  end
end
