unit uFormpesquisaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TFormPesquisaProduto = class(TForm)
    EDT_Localizar: TEdit;
    DBGrid_TabPesquisaProduto: TDBGrid;
    DS_PesquisaProduto: TDataSource;
    DataSet_Produtos: TADODataSet;
    procedure EDT_LocalizarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaProduto: TFormPesquisaProduto;

implementation

{$R *.dfm}

uses dmBancoDeDados, uFormCadPadrao, uFuncoes;

procedure TFormPesquisaProduto.EDT_LocalizarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  DataSet_Produtos.Parameters[0].Value := EDT_Localizar.Text;
  DataSet_Produtos.Requery();
end;

end.
