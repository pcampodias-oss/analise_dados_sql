select count(*) from tb_financiamento;

select * from tb_financiamento limit 50; 

select data_referencia, data_assinatura_financiamento
from tb_financiamento;


-- Queries para tratamento de datas
select data_assinatura_financiamento as 'Data', DATE_FORMAT(data_assinatura_financiamento, '%Y-%m-%d') as 'Data_formatada' 
from tb_financiamento;

-- Ajustar data assinatura
start transaction;

update tb_financiamento
set data_assinatura_financiamento = DATE_FORMAT(data_assinatura_financiamento, '%Y-%m-%d');

commit;

-- Ajustar data_referencia
select data_referencia as 'Data',  STR_TO_DATE(data_referencia, "%d/%m/%Y") as 'Data_convertida'
from tb_financiamento;


update tb_financiamento
set data_referencia = STR_TO_DATE(data_referencia, "%d/%m/%Y");

SELECT  STR_TO_DATE(data_referencia, "%d/%m/%Y")
from tb_financiamento;
commit;