desc tb_financiamento;

select vlr_financiamento, vlr_subsidio_desconto_fgts, vlr_subsidio_desconto_ogu, vlr_subsidio_equilíbrio_fgts, vlr_subsidio_equilíbrio_ogu, vlr_compra,vlr_renda_familiar
from tb_financiamento
limit 2;
select '33.281,47', CAST(replace(replace('33.281,47', '.', ''),',', '.') AS DECIMAL(13,2));

select vlr_financiamento,CAST(replace(replace(vlr_financiamento, '.', ''),',', '.') AS DECIMAL(13,2)),
CAST(replace(replace(vlr_subsidio_desconto_fgts, '.', ''),',', '.') AS DECIMAL(13,2)),
CAST(replace(replace(vlr_subsidio_desconto_ogu, '.', ''),',', '.') AS DECIMAL(13,2)),
CAST(replace(replace(vlr_subsidio_equilíbrio_fgts, '.', ''),',', '.') AS DECIMAL(13,2)),
CAST(replace(replace(vlr_subsidio_equilíbrio_ogu, '.', ''),',', '.') AS DECIMAL(13,2)),
CAST(replace(replace(vlr_compra, '.', ''),',', '.') AS DECIMAL(13,2)),
CAST(replace(replace(vlr_renda_familiar, '.', ''),',', '.') AS DECIMAL(13,2))
from tb_financiamento
limit 2;




update tb_financiamento
set vlr_financiamento = CAST(replace(replace(vlr_financiamento, '.', ''),',', '.') AS DECIMAL(13,2)),
vlr_subsidio_desconto_fgts = CAST(replace(replace(vlr_subsidio_desconto_fgts, '.', ''),',', '.') AS DECIMAL(13,2)),
vlr_subsidio_desconto_ogu =  CAST(replace(replace(vlr_subsidio_desconto_ogu, '.', ''),',', '.') AS DECIMAL(13,2)),
vlr_subsidio_equilíbrio_fgts = CAST(replace(replace(vlr_subsidio_equilíbrio_fgts, '.', ''),',', '.') AS DECIMAL(13,2)),
vlr_subsidio_equilíbrio_ogu = CAST(replace(replace(vlr_subsidio_equilíbrio_ogu, '.', ''),',', '.') AS DECIMAL(13,2)),
vlr_compra = CAST(replace(replace(vlr_compra, '.', ''),',', '.') AS DECIMAL(13,2)),
vlr_renda_familiar = CAST(replace(replace(vlr_renda_familiar, '.', ''),',', '.') AS DECIMAL(13,2));

-- Query para verificar se há valores estranhos nas colunas 

select vlr_financiamento 
from tb_financiamento 
where vlr_financiamento IS NOT NULL 
and vlr_financiamento NOT REGEXP '^[0-9.,]+$';

select count(*)
from tb_financiamento 
where vlr_financiamento IS NULL;


select vlr_subsidio_desconto_fgts
from tb_financiamento 
where vlr_subsidio_desconto_fgts IS NOT NULL 
and vlr_subsidio_desconto_fgts NOT REGEXP '^[0-9.,]+$';


select count(*)
from tb_financiamento 
where vlr_subsidio_desconto_fgts IS NULL;
