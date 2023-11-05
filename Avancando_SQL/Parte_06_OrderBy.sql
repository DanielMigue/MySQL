/*SELECT * FROM TAB ORDER BY CAMPO

-Apresenta o resultado da consulta ordenado pelo campo determinado no ORDER BY
-ASC: Ascendente ou DESC: Descrescente

*/
SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA;/*Ordena do menor para o maior o preço*/

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC;/*Após colocar o comando DESC atráves do ORDER BY o MySQL exibirá do maior para o menor*/

SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO;/*Mostra em ordem crescente no grupo do Alfabeto*/

SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO DESC;/*Mostra em ordem descrescente no grupo do Alfabeto*/

SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM, NOME_DO_PRODUTO;/*A "EMBALAGEM" será a prioridade e todos os campos do "NOME_DO_PRODUTO" 
serão exibidos de forma alfabética até o final. Ao término o produto da Embalagem de letra 'X' dará o lugar para a próxima letra sucessiva do alfábeto
*/

SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC;/*Embalagem será do maior para o menor e produto será do menor para o maior*/

/*
EXERCÍCIO - MAIOR VENDA:

Qual (ou quais) foi (foram) a(s) maior(es) venda(s) do produto “Linha Refrescante - 1 Litro - Morango/Limão”, 
em quantidade? (Obtenha este resultado usando 2 SQLs).

*/
SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';/*Fiz a busca na tabela de produtos*/

SELECT * FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035'/*Esse código está na chave primária da tabela_de_produtos, portanto consigo
localiza-lo na tablea "itens_notas_fiscais" */

ORDER BY QUANTIDADE DESC/* Dentro da tabela itens_notas_fiscais se encontra a coluna "quantidade" e aqui eu 
faço o que o exercício perde que é buscar a maior venda através do "DESC" sendo ordenado pelo ORDER BY. */

LIMIT 0,10;/*Aqui eu quis limitar por dez linhas pra ver se funcionava e sim funcionou*/


