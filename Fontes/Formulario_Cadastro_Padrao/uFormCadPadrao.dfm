object FormCadPadrao: TFormCadPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FormCadPadrao'
  ClientHeight = 452
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Superior: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 113
    Align = alTop
    TabOrder = 0
  end
  object Panel_Central: TPanel
    Left = 0
    Top = 113
    Width = 634
    Height = 306
    Align = alClient
    Caption = 'Panel_Central'
    TabOrder = 1
    ExplicitLeft = 216
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid_Tabela: TDBGrid
      Left = 1
      Top = 1
      Width = 632
      Height = 304
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel_Inferior: TPanel
    Left = 0
    Top = 419
    Width = 634
    Height = 33
    Align = alBottom
    TabOrder = 2
    object BTN_Novo: TButton
      Left = 3
      Top = 3
      Width = 60
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
    end
    object BTN_Salvar: TButton
      Left = 127
      Top = 3
      Width = 60
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
    end
    object BTN_Excluir: TButton
      Left = 190
      Top = 3
      Width = 60
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object BTN_Cancelar: TButton
      Left = 252
      Top = 3
      Width = 60
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
    end
    object BTN_Editar: TButton
      Left = 65
      Top = 3
      Width = 60
      Height = 25
      Caption = 'Editar'
      TabOrder = 4
    end
  end
end
