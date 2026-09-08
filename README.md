 📊 Análise de Dados – Programa Minha Casa, Minha Vida

    📋 Visão Geral

    Este projeto realiza uma análise exploratória de dados do Programa Federal Minha Casa, Minha Vida (MCMV) utilizando MySQL como banco de dados. A análise visa compreender os gastos com subsídios governamentais e auxiliar gestores na tomada de decisão sobre controle de recursos.

    

    🎯 Objetivo

    Verificar quanto foi gasto com subsídios do governo para financiamento de imóveis com recursos da:
    - OGU (Orçamento Geral da União)
    - FGTS (Fundo de Garantia por Tempo de Serviço)

    Período analisado: Dezembro/2025

    Dimensões Analisadas
    - 📍 Gastos por região
    - 🏘️ Gastos por estado
    - 💰 Distribuição por faixa de renda
    - 👥 Distribuição por faixa etária

    ---

    👥 Público-Alvo

    Gestores públicos e tomadores de decisão de:
    - Governo Federal
    - Ministério das Cidades
    - Secretaria Nacional de Habitação
    - Caixa Econômica Federal

    

    📊 Dados Utilizados

    Fonte:
    Bases de dados oficiais do programa disponibilizadas pelo governo:
    [Portal Dados MCMV - Gov.br](https://www.gov.br/cidades/pt-br/acesso-a-informacao/acoes-e-programas/habitacao/programa-minha-casa-minha-vida/bases-de-dados-do-programa-minha-casa-minha-vida)

     Especificações
  
    Quantidade de Registros Originais: 7.390.483 
    Quantidade de Registros Utilizados: 10.000 (amostragem) 
    Motivo da Amostragem: Limitações de recursos computacionais para manipulação de arquivo com grande número de linhas.
    Formato Original: CSV 

    

     Tratamentos Realizados

    Durante a preparação dos dados foram executados os seguintes procedimentos:

    ✅ Criação de tabelas estruturadas no banco MySQL  
    ✅ Carga dos dados do arquivo CSV para o banco de dados  
    ✅ Ajustes de formatos de datas e valores numéricos  
    ✅ Criação de coluna `Faixa Etária` para consolidação de idades  
    ✅ Criação de tabela `Faixa de Renda` com relacionamentos via chave estrangeira  

    

    📈 Indicadores-Chave (KPIs)

    Os seguintes KPIs foram calculados e analisados:

    
    Perguntas de negócio|métrica
    a)Quanto foi gasto em subsídios (FGTS/OGU)? | Valor Total em R$ 
    b)Qual o valor total financiado? | Valor Total em R$ 
    c)Qual o valor médio de compra dos imóveis? | Média em R$ 
    d)Qual a renda familiar média contemplada? | Média em R$ 
    e)Quantos imóveis foram subsidiados? | Quantidade 



    🔍 Análises

    💡 Subsídios por Estado
    - Maiores gastos nas regiões Norte e Nordeste
    - Estados em destaque: Rio Grande do Norte e Pará

    💡 Subsídios por Região
    - A região Nordeste lidera em valor gasto com subsídios FGTS/OGU
    - Concentra maior população de baixa renda do Brasil

    💡 Imóveis por Faixa de Renda
    - Faixas 1 e 2 (até R$ 5.000 de renda familiar) concentram a maioria dos financiamentos
    - Indica limitações financeiras da população para aquisição própria

    💡 Imóveis por Faixa Etária
    - Faixa etária 26-35 anos lidera as compras de imóveis subsidiados
    - Faixa etária típica de estabelecimento financeiro e formação familiar
    - Faixa 36-45 anos aparece em segundo lugar

    💡 Relação Renda × Taxa de Juros
    - Taxa de juros diretamente proporcional à renda familiar
    - Baixa renda = menor taxa de juros
    - Financiamentos fora do MCMV apresentam maiores taxas

   💡 Top 10 Estados
    Identificados os estados com maior volume de financiamentos no período

    

    📝 Conclusões

    1. Necessidade de Políticas Públicas: A maioria da população não tem condições de adquirir moradia própria sem subsídios governamentais.

    2. Expansão da Classe Média no Programa MCMV: Classe média antes não contemplada agora recorre ao programa devido às altas taxas de juros.

    3. Impacto Econômico: A situação econômica do país está afetando significativamente a capacidade de financiamento independente.

    4. Importância do MCMV: O programa se mostra essencial para garantir moradia digna ao cidadão brasileiro.



    💻 Tecnologias Utilizadas

    - Banco de Dados: MySQL
    - Linguagem de Consulta: SQL
    - Formato de Entrada para carga de dados: CSV
    - Análise e Visualização: Consultas SQL

    

    📁 Estrutura do Projeto


    A base de dados original em arquivo CSV está disponível para download no endereço: https://www.gov.br/cidades/pt-br/acesso-a-informacao/acoes-e-programas/habitacao/programa-minha-casa-minha-vida/bases-de-dados-do-programa-minha-casa-minha-vida/Contratos do MCMV-Financiado com recursos do FGTS e do FS (dados analíticos) 
    Os arquivos com os scripts sql estão na pasta: scripts_sql


    Passos
    1. Criar as tabelas executando `create_tables.sql`
    2. Carregar os dados com `load_data.sql`
    3. Executar as análises em `analysis_queries.sql`

    

    📄 Licença

    Este projeto utiliza dados públicos do Governo Federal do Brasil.

    

    👩‍💼 Autor

    Patrícia Campos 
    Analista de TI  
    [LinkedIn](link_seu_linkedin) | [GitHub](link_seu_github)

    ---

    ## 📞 Contato

    Para dúvidas ou sugestões sobre este projeto, entre em contato através de:
    - 📧 Email: seu_email@email.com
    - 💼 LinkedIn: [Seu Perfil]

    ---

    Última atualização: 8 de Setembro de 2026
    
