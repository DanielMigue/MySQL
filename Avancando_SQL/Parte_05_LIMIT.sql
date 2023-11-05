/*LIMIT - Limita o número de linhas exibidas*/

SELECT * FROM tabela_de_produtos;/*Exibe todos*/

SELECT * FROM tabela_de_produtos LIMIT 5;/*Exibe os primeiros cinco produtos*/

SELECT * FROM tabela_de_produtos LIMIT 2,3;/*Ele considera a primeira linha como 0. Portanto, ele exibirá a posilçao dois e os três próximos*/

SELECT * FROM tabela_de_produtos LIMIT 0,2;/*Pega a primeira posição e o próximo*/