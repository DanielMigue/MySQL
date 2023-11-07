/*JOINs -> Possibilidade de unir uma ou mais tabelas através de campos em comum.
*/

SELECT * FROM tabela_de_vendedores;
SELECT * FROM notas_fiscais;

SELECT * FROM tabela_de_vendedores A 
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA;

SELECT A.MATRICULA, A.NOME, COUNT(*) AS NOTAS_FISCAIS FROM
 tabela_de_vendedores A 
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;

/*Outra maneira e mais antiga de se fazer*/

SELECT A.MATRICULA, A.NOME, COUNT(*) AS NOTAS_FISCAIS FROM
 tabela_de_vendedores A, notas_fiscais B
WHERE A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;

/* EXERCÍCIO:
Obtenha o faturamento anual da empresa. 
Leve em consideração que o valor financeiro das vendas consiste em multiplicar a quantidade pelo preço.
*/

SELECT * FROM tabela_de_produtos;
SELECT * FROM itens_notas_fiscais;

/*Código para consultar as duas tabelas ao mesmo tempo e ver o que tem em comum, usando JOIN*/
SELECT * FROM notas_fiscais A 
INNER JOIN itens_notas_fiscais B
ON A.NUMERO = B.NUMERO;

/*Para obter o resultado pedido pelo exercício basta pegar o ano das vendas na tabela "notas_fiscais", multiplicar
a quantidade pelo preço usando GROUP BY, e unir as tabelas usando INNER JOIN focalizando a chaves primária das tabelas na parte do ON*/
SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO FROM
notas_fiscais A INNER JOIN itens_notas_fiscais B
ON A.NUMERO = B.NUMERO
GROUP BY YEAR(DATA_VENDA);


 
 


