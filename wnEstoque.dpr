program wnEstoque;

uses
  Vcl.Forms,
  uFormPrincipal in 'Fontes\Tela_Inicial\uFormPrincipal.pas' {FormPrincipal},
  dmBancoDeDados in 'Fontes\BancoDeDados\dmBancoDeDados.pas' {dmDados: TDataModule},
  uFormCadPadrao in 'Fontes\Formulario_Cadastro_Padrao\uFormCadPadrao.pas' {FormCadPadrao},
  uFormFabricantes in 'Fontes\Cadastros\uFormFabricantes.pas' {FormFabricantes},
  uFormCidades in 'Fontes\Cadastros\uFormCidades.pas' {FormCidades},
  uFormEstados in 'Fontes\Cadastros\uFormEstados.pas' {FormEstados},
  uFormMarcas in 'Fontes\Cadastros\uFormMarcas.pas' {FormMarcas},
  uFormSetores in 'Fontes\Cadastros\uFormSetores.pas' {FormSetores},
  uFormGrupoDeProdutos in 'Fontes\Cadastros\uFormGrupoDeProdutos.pas' {FormGrupoDeProdutos},
  uFormSubGruposDeProdutos in 'Fontes\Cadastros\uFormSubGruposDeProdutos.pas' {FormSubGruposDeProdutos},
  uFormFornecedor in 'Fontes\Cadastros\uFormFornecedor.pas' {FormFornecedor},
  uFormVasilhames in 'Fontes\Cadastros\uFormVasilhames.pas' {FormVasilhames},
  uFormSaldoEstoque in 'Fontes\Estoque\uFormSaldoEstoque.pas' {FormSaldoEstoque},
  uFormProduto in 'Fontes\Cadastros\uFormProduto.pas' {FormProduto},
  uFormpesquisaProduto in 'Fontes\Estoque\uFormpesquisaProduto.pas' {FormPesquisaProduto},
  uFuncoes in 'Fontes\Funcoes\uFuncoes.pas',
  uFormPesquisaGrupoProduto in 'Fontes\Estoque\uFormPesquisaGrupoProduto.pas' {FormPesquisaGrupoProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFormPesquisaGrupoProduto, FormPesquisaGrupoProduto);
  Application.Run;
end.
