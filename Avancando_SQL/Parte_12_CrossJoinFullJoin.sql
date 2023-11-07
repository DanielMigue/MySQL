
SELECT * FROM tabela_de_vendedores;

SELECT * FROM tabela_de_clientes;

SELECT COUNT(*) FROM tabela_de_clientes; /*Retorna 15 clientes*/

SELECT * FROM tabela_de_vendedores INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;/*Retorna 7 clientes que estão no mesmo bairro, sendo assim 8 estão fora do mesmo bairro de um vendedor*/

SELECT tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, 
tabela_de_clientes.NOME
 FROM tabela_de_vendedores INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;/*Recupera registros com valores correspondentes em ambas as tabelas*/

SELECT tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, 
tabela_de_clientes.NOME
 FROM tabela_de_vendedores LEFT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;/*Mostra o vendedor que tem ou não tem nenhum cliente no seu bairro*/

SELECT tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, 
tabela_de_clientes.NOME
 FROM tabela_de_vendedores RIGHT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;/*Mostra todos os clientes que tem ou não tem vendedor no seu bairro*/


SELECT tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, 
tabela_de_clientes.NOME
 FROM tabela_de_vendedores FULL JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;/*MySQL não suporta FULL JOIN*/

/*CROSS JOIN*/
SELECT tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, 
tabela_de_clientes.NOME
 FROM tabela_de_vendedores, tabela_de_clientes;/*Recupera todas as combinações possíveis de linhas de duas tabelas*/
 
/*FULL JOIN NO MySQL funciona só se usarmos o LEFT JOIN COM RIGHT JOIN se utilizando do UNION entre eles*/
SELECT tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, 
tabela_de_clientes.NOME
 FROM tabela_de_vendedores LEFT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
UNION
 SELECT tabela_de_vendedores.BAIRRO,
 tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO, 
tabela_de_clientes.NOME
 FROM tabela_de_vendedores RIGHT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;
