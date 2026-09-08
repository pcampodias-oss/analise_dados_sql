
-- Habilitar o load local infile no servidor mysql para ser possível a carga através de arquivo
SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';
-- Conferências 

SHOW SESSION VARIABLES LIKE 'local_infile'
SHOW VARIABLES LIKE 'local_infile';
SELECT @@local_infile;

SHOW VARIABLES LIKE 'secure_file_priv';
SELECT VERSION()

SELECT LOAD_FILE('C:/Temp/dados.csv');

SHOW VARIABLES LIKE 'max_allowed_packet';



-- drop table tb_financiamento

create table tb_financiamento(
data_referencia	varchar(250),
cod_ibge varchar(250),
txt_municipio varchar(250),
txt_uf	varchar(20),
txt_regiao varchar(250),
data_assinatura_financiamento varchar(250),	
qtd_uh_financiadas	varchar(250),
vlr_financiamento	varchar(250),
vlr_subsidio_desconto_fgts	varchar(250),
vlr_subsidio_desconto_ogu	varchar(250),
vlr_subsidio_equilíbrio_fgts varchar(250),	
vlr_subsidio_equilíbrio_ogu	 varchar(250),
vlr_compra	varchar(250),
vlr_renda_familiar	varchar(250),
txt_programa_fgts	varchar(250),
num_taxa_juros	varchar(250),
txt_tipo_imovel	varchar(250),
bln_cotista	varchar(250),
txt_sistema_amortizacao	varchar(250),
dte_nascimento	varchar(250),
txt_compatibilidade_faixa_renda	varchar(250),
txt_nome_empreendimento varchar(250),	
co_sexo varchar(20)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;



LOAD DATA LOCAL INFILE 'C:/Temp/dados.txt'
INTO TABLE tb_financiamento
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



select * from tb_financiamento limit 50; 
