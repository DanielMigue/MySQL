/* AGRUPANDO OS RESULTADOS com GROUP BY:

SELECT <campos> FROM TAB "GROUP BY" CAMPO

Podemos usar:

SUM: Soma
MAX: Máximo
MIN: Mínimo
AVG: Média
COUT: Conta o número de ocorrências(linhas que se repetem)

*/

SELECT * FROM tabela_de_clientes;

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;/*Quando utilizamos uma fórmula, o nome do campo colocamos um AS para que represente o resultado*/
/*GROUP BY ESTADO é o campo que irá agregar a informação*/
SELECT EMBALAGEM, PRECO_DE_LISTA FROM tabela_de_produtos;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAIOR FROM tabela_de_produtos GROUP BY EMBALAGEM;/*Busca o maior preço entre as embalagem?*/

SELECT EMBALAGEM, COUNT(*) AS CONTADOR  FROM tabela_de_produtos GROUP BY EMBALAGEM;/*Consulta para retornar o número de produtos por embalagem*/	

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes GROUP BY BAIRRO;/*Consulta para retornar o limite de crédito total por bairro*/

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro'GROUP BY BAIRRO; /*Retorna o limite de crédito total por bairro para clientes do Rio de Janeiro*/

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
GROUP BY ESTADO, BAIRRO/*essa ordem não precisa necessarriamente ser assim*/;/*retorna também mais de um campo*/

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes/*Seleciona, faz a fórmula e a nomeia sobre a tabela de cliente*/
WHERE CIDADE = 'Rio de Janeiro'/*Filtra a cidade*/
GROUP BY ESTADO, BAIRRO/*Agrega as informações da fórmula com os campos*/
ORDER BY BAIRRO;/*Ordena de forma ascendente as informações*/

/*
Aproveitando o exercício anterior (maior quantidade vendida) 
quantos itens de venda existem para o produto '1101035' ?
*/
SELECT MAX(QUANTIDADE) AS MAIOR_QUANTIDADE FROM itens_notas_fiscais 
WHERE CODIGO_DO_PRODUTO = '1101035';/*Retorna o valor máximo do item filtrado*/

SELECT COUNT(*) AS NUMERO_DE_ITENS FROM itens_notas_fiscais 
WHERE CODIGO_DO_PRODUTO = '1101035' AND QUANTIDADE = 99;/*Retorna a quantidade de vezes que o produto foi vendido com a quantidade de 99 itens*/





