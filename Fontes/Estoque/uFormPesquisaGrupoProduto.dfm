object FormPesquisaGrupoProduto: TFormPesquisaGrupoProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Grupos'
  ClientHeight = 263
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Superior: TPanel
    Left = 0
    Top = 0
    Width = 496
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 296
    ExplicitTop = 16
    ExplicitWidth = 185
    object EDT_PesquisarGrupo: TEdit
      Left = 10
      Top = 11
      Width = 297
      Height = 21
      TabOrder = 0
      OnKeyUp = EDT_PesquisarGrupoKeyUp
    end
  end
  object Panel_Grid: TPanel
    Left = 0
    Top = 41
    Width = 496
    Height = 222
    Align = alClient
    Caption = 'Panel_Grid'
    TabOrder = 1
    ExplicitLeft = 448
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid_TabGrupoProdutos: TDBGrid
      Left = 1
      Top = 1
      Width = 494
      Height = 220
      Align = alClient
      DataSource = DS_Grupos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id_grupo_produto'
          Title.Caption = 'C'#243'd.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_grupo'
          Title.Caption = 'Grupo'
          Width = 250
          Visible = True
        end>
    end
  end
  object DS_Grupos: TDataSource
    DataSet = DataSet_Grupos
    Left = 144
    Top = 96
  end
  object DataSet_Grupos: TADODataSet
    Active = True
    Connection = dmDados.Con_Dados
    CursorType = ctStatic
    CommandText = 
      'select * from GrupoDeProdutos Where nome_grupo like ?+ '#39'%'#39' Order' +
      ' by nome_grupo'#13#10
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
    Left = 64
    Top = 96
  end
end
