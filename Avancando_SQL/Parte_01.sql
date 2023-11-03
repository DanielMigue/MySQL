use sucos_vendas;

SELECT CPF, NOME, ENDERECO_1, ENDERECO_2, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO, IDADE, SEXO, LIMITE_DE_CREDITO,
 VOLUME_DE_COMPRA, PRIMEIRA_COMPRA 
FROM tabela_de_clientes;

Select * from tabela_de_clientes;

select cpf, nome from tabela_de_clientes;/*consultando campus especificos*/

SELECT CPF as IDENTIFICADOR, NOME AS CLIENTE FROM tabela_de_clientes;/*Colocando nome nos campus*/

SELECT * From tabela_de_produtos;/*Outra tabela*/

select * from tabela_de_produtos where CODIGO_DO_PRODUTO = '1000889';/*filtrando um produto. Por ser chave primária a busca é mais rápida*/

select * from tabela_de_produtos where SABOR = 'Laranja';/*filtrando um produto, sem ser chave primária. O banco também busca. É mais lenta em cbancos maiores*/

SELECT * FROM tabela_de_produtos Where EMBALAGEM = 'pet';/*No MySQL tanto faz colocar maiúsculo ou minúsculo*/

SELECT * FROM tabela_de_produtos where PRECO_DE_LISTA = 19.51;/*Ele é um float, um ponto flutuante. Ele não funciona*/

SELECT * FROM tabela_de_produtos where PRECO_DE_LISTA BETWEEN 19.50 AND 19.52; /*Para consultar o 19.51 utilizamos o BETWEEN(entre)	*/