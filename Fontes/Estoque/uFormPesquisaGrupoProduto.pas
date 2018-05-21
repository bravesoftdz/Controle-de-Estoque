unit uFormPesquisaGrupoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormPesquisaGrupoProduto = class(TForm)
    DS_Grupos: TDataSource;
    DataSet_Grupos: TADODataSet;
    Panel_Superior: TPanel;
    Panel_Grid: TPanel;
    EDT_PesquisarGrupo: TEdit;
    DBGrid_TabGrupoProdutos: TDBGrid;
    procedure EDT_PesquisarGrupoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaGrupoProduto: TFormPesquisaGrupoProduto;

implementation

{$R *.dfm}

procedure TFormPesquisaGrupoProduto.EDT_PesquisarGrupoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  DataSet_Grupos.Parameters[0].Value := EDT_PesquisarGrupo.Text;
  DataSet_Grupos.Requery();
end;

end.
