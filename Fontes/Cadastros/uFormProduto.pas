unit uFormProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TFormProduto = class(TForm)
    Panel_Superior: TPanel;
    Panel_Centro: TPanel;
    Panel_Inferior: TPanel;
    LBL_CodProduto: TLabel;
    DBEDT_CodProduto: TDBEdit;
    DS_Produtos: TDataSource;
    LBL_CodBarras: TLabel;
    DBEDT_CodBarras: TDBEdit;
    LBL_Referencia: TLabel;
    DBEDT_Referencia: TDBEdit;
    LBL_Nome: TLabel;
    DBEDT_NomeProduto: TDBEdit;
    LBL_NomeReduzido: TLabel;
    DBEDT_NomeProdutoReduzido: TDBEdit;
    LBL_Unidade: TLabel;
    DBEDT_Unidade: TDBEdit;
    LBL_CodMarca: TLabel;
    DBEDT_CodMarca: TDBEdit;
    LBL_CodFabricante: TLabel;
    DBEDT_CodFabricante: TDBEdit;
    LBL_Marca: TLabel;
    DBLookupCB_NomeMarca: TDBLookupComboBox;
    LBL_Fabricante: TLabel;
    DBLookupCB_NomeFabricante: TDBLookupComboBox;
    PageControl_DadosProduto: TPageControl;
    EstruturaMercadologica: TTabSheet;
    LBL_CodSetor: TLabel;
    DBEDT_CodSetor: TDBEdit;
    LBL_CodGrupo: TLabel;
    DBEDT_CodGrupo: TDBEdit;
    LBL_CodSubGrupo: TLabel;
    DBEDT_SubGrupo: TDBEdit;
    LBL_NomeSetor: TLabel;
    DBLookupCB_NomeSetor: TDBLookupComboBox;
    LBL_NomeGrupo: TLabel;
    DBLookupCB_NomeGrupo: TDBLookupComboBox;
    LBL_NomeSubGrupo: TLabel;
    DBLookupCB_NomeSubGrupo: TDBLookupComboBox;
    Precos: TTabSheet;
    LBL_ValorCusto: TLabel;
    DBEDT_ValorCusto: TDBEdit;
    LBL_ValorVenda: TLabel;
    DBEDT_ValorVenda: TDBEdit;
    LBL_MargemLucro: TLabel;
    DBEDT_MargemLucro: TDBEdit;
    LBL_DtCadastro: TLabel;
    DBEDT_DtCadastro: TDBEdit;
    LBL_DtAlteracao: TLabel;
    DBEDT_DtAlteracao: TDBEdit;
    Panel_Menu: TPanel;
    BTN_Novo: TButton;
    BTN_Salvar: TButton;
    BTN_Excluir: TButton;
    BTN_Cancelar: TButton;
    BTN_Editar: TButton;
    BTN_Primeiro: TButton;
    BTN_Ultimo: TButton;
    BTN_Proximo: TButton;
    BTN_Anterior: TButton;
    MenuProdutos: TMainMenu;
    ESTE1: TMenuItem;
    LBL_Mensagem: TLabel;
    Button1: TButton;
    procedure BTN_NovoClick(Sender: TObject);
    procedure BTN_EditarClick(Sender: TObject);
    procedure BTN_SalvarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_CancelarClick(Sender: TObject);
    procedure BTN_PrimeiroClick(Sender: TObject);
    procedure BTN_AnteriorClick(Sender: TObject);
    procedure BTN_ProximoClick(Sender: TObject);
    procedure BTN_UltimoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
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
  FormProduto: TFormProduto;

implementation

{$R *.dfm}

uses uFormPesquisaGrupoProduto;

{ TFormProduto }

procedure TFormProduto.BTN_AnteriorClick(Sender: TObject);
begin
  DS_Produtos.DataSet.Prior
end;

procedure TFormProduto.BTN_CancelarClick(Sender: TObject);
begin
  Cancelar;
end;

procedure TFormProduto.BTN_EditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TFormProduto.BTN_ExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TFormProduto.BTN_NovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TFormProduto.BTN_PrimeiroClick(Sender: TObject);
begin
  DS_Produtos.DataSet.First;
end;

procedure TFormProduto.BTN_ProximoClick(Sender: TObject);
begin
  DS_Produtos.DataSet.Next;
end;

procedure TFormProduto.BTN_SalvarClick(Sender: TObject);
begin
  Salvar;
end;

procedure TFormProduto.BTN_UltimoClick(Sender: TObject);
begin
  DS_Produtos.DataSet.Last;
end;

procedure TFormProduto.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPesquisaGrupoProduto,FormPesquisaGrupoProduto);
  FormPesquisaGrupoProduto.ShowModal

end;

procedure TFormProduto.Cancelar;
begin
  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Produtos.DataSet.Cancel;
  Except
    on e:Exception do
      ShowMessage('Erro ao cancelar as alterações!');
  end;
end;

procedure TFormProduto.Editar;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := True;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  //Exibe o nome do produto em edição
  FormProduto.Caption := FormProduto.Caption +' - '+ DBEDT_NomeProduto.Text;

  LBL_Mensagem.Caption := 'Editando registro';

  DBEDT_Referencia.SetFocus;

  try
    DS_Produtos.DataSet.Edit;
  except
    on e:Exception do
      ShowMessage('Erro ao editar o registro!');
  end;
end;

procedure TFormProduto.Excluir;
begin
  ShowMessage('O registro será excluído permanentemente!');

  BTN_Novo.Enabled     := True;
  BTN_Editar.Enabled   := True;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := False;
  BTN_Cancelar.Enabled := False;

  try
    DS_Produtos.DataSet.Delete;
  except
    on e:Exception do
      ShowMessage('Erro ao excluir o registro!');
  end;
end;

procedure TFormProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormProduto.Novo;
begin
  BTN_Novo.Enabled     := False;
  BTN_Editar.Enabled   := False;
  BTN_Excluir.Enabled  := False;
  BTN_Salvar.Enabled   := True;
  BTN_Cancelar.Enabled := True;

  try
    DS_Produtos.DataSet.Append;
  except
    on e:Exception do
      ShowMessage('Erro');
  end;

  DBEDT_CodBarras.SetFocus;
end;

procedure TFormProduto.Salvar;
begin

  if DBEDT_CodBarras.Text = '' then
    begin
      ShowMessage('Informe o código de barras do produto! Este campo não pode ficar em branco!');
      DBEDT_CodBarras.SetFocus;
      Exit;
    end;

  if DBEDT_Referencia.Text = '' then
    begin
      ShowMessage('Digite uma descrição para este produto!');
      DBEDT_Referencia.SetFocus;
      Exit;
    end;

  if DBEDT_NomeProduto.Text = '' then
    begin
      ShowMessage('Digite o nome completo do produto!');
      DBEDT_NomeProduto.SetFocus;
      Exit;
    end;

  if DBEDT_NomeProdutoReduzido.Text = '' then
    begin
      ShowMessage('Digite um nome reduzido para este produto!');
      DBEDT_NomeProdutoReduzido.SetFocus;
      Exit;
    end;

  if DBEDT_Unidade.Text = '' then
    begin
      ShowMessage('Informe a unidade do produto!');
      DBEDT_Unidade.SetFocus;
      Exit;
    end;

  if DBEDT_ValorCusto.Text = '' then
    begin
      ShowMessage('Digite o valor de custo do produto!');
      DBEDT_ValorCusto.SetFocus;
      Exit;
    end;

  if DBEDT_ValorVenda.Text = '' then
    begin
      ShowMessage('Digite o valor de venda!');
      DBEDT_ValorVenda.SetFocus;
      Exit;
    end;

  {if DBLookupCB_NomeMarca.Text = '' then
    begin
      ShowMessage('Selecione uma marca para o produto!');
      DBLookupCB_NomeMarca.SetFocus;
      Exit;
    end;  }

  {if DBLookupCB_NomeFabricante.Text = '' then
    begin
      ShowMessage('Selecione um fabicante para o produto!');
      DBLookupCB_NomeFabricante.SetFocus;
      Exit;
    end;   }

  if DBLookupCB_NomeSetor.Text = '' then
    begin
      ShowMessage('Selecione um setor!');
      DBLookupCB_NomeSetor.SetFocus;
      Exit;
    end;

  if DBLookupCB_NomeGrupo.Text = '' then
    begin
      ShowMessage('Selecione um grupo!');
      DBLookupCB_NomeGrupo.SetFocus;
      Exit;
    end;

  if DBLookupCB_NomeSubGrupo.Text = '' then
    begin
      ShowMessage('Selecione um SubGrupo!');
      DBLookupCB_NomeSubGrupo.SetFocus;
      Exit;
    end;

  if MessageBox(handle,'Confirmar as alterações?','Estoque',MB_YESNO or MB_ICONQUESTION)=ID_YES then
  //if MessageDlg('Você confirma as alterações?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      //Grava a data atual do cadastro do produto
      if DBEDT_DtCadastro.Text = '' then
        DBEDT_DtCadastro.Text := DateToStr(Date);

      //Grava data atual da alteração no registro se não tiver
      if DBEDT_DtAlteracao.Text = '' then
        DBEDT_DtAlteracao.Text := DateToStr(Date)
      else
          begin
            //Caso tenha data, limpa e grava a data atual
             DBEDT_DtAlteracao.Clear;
             DBEDT_DtAlteracao.Text := DateToStr(Date);
          end;

      try
        DS_Produtos.DataSet.Post;
      except
        on e:Exception do
          ShowMessage('Erro ao salvar o registro!');
      end;

      BTN_Novo.Enabled     := True;
      BTN_Editar.Enabled   := True;
      BTN_Excluir.Enabled  := False;
      BTN_Salvar.Enabled   := False;
      BTN_Cancelar.Enabled := False;
    end
  else
      DS_Produtos.DataSet.Cancel;

end;

end.
