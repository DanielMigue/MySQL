SELECT COUNT(*) FROM tabela_de_clientes;/*consulta para ver a quantidade de 15 clientes*/

SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;/*Mostra 14 cliente com cpf que compraram, como eu descubro quem não comprou nada? Olhe os próximos passos*/

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
INNER JOIN notas_fiscais B
ON A.CPF = B.CPF;/*Aqui mostra o cpf e nome detodos que compraram e adquiriram notas fiscais*/


SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF;/*Retorna também o Fabio Carvalho, um cliente da tabela A que nunca comprou e tem CPF "NULL" na tabela B*/

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF
WHERE B.CPF IS NULL;/*Mostra o Fabio Carvalho o cliente que nunca comprou*/

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF
WHERE B.CPF IS NULL;/*Mostra o Fabio Carvalho o cliente que nunca comprou*/

/*Investigue o cliente que nunca comprou um produto no ano de 2015*/
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF
WHERE B.CPF IS NULL AND YEAR(B.DATA_VENDA)=2015;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM notas_fiscais B
RIGHT JOIN tabela_de_clientes A /*Usando RIGHT JOIN*/
ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

