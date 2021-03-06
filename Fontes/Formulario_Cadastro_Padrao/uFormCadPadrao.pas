unit uFormCadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TFormCadPadrao = class(TForm)
    Panel_Superior: TPanel;
    Panel_Central: TPanel;
    Panel_Inferior: TPanel;
    DBGrid_Tabela: TDBGrid;
    BTN_Novo: TButton;
    BTN_Salvar: TButton;
    BTN_Excluir: TButton;
    BTN_Cancelar: TButton;
    BTN_Editar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadPadrao: TFormCadPadrao;

implementation

{$R *.dfm}

end.
