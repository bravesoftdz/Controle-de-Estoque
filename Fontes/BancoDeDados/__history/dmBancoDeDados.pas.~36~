unit dmBancoDeDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmDados = class(TDataModule)
    Con_Dados: TADOConnection;
    Estados: TADOTable;
    Estadosid_estado: TAutoIncField;
    Estadosnome_estado: TWideStringField;
    Estadossigla_uf: TWideStringField;
    Estadoscodigo_ibge_uf: TWideStringField;
    Estadosnome_pais: TWideStringField;
    Cidades: TADOTable;
    Cidadesid_cidade: TAutoIncField;
    Cidadesnome_cidade: TWideStringField;
    Cidadescodigo_ibge: TWideStringField;
    Cidadesid_estado: TWideStringField;
    Cidadesnome_estado: TStringField;
    Fabricantes: TADOTable;
    Marcas: TADOTable;
    Setores: TADOTable;
    Fabricantesid_fabricante: TAutoIncField;
    Fabricantesnome_fabricante: TWideStringField;
    Fabricantesdt_cadastro: TWideStringField;
    Marcasid_marca: TAutoIncField;
    Marcasnome_marca: TWideStringField;
    Marcasdt_cadastro: TWideStringField;
    Setoresid_setor: TAutoIncField;
    Setoresnome_setor: TWideStringField;
    Setoresdt_cadastro: TWideStringField;
    Setoressetor_ativo: TWideStringField;
    GrupoDeProdutos: TADOTable;
    GrupoDeProdutosid_grupo_produto: TAutoIncField;
    GrupoDeProdutosnome_grupo: TWideStringField;
    GrupoDeProdutosdt_cadastro: TWideStringField;
    SubGruposProdutos: TADOTable;
    SubGruposProdutosid_subgrupo_produtos: TAutoIncField;
    SubGruposProdutosnome_subgrupo: TWideStringField;
    SubGruposProdutosdt_cadastro: TWideStringField;
    Fornecedores: TADOTable;
    Fornecedoresid_fornecedor: TAutoIncField;
    Fornecedoresnome_fornecedor: TWideStringField;
    Fornecedoresfor_nome_usual: TWideStringField;
    Fornecedoresfor_cpf_cnpj: TWideStringField;
    Fornecedoresfor_rg_ie: TWideStringField;
    Fornecedoresfor_telefone: TWideStringField;
    Fornecedoresfor_celular: TWideStringField;
    Fornecedoresfor_email: TWideStringField;
    Fornecedoresfor_site: TWideStringField;
    Fornecedoresfor_dt_cadastro: TWideStringField;
    Fornecedoresfor_ativo: TWideStringField;
    Fornecedoresfor_endereco: TWideStringField;
    Fornecedoresfor_bairro: TWideStringField;
    Fornecedoresfor_cep: TWideStringField;
    Fornecedoresid_cidade: TWideStringField;
    Fornecedoresid_estado: TWideStringField;
    Fornecedoresfor_contato: TWideStringField;
    Fornecedoresfor_cotato_telefone: TWideStringField;
    Fornecedoresnome_cidade: TStringField;
    Fornecedoresnome_estado: TStringField;
    Transportadoras: TADOTable;
    Transportadorasid_transportadora: TAutoIncField;
    Transportadorastransp_nome: TWideStringField;
    Transportadorastransp_nome_usual: TWideStringField;
    Transportadorastransp_cnpj_cpf: TWideStringField;
    Transportadorastransp_ie_rg: TWideStringField;
    Transportadorastransp_telefone: TWideStringField;
    Transportadorastransp_celular: TWideStringField;
    Transportadorastransp_email: TWideStringField;
    Transportadorastransp_site: TWideStringField;
    Transportadorastransp_dt_cadastro: TWideStringField;
    Transportadorastransp_ativo: TWideStringField;
    Transportadorastransp_endereco: TWideStringField;
    Transportadorastransp_bairro: TWideStringField;
    Transportadorastransp_cep: TWideStringField;
    Transportadorasid_cidade: TWideStringField;
    Transportadorasid_estado: TWideStringField;
    Transportadorastransp_contato: TWideStringField;
    Transportadorastransp_cotato_telefone: TWideStringField;
    Transportadorasnome_cidade: TStringField;
    Transportadorasnome_estado: TStringField;
    Vasilhames: TADOTable;
    Vasilhamesid_vasilhame: TAutoIncField;
    Vasilhamescod_vasilhame: TWideStringField;
    Vasilhamesvasilhame_descricao: TWideStringField;
    SaldoEstoque: TADOTable;
    SaldoEstoqueid_saldo_estoque: TAutoIncField;
    SaldoEstoqueid_produto: TWideStringField;
    SaldoEstoqueqtde_minima: TWideStringField;
    SaldoEstoqueqtde_estocado: TWideStringField;
    SaldoEstoqueqtde_area_venda: TWideStringField;
    SaldoEstoqueqtde_troca: TWideStringField;
    Produtos: TADOTable;
    Produtosid_produto: TAutoIncField;
    Produtoscod_barras: TWideStringField;
    Produtospro_referencia: TWideStringField;
    Produtospro_nome: TWideStringField;
    Produtospro_nome_reduzido: TWideStringField;
    Produtospro_unidade: TWideStringField;
    Produtosid_marca: TWideStringField;
    Produtosid_fabricante: TWideStringField;
    Produtosid_setor: TWideStringField;
    Produtosid_grupoproduto: TWideStringField;
    Produtosid_subgrupo_produto: TWideStringField;
    Produtospro_valor_custo: TWideStringField;
    Produtospro_valor_venda: TWideStringField;
    Produtospro_margem_lucro: TWideStringField;
    Produtospro_dt_cadastro: TWideStringField;
    Produtospro_dt_alteracao: TWideStringField;
    Produtospro_ativo: TWideStringField;
    SaldoEstoquenome_produto: TStringField;
    Produtosnome_marca: TStringField;
    Produtosnome_fabricante: TStringField;
    Produtosnome_setor: TStringField;
    Produtosnome_grupo: TStringField;
    Produtosnome_subgrupo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
