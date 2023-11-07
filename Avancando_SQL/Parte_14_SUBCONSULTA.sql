/*Sub-consultas. Utilizamos uma subconsulta dentro de uma consulta*/

SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

select * from tabela_de_clientes WHERE BAIRRO 
IN('Tijuca','Jardins','Copacabana','Santo Amaro');

select * from tabela_de_clientes WHERE BAIRRO 
IN(SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;

/*
EXERCÍCIO: Qual seria a consulta usando subconsulta que seria equivalente a: 
SELECT CPF, COUNT(*) AS QUANTIDADE FROM notas_fiscais
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000;
*/

SELECT X.CPF, X.QUANTIDADE FROM
(SELECT CPF, COUNT(*) AS QUANTIDADE FROM notas_fiscais 
WHERE YEAR(DATA_VENDA)=2016 GROUP BY CPF) X WHERE X.QUANTIDADE > 2000;