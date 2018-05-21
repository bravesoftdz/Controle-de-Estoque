object dmDados: TdmDados
  OldCreateOrder = False
  Height = 306
  Width = 782
  object Con_Dados: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.16.0;Data Source=C:\Users\MEUS DOCU' +
      'MENTOS\Documents\WN\Projetos\Controle_Estoque_03-03-2018\Dados\E' +
      'stoque.accdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.16.0'
    Left = 56
    Top = 16
  end
  object Estados: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Estados'
    Left = 40
    Top = 80
    object Estadosid_estado: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_estado'
      ReadOnly = True
    end
    object Estadosnome_estado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'nome_estado'
      Size = 255
    end
    object Estadossigla_uf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'sigla_uf'
      Size = 255
    end
    object Estadoscodigo_ibge_uf: TWideStringField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'codigo_ibge_uf'
      Size = 255
    end
    object Estadosnome_pais: TWideStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'nome_pais'
      Size = 255
    end
  end
  object Cidades: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Cidades'
    Left = 96
    Top = 80
    object Cidadesid_cidade: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_cidade'
      ReadOnly = True
    end
    object Cidadesnome_cidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'nome_cidade'
      Size = 255
    end
    object Cidadescodigo_ibge: TWideStringField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'codigo_ibge'
      Size = 255
    end
    object Cidadesid_estado: TWideStringField
      DisplayLabel = 'C'#243'd. Estado'
      FieldName = 'id_estado'
      Size = 255
    end
    object Cidadesnome_estado: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkLookup
      FieldName = 'nome_estado'
      LookupDataSet = Estados
      LookupKeyFields = 'id_estado'
      LookupResultField = 'sigla_uf'
      KeyFields = 'id_estado'
      Size = 50
      Lookup = True
    end
  end
  object Fabricantes: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Fabricantes'
    Left = 152
    Top = 80
    object Fabricantesid_fabricante: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_fabricante'
      ReadOnly = True
    end
    object Fabricantesnome_fabricante: TWideStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'nome_fabricante'
      Size = 255
    end
    object Fabricantesdt_cadastro: TWideStringField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dt_cadastro'
      Size = 255
    end
  end
  object Marcas: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Marcas'
    Left = 216
    Top = 80
    object Marcasid_marca: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_marca'
      ReadOnly = True
    end
    object Marcasnome_marca: TWideStringField
      DisplayLabel = 'Marca'
      FieldName = 'nome_marca'
      Size = 255
    end
    object Marcasdt_cadastro: TWideStringField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dt_cadastro'
      Size = 255
    end
  end
  object Setores: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Setores'
    Left = 272
    Top = 80
    object Setoresid_setor: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_setor'
      ReadOnly = True
    end
    object Setoresnome_setor: TWideStringField
      DisplayLabel = 'Setor'
      FieldName = 'nome_setor'
      Size = 255
    end
    object Setoresdt_cadastro: TWideStringField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dt_cadastro'
      Size = 255
    end
    object Setoressetor_ativo: TWideStringField
      DisplayLabel = 'Ativo'
      FieldName = 'setor_ativo'
      Size = 255
    end
  end
  object GrupoDeProdutos: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'GrupoDeProdutos'
    Left = 344
    Top = 80
    object GrupoDeProdutosid_grupo_produto: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_grupo_produto'
      ReadOnly = True
    end
    object GrupoDeProdutosnome_grupo: TWideStringField
      DisplayLabel = 'Grupo'
      FieldName = 'nome_grupo'
      Size = 255
    end
    object GrupoDeProdutosdt_cadastro: TWideStringField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dt_cadastro'
      Size = 255
    end
  end
  object SubGruposProdutos: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    Filtered = True
    TableName = 'SubGrupo_Produtos'
    Left = 440
    Top = 80
    object SubGruposProdutosid_subgrupo_produtos: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_subgrupo_produtos'
      ReadOnly = True
    end
    object SubGruposProdutosnome_subgrupo: TWideStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'nome_subgrupo'
      Size = 255
    end
    object SubGruposProdutosdt_cadastro: TWideStringField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dt_cadastro'
      Size = 255
    end
  end
  object Fornecedores: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Fornecedores'
    Left = 528
    Top = 80
    object Fornecedoresid_fornecedor: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_fornecedor'
      ReadOnly = True
    end
    object Fornecedoresnome_fornecedor: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'nome_fornecedor'
      Size = 255
    end
    object Fornecedoresfor_nome_usual: TWideStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'for_nome_usual'
      Size = 255
    end
    object Fornecedoresfor_cpf_cnpj: TWideStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'for_cpf_cnpj'
      Size = 255
    end
    object Fornecedoresfor_rg_ie: TWideStringField
      DisplayLabel = 'Ins. Est./RG'
      FieldName = 'for_rg_ie'
      Size = 255
    end
    object Fornecedoresfor_telefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'for_telefone'
      Size = 255
    end
    object Fornecedoresfor_celular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'for_celular'
      Size = 255
    end
    object Fornecedoresfor_email: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'for_email'
      Size = 255
    end
    object Fornecedoresfor_site: TWideStringField
      DisplayLabel = 'Site'
      FieldName = 'for_site'
      Size = 255
    end
    object Fornecedoresfor_dt_cadastro: TWideStringField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'for_dt_cadastro'
      Size = 255
    end
    object Fornecedoresfor_ativo: TWideStringField
      DisplayLabel = 'Ativo'
      FieldName = 'for_ativo'
      Size = 255
    end
    object Fornecedoresfor_endereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'for_endereco'
      Size = 255
    end
    object Fornecedoresfor_bairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'for_bairro'
      Size = 255
    end
    object Fornecedoresfor_cep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'for_cep'
      Size = 255
    end
    object Fornecedoresid_cidade: TWideStringField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'id_cidade'
      Size = 255
    end
    object Fornecedoresid_estado: TWideStringField
      DisplayLabel = 'C'#243'd. Estado'
      FieldName = 'id_estado'
      Size = 255
    end
    object Fornecedoresfor_contato: TWideStringField
      DisplayLabel = 'Contato/Vendedor'
      FieldName = 'for_contato'
      Size = 255
    end
    object Fornecedoresfor_cotato_telefone: TWideStringField
      DisplayLabel = 'Telefone Contato/Vendedor'
      FieldName = 'for_cotato_telefone'
      Size = 255
    end
    object Fornecedoresnome_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldKind = fkLookup
      FieldName = 'nome_cidade'
      LookupDataSet = Cidades
      LookupKeyFields = 'id_cidade'
      LookupResultField = 'nome_cidade'
      KeyFields = 'id_cidade'
      Size = 50
      Lookup = True
    end
    object Fornecedoresnome_estado: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkLookup
      FieldName = 'nome_estado'
      LookupDataSet = Estados
      LookupKeyFields = 'id_estado'
      LookupResultField = 'sigla_uf'
      KeyFields = 'id_estado'
      Size = 50
      Lookup = True
    end
  end
  object Transportadoras: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Transportadoras'
    Left = 40
    Top = 144
    object Transportadorasid_transportadora: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_transportadora'
      ReadOnly = True
    end
    object Transportadorastransp_nome: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'transp_nome'
      Size = 255
    end
    object Transportadorastransp_nome_usual: TWideStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'transp_nome_usual'
      Size = 255
    end
    object Transportadorastransp_cnpj_cpf: TWideStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'transp_cnpj_cpf'
      Size = 255
    end
    object Transportadorastransp_ie_rg: TWideStringField
      DisplayLabel = 'Insc. Est./RG'
      FieldName = 'transp_ie_rg'
      Size = 255
    end
    object Transportadorastransp_telefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'transp_telefone'
      Size = 255
    end
    object Transportadorastransp_celular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'transp_celular'
      Size = 255
    end
    object Transportadorastransp_email: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'transp_email'
      Size = 255
    end
    object Transportadorastransp_site: TWideStringField
      DisplayLabel = 'Site'
      FieldName = 'transp_site'
      Size = 255
    end
    object Transportadorastransp_dt_cadastro: TWideStringField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'transp_dt_cadastro'
      Size = 255
    end
    object Transportadorastransp_ativo: TWideStringField
      DisplayLabel = 'Ativo'
      FieldName = 'transp_ativo'
      Size = 255
    end
    object Transportadorastransp_endereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'transp_endereco'
      Size = 255
    end
    object Transportadorastransp_bairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'transp_bairro'
      Size = 255
    end
    object Transportadorastransp_cep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'transp_cep'
      Size = 255
    end
    object Transportadorasid_cidade: TWideStringField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'id_cidade'
      Size = 255
    end
    object Transportadorasid_estado: TWideStringField
      DisplayLabel = 'C'#243'd. Estado'
      FieldName = 'id_estado'
      Size = 255
    end
    object Transportadorastransp_contato: TWideStringField
      DisplayLabel = 'Contato'
      FieldName = 'transp_contato'
      Size = 255
    end
    object Transportadorastransp_cotato_telefone: TWideStringField
      DisplayLabel = 'Telefone Contato'
      FieldName = 'transp_cotato_telefone'
      Size = 255
    end
    object Transportadorasnome_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldKind = fkLookup
      FieldName = 'nome_cidade'
      LookupDataSet = Cidades
      LookupKeyFields = 'id_cidade'
      LookupResultField = 'nome_cidade'
      KeyFields = 'id_cidade'
      Size = 50
      Lookup = True
    end
    object Transportadorasnome_estado: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkLookup
      FieldName = 'nome_estado'
      LookupDataSet = Estados
      LookupKeyFields = 'id_estado'
      LookupResultField = 'sigla_uf'
      KeyFields = 'id_estado'
      Size = 50
      Lookup = True
    end
  end
  object Vasilhames: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Vasilhames'
    Left = 112
    Top = 144
    object Vasilhamesid_vasilhame: TAutoIncField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'id_vasilhame'
      ReadOnly = True
    end
    object Vasilhamescod_vasilhame: TWideStringField
      DisplayLabel = 'C'#243'd. Vasilhame'
      FieldName = 'cod_vasilhame'
      Size = 255
    end
    object Vasilhamesvasilhame_descricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'vasilhame_descricao'
      Size = 255
    end
  end
  object SaldoEstoque: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'SaldoEstoque'
    Left = 184
    Top = 144
    object SaldoEstoqueid_saldo_estoque: TAutoIncField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'id_saldo_estoque'
      ReadOnly = True
    end
    object SaldoEstoqueid_produto: TWideStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'id_produto'
      Size = 255
    end
    object SaldoEstoqueqtde_minima: TWideStringField
      DisplayLabel = 'Qtde. M'#237'nima'
      FieldName = 'qtde_minima'
      Size = 255
    end
    object SaldoEstoqueqtde_estocado: TWideStringField
      DisplayLabel = 'Qtde. Estocado'
      FieldName = 'qtde_estocado'
      Size = 255
    end
    object SaldoEstoqueqtde_area_venda: TWideStringField
      DisplayLabel = 'Qtde. '#193'rea de venda'
      FieldName = 'qtde_area_venda'
      Size = 255
    end
    object SaldoEstoqueqtde_troca: TWideStringField
      DisplayLabel = 'Qtde. Troca'
      FieldName = 'qtde_troca'
      Size = 255
    end
    object SaldoEstoquenome_produto: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'nome_produto'
      LookupDataSet = Produtos
      LookupKeyFields = 'id_produto'
      LookupResultField = 'pro_nome_reduzido'
      KeyFields = 'id_produto'
      Size = 50
      Lookup = True
    end
  end
  object Produtos: TADOTable
    Active = True
    Connection = Con_Dados
    CursorType = ctStatic
    TableName = 'Produtos'
    Left = 256
    Top = 144
    object Produtosid_produto: TAutoIncField
      DisplayLabel = 'C'#243'd. '
      FieldName = 'id_produto'
      ReadOnly = True
    end
    object Produtoscod_barras: TWideStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'cod_barras'
      Size = 255
    end
    object Produtospro_referencia: TWideStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'pro_referencia'
      Size = 255
    end
    object Produtospro_nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'pro_nome'
      Size = 255
    end
    object Produtospro_nome_reduzido: TWideStringField
      DisplayLabel = 'Nome Reduzido'
      FieldName = 'pro_nome_reduzido'
      Size = 255
    end
    object Produtospro_unidade: TWideStringField
      DisplayLabel = 'Unidade'
      FieldName = 'pro_unidade'
      Size = 255
    end
    object Produtosid_marca: TWideStringField
      DisplayLabel = 'C'#243'd. Marca'
      FieldName = 'id_marca'
      Size = 255
    end
    object Produtosid_fabricante: TWideStringField
      DisplayLabel = 'C'#243'd. Fabricante'
      FieldName = 'id_fabricante'
      Size = 255
    end
    object Produtosid_setor: TWideStringField
      DisplayLabel = 'C'#243'd. Setor'
      FieldName = 'id_setor'
      Size = 255
    end
    object Produtosid_grupoproduto: TWideStringField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'id_grupoproduto'
      Size = 255
    end
    object Produtosid_subgrupo_produto: TWideStringField
      DisplayLabel = 'C'#243'd. Subgrupo'
      FieldName = 'id_subgrupo_produto'
      Size = 255
    end
    object Produtospro_valor_custo: TWideStringField
      DisplayLabel = 'Valor Custo'
      FieldName = 'pro_valor_custo'
      Size = 255
    end
    object Produtospro_valor_venda: TWideStringField
      DisplayLabel = 'Valor Venda'
      FieldName = 'pro_valor_venda'
      FixedChar = True
      Size = 255
    end
    object Produtospro_margem_lucro: TWideStringField
      DisplayLabel = 'Margem Lucro'
      FieldName = 'pro_margem_lucro'
      Size = 255
    end
    object Produtospro_dt_cadastro: TWideStringField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'pro_dt_cadastro'
      Size = 255
    end
    object Produtospro_dt_alteracao: TWideStringField
      DisplayLabel = 'Dt. Altera'#231#227'o'
      FieldName = 'pro_dt_alteracao'
      Size = 255
    end
    object Produtospro_ativo: TWideStringField
      FieldName = 'pro_ativo'
      Size = 255
    end
    object Produtosnome_marca: TStringField
      DisplayLabel = 'Marca'
      FieldKind = fkLookup
      FieldName = 'nome_marca'
      LookupDataSet = Marcas
      LookupKeyFields = 'id_marca'
      LookupResultField = 'nome_marca'
      KeyFields = 'id_marca'
      Size = 50
      Lookup = True
    end
    object Produtosnome_fabricante: TStringField
      DisplayLabel = 'Fabricante'
      FieldKind = fkLookup
      FieldName = 'nome_fabricante'
      LookupDataSet = Fabricantes
      LookupKeyFields = 'id_fabricante'
      LookupResultField = 'nome_fabricante'
      KeyFields = 'id_fabricante'
      Size = 50
      Lookup = True
    end
    object Produtosnome_setor: TStringField
      DisplayLabel = 'Setor'
      FieldKind = fkLookup
      FieldName = 'nome_setor'
      LookupDataSet = Setores
      LookupKeyFields = 'id_setor'
      LookupResultField = 'nome_setor'
      KeyFields = 'id_setor'
      Size = 50
      Lookup = True
    end
    object Produtosnome_grupo: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'nome_grupo'
      LookupDataSet = GrupoDeProdutos
      LookupKeyFields = 'id_grupo_produto'
      LookupResultField = 'nome_grupo'
      KeyFields = 'id_grupoproduto'
      Size = 50
      Lookup = True
    end
    object Produtosnome_subgrupo: TStringField
      DisplayLabel = 'Subgrupo'
      FieldKind = fkLookup
      FieldName = 'nome_subgrupo'
      LookupDataSet = SubGruposProdutos
      LookupKeyFields = 'id_subgrupo_produtos'
      LookupResultField = 'nome_subgrupo'
      KeyFields = 'id_subgrupo_produto'
      Size = 50
      Lookup = True
    end
  end
end
