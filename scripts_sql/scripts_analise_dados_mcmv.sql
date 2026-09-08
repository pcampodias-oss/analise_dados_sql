-- Valor total subsidiado FTGS/OGU
select round(sum(vlr_subsidio_desconto_fgts),2) as 'Subsidio_FGTS', round(sum(vlr_subsidio_desconto_ogu),2) as 'Subsidio_OGU'
from tb_financiamento;

-- Valor total financiado
select round(sum(vlr_financiamento),2) as 'Valor_Financiado'
from tb_financiamento;

-- Valor médio de compra dos imóveis
select round(avg(vlr_compra),2)  as 'Valor_Medio_Compra'
from tb_financiamento;

-- -- Valor subsidio FGTS/OGU por estado

select txt_uf, 
 CONCAT('R$ ',
      REPLACE(
        REPLACE(
            REPLACE(FORMAT(ROUND(SUM(vlr_subsidio_desconto_fgts), 2), 2), ',', '#'),
            '.', ','
        ),
        '#', '.'
    )) AS Subsidio_FGTS,
	
CONCAT('R$ ',
      REPLACE(
        REPLACE(
            REPLACE(FORMAT(ROUND(SUM(vlr_subsidio_desconto_ogu), 2), 2), ',', '#'),
            '.', ','
        ),
        '#', '.'
    )) AS Subsidio_OGU	
from tb_financiamento 
group by txt_uf
order by txt_uf;




-- Valor subsidio FGTS/OGU por região


SELECT CONCAT(
    'R$ ',
    REPLACE(
        REPLACE(
            REPLACE(FORMAT(ROUND(SUM(vlr_financiamento), 2), 2), ',', '#'),
            '.', ','
        ),
        '#', '.'
    )
) AS Valor_Financiado
FROM tb_financiamento;

-- Quantidade de imóveis subsidiados por faixa de renda
select txt_compatibilidade_faixa_renda,count(qtd_uh_financiadas)
from tb_financiamento
group by txt_compatibilidade_faixa_renda;


-- Query final

select 
a.Subsidio_FGTS,
b.Subsidio_OGU,
c.Valor_Financiado,
d.Valor_Medio_Compra,
e.Valor_Medio_Renda_Familiar,
f.Quantidade_Imoveis_Subsidiados
FROM(SELECT CONCAT('R$ ',
      REPLACE(
        REPLACE(
            REPLACE(FORMAT(ROUND(SUM(vlr_subsidio_desconto_fgts), 2), 2), ',', '#'),
            '.', ','
        ),
        '#', '.'
    )
) AS Subsidio_FGTS
FROM tb_financiamento) as a

JOIN (SELECT CONCAT('R$ ',
      REPLACE(
        REPLACE(
            REPLACE(FORMAT(ROUND(SUM(vlr_subsidio_desconto_ogu), 2), 2), ',', '#'),
            '.', ','
        ),
        '#', '.'
    )
) AS Subsidio_OGU
FROM tb_financiamento) as b

JOIN(SELECT CONCAT('R$ ',
      REPLACE(
        REPLACE(
            REPLACE(FORMAT(ROUND(SUM(vlr_financiamento), 2), 2), ',', '#'),
            '.', ','
        ),
        '#', '.'
    )
) AS Valor_Financiado
FROM tb_financiamento) as c

JOIN(SELECT CONCAT('R$ ',
      REPLACE(
        REPLACE(
            REPLACE(FORMAT(ROUND(AVG(vlr_compra), 2), 2), ',', '#'),
            '.', ','
        ),
        '#', '.'
    )
) AS Valor_Medio_Compra
FROM tb_financiamento) as d

JOIN(SELECT CONCAT('R$ ',
      REPLACE(
        REPLACE(
            REPLACE(FORMAT(ROUND(AVG(vlr_renda_familiar), 2), 2), ',', '#'),
            '.', ','
        ),
        '#', '.'
    )
) AS Valor_Medio_Renda_Familiar
FROM tb_financiamento) as e

JOIN(SELECT REPLACE(FORMAT(COUNT(qtd_uh_financiadas),0),',','.') AS Quantidade_Imoveis_Subsidiados
      FROM tb_financiamento
)  as f;


-- Relação entre faixa de renda x taxa juros

select txt_compatibilidade_faixa_renda as 'Faixa Renda'  , round(avg(num_taxa_juros),2) as 'Taxa Juros'
from tb_financiamento
group by txt_compatibilidade_faixa_renda;

-- Valor médio da renda familiar x valor médio da taxa de juros
select round(avg(vlr_renda_familiar),2) as 'Vlr. Médio Renda', round(avg(num_taxa_juros),2) as 'Vlr Médio Taxa'
from tb_financiamento
group by txt_compatibilidade_faixa_renda;

-- Relação entre faixa_renda x faixa etária 

select * from tb_faixa_renda;


select fin.txt_compatibilidade_faixa_renda as 'Faixa de Renda',coalesce(fin.faixa_etaria,'Nao informado') as 'Faixa Etária',count(*)
from tb_financiamento fin
inner join tb_faixa_renda fx on(fx.cod_faixa_renda = fin.cod_faixa_renda)
where fin.faixa_etaria is NOT NULL
group by fin.txt_compatibilidade_faixa_renda, fin.faixa_etaria;

