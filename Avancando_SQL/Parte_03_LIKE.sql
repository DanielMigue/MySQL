/*Usando Like*/

SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maça%'; /*Ele traz todo mundo que tem "Maça"*/

/*Se eue quiser consultar a palavra como se ela estivesse em último na frase devo colocar '%Maça'*/

SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maça%'
AND EMBALAGEM = 'PET'; /*Ele traz todo mundo que tem "Maça e PET"*/

