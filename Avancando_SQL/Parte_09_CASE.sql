/*CASE 
WHEN = QUANDO
THEN = ENTÃO
(WHEN) Se for um campo acontece tal coisa se for outro acontece outro tipo de coisa. Caso nenhuma se satisfaça executa-se o ELSE

exemplos práticos:
*/

SELECT * FROM tabela_de_produtos;

/*Classificando em barato, enconta e caro*/

SELECT EMBALAGEM, 
CASE 
   WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'/*WHEN(quando)...THEN(então)*/
   WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO'/*Não sendo nenhuma do anteriores usamos o else*/ 
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
 FROM tabela_de_produtos;/* A palavra "END" fecha o case logo colocamos um AS para definir o nome do case*/

SELECT EMBALAGEM, 
CASE 
   WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
   WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
  ELSE 'PRODUTO BARATO'
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO/*exibe a média*/
FROM tabela_de_produtos
WHERE sabor = 'manga'/*Filtrei somente o produto de sabor "Manga". */
GROUP BY EMBALAGEM,
CASE 
   WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
   WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
  ELSE 'PRODUTO BARATO'
END
/*Observa-se acima que dentro do GROUP BY colocamos o case novamente*/
ORDER BY EMBALAGEM DESC/*Coloquei o uma ordenação do mais caro ao mais barato por embalagem*/;

/*EXERCÍCIO:

Veja o ano de nascimento dos clientes e classifique-os como Nascidos antes de 1990 são velhos, 
nascidos entre 1990 e 1995 são jovens e nascidos depois de a1995 são crianças.
Liste o nome do cliente e esta classificação.

*/
SELECT * FROM tabela_de_clientes;

SELECT NOME,
	CASE
   WHEN YEAR(DATA_DE_NASCIMENTO) <= 1990 THEN 'VELHOS'
   WHEN YEAR(DATA_DE_NASCIMENTO) >= 1990 AND YEAR(DATA_DE_NASCIMENTO) <= 1995 THEN 'JOVENS'
   ELSE 'CRIANÇAS'
   END AS STATUS_IDADE
   FROM tabela_de_clientes
   GROUP BY NOME, 
   CASE
   WHEN YEAR(DATA_DE_NASCIMENTO) <= 1990 THEN 'VELHOS'
   WHEN YEAR(DATA_DE_NASCIMENTO) >= 1990 AND YEAR(DATA_DE_NASCIMENTO) <= 1995 THEN 'JOVENS'
   ELSE 'CRIANÇAS'
   END
   ORDER BY STATUS_IDADE DESC;/*Ordenei por pelo status dos mais velhos aos mais novos*/
   