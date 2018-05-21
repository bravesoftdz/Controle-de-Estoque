unit uFormFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls;

type
  TFormFornecedor = class(TForm)
    Panel_Superior: TPanel;
    Panel_Central: TPanel;
    Panel_Inferior: TPanel;
    Label1: TLabel;
    DBEdit_CodFornecedor: TDBEdit;
    DS_Fornecedor: TDataSource;
    Label2: TLabel;
    DBEdit_NomeFornecedor: TDBEdit;
    Label3: TLabel;
    DBEdit_CNPJ_CPF: TDBEdit;
    Panel_Menus: TPanel;
    MenuFornecedor: TMainMenu;
    Registro1: TMenuItem;
    BTN_Primeiro: TButton;
    BTN_Anterior: TButton;
    BTN_Proximo: TButton;
    BTN_Ultimo: TButton;
    BTN_Novo: TButton;
    BTN_Editar: TButton;
    BTN_Salvar: TButton;
    BTN_Excluir: TButton;
    BTN_Cancelar: TButton;
    PageControl_DadosFornecedor: TPageControl;
    Tab_Cadastro: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit_NomeFantasia: TDBEdit;
    DBEdit_IE_RG: TDBEdit;
    DBEdit_Telefone: TDBEdit;
    DBEdit_Celular: TDBEdit;
    DBEdit_Email: TDBEdit;
    DBEdit_Site: TDBEdit;
    DBEdit_DtCadastro: TDBEdit;
    DBEdit_Ativo: TDBEdit;
    DBEdit_Endereco: TDBEdit;
    DBEdit_Bairro: TDBEdit;
    DBEdit_CEP: TDBEdit;
    DBEdit_CodCidade: TDBEdit;
    DBEdit_CodEstado: TDBEdit;
    DBEdit_NomeContato: TDBEdit;
    DBEdit_TelefoneContato: TDBEdit;
    DBLookupCB_NomeCidade: TDBLookupComboBox;
    DBLookupCB_UF: TDBLookupComboBox;
    procedure BTN_NovoClick(Sender: TObject);
    procedure BTN_EditarClick(Sender: TObject);
    procedure BTN_SalvarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_CancelarClick(Sender: TObject);
    procedure BTN_PrimeiroClick(Sender: TObject);
    procedure BTN_AnteriorClick(Sender: TObject);
    procedure BTN_ProximoClick(Sender: TObject);
    procedure BTN_UltimoClick(Sender: TObject);
  private
    { Private declarations }
    procedure Novo;
    procedure Editar;
    procedure Cancelar;
    procedure Excluir;
    procedure Salvar;
  public
    { Public declarations }
  end;

var
  FormFornecedor: TFormFornecedor;

implementation

{$R *.dfm}

{ TFormFornecedor }

procedure TFormFornecedor.BTN_AnteriorClick(Sender: TObject);
begin
  DS_Fornecedor.DataSet.Prior;
end;

procedure TFormFornecedor.BTN_CancelarClick(Sender: TObject);
begin
  Cancelar;
end;

procedure TFormFornecedor.BTN_EditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TFormFornecedor.BTN_ExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TFormFornecedor.BTN_NovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TFormFornecedor.BTN_PrimeiroClick(Sender: TObject);
begin
  DS_Fornecedor.DataSet.First;
end;

procedure TFormFornecedor.BTN_ProximoClick(Sender: TObject);
begin
  DS_Fornecedor.DataSet.Next;
end;

procedure TFormFornecedor.BTN_SalvarClick(Sender: TObject);
begin
  Salvar;
end;

procedure TFormFornecedor.BTN_UltimoClick(Sender: TObject);
begin
  DS_Fornecedor.DataSet.Last;
end;

procedure TFormFornecedor.Cancelar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Fornecedor.DataSet.Cancel;
  Except
    on e:Exception do
      ShowMessage('Erro ao cancelar!');
  end;
end;

procedure TFormFornecedor.Editar;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := True;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  DBEdit_NomeFornecedor.SetFocus;

  try
    DS_Fornecedor.DataSet.Edit;
  except
    on e:Exception do
      ShowMessage('Erro ao editar o registro!');
  end;
end;

procedure TFormFornecedor.Excluir;
begin
  ShowMessage('O registro ser� exclu�do permanentemente!');

  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Fornecedor.DataSet.Delete;
  except
    on e:Exception do
      ShowMessage('Erro ao excluir o registro!');
  end;
end;

procedure TFormFornecedor.Novo;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  try
    DS_Fornecedor.DataSet.Append;
  except
    on e:Exception do
      ShowMessage('Erro');
  end;

  DBEdit_NomeFornecedor.SetFocus;
end;

procedure TFormFornecedor.Salvar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Fornecedor.DataSet.Post;
  except
    on e:Exception do
      ShowMessage('Erro ao salvar o registro!');
  end;
end;

end.
