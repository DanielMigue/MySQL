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



