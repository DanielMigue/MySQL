/*Aplicando consultas condicionais e estruturas lógicas*/

/*OR - Aparece  todos que tem ou um ou outro*/
SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga'
OR TAMANHO = '470 ml'; 

/*AND - Aparece  todos os que tem os dois*/
SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga'
AND TAMANHO = '470 ml';

/*NOT com AND- Aparece  todos, menos os que tem os dois atributos. Portanto, ele inverte, o que é verdeiro fica falso*/
SELECT * FROM tabela_de_produtos WHERE
 NOT(SABOR = 'Manga' AND TAMANHO = '470 ml');

/*NOT com OR- Aparece  todos, menos os que tem ou um ou outro. Portanto, ele inverte, o que é verdeiro fica falso também*/
SELECT * FROM tabela_de_produtos WHERE
 NOT(SABOR = 'Manga' OR TAMANHO = '470 ml');
 
 /*Aparece o valor da manga menos de tamanho 470ml*/
 SELECT * FROM tabela_de_produtos WHERE
 SABOR = 'Manga' AND NOT (TAMANHO = '470 ml');
 
 SELECT * FROM tabela_de_produtos WHERE SABOR IN('laranja', 'manga');/*O IN é um contido, lista todos que sejam...*/
 
 /*O IN é um equivalente a:*/
 SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' OR SABOR = 'Manga'; 
 
 SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro','São Paulo')
 AND IDADE >=20;/*Ele pega todos que moram nas cidades mencionadas, mas que sejam maiores ou iguais a 20*/
 
  SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro','São Paulo')
  AND (IDADE >=20 AND IDADE<=22);/*Ele pega todos que moram nas cidades mencionadas, mas que sejam maiores ou iguais a 20* e
  menor ou igual a 22*/
 