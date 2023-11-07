/*UNION - Faz a união de duas ou mais tabelas

As tabelas diferentes tem que ter o mesmo número e tipo de campo
Ele junta e faz o mesmo tempo o DISTINCT

UNION ALL - Não se aplica o DISTINCCT
*/

SELECT DISTINCT BAIRRO FROM tabela_de_clientes;
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT DISTINCT BAIRRO FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' AS TIPO FROM tabela_de_clientes
UNION 
SELECT DISTINCT BAIRRO, NOME, 'VENDEDOR' AS TIPO FROM tabela_de_vendedores;

SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' AS TIPO_CLIENTE FROM tabela_de_clientes
UNION 
SELECT DISTINCT BAIRRO, NOME, 'VENDEDOR' AS TIPO_VENDEDOR FROM tabela_de_vendedores;

SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' AS TIPO_CLIENTE, CPF AS 'IDENTIFICADOR' FROM tabela_de_clientes/*Ele prioriza o título do campo no primeiro comando*/
UNION 
SELECT DISTINCT BAIRRO, NOME, 'VENDEDOR' AS TIPO_VENDEDOR, MATRICULA FROM tabela_de_vendedores;

