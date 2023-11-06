/*HAVING - O HAVING é uma condição (Filtro) que se aplica ao resultado de uma agregação*/

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE FROM tabela_de_clientes
GROUP BY ESTADO;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE FROM tabela_de_clientes
WHERE SOMA_LIMITE > 900000
GROUP BY ESTADO;/*O GROUP BY ainda não aconteceu, portanto, não funcionara*/

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE FROM tabela_de_clientes
GROUP BY ESTADO 
HAVING SUM(LIMITE_DE_CREDITO) > 900000;/*A condição de HAVING eu aplico depois do GROUP BY*/

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO, 
MIN(PRECO_DE_LISTA) AS MENOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM HAVING SUM(PRECO_DE_LISTA) <= 80;


SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO, 
MIN(PRECO_DE_LISTA) AS MENOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM HAVING SUM(PRECO_DE_LISTA) <= 80 AND MAX(PRECO_DE_LISTA) >= 5;/*Dentro do HAVING eu posso estar usando filtro composto com "and e or"*/

/*EXERCÍCIO:

Quais foram os clientes que fizeram mais de 2000 compras em 2016?

*/
  SELECT CPF, COUNT(*) AS QUANTIDADE_DE_COMPRAS FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000


