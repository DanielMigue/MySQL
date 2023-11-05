/*DISTINCT - Irá retornar somente linhas com valores diferentes.
exemplo:
A-X 
A-Y
A-Z
B-X
Tudo combinaação diferente
*/

SELECT EMBALAGEM, TAMANHO FROM tabela_de_produtos;/*Como não foi usado o DISTINCT, as linhas se repetirão*/

SELECT DISTINCT  EMBALAGEM, TAMANHO FROM tabela_de_produtos;/* O retorno é menor pois mostra as combinações que não se repetem*/

/*Juntanto o DISTINCT com combinações aprendidas*/

SELECT DISTINCT  EMBALAGEM, TAMANHO FROM tabela_de_produtos
WHERE SABOR = 'Laranja'; /*Retorna o campo especificado*/

SELECT DISTINCT  EMBALAGEM, TAMANHO, SABOR FROM tabela_de_produtos;/*Colocando a coluna sabor o número de combinações aumentam*/
