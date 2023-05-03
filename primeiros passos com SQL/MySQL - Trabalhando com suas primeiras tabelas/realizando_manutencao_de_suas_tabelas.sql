-- selecionar pessoas
SELECT * FROM pessoa;

-- selecionar nome pessoas
SELECT nome FROM pessoa;

-- selecionar nome, nascimento pessoas
SELECT nome, nascimento FROM pessoa;

-- atualizar os dados
 UPDATE pessoa SET nome = 'Wilson Silva' WHERE id = 1;
 UPDATE pessoa SET nascimento = '2020-10-06' WHERE id = 3;
 
 -- deletar registro
 DELETE FROM pessoa WHERE id = 1; 
 
 -- ordenando dados
 SELECT * FROM pessoa ORDER BY nome;
 SELECT * FROM pessoa ORDER BY nome DESC;
 
 -- Inserindo coluna na tabela
 ALTER TABLE pessoa ADD genero VARCHAR(20);
 UPDATE pessoa SET genero='F' WHERE id=2;
 UPDATE pessoa SET genero='M' WHERE id=3;
 UPDATE pessoa SET genero='F' WHERE id=4;
 UPDATE pessoa SET genero='M' WHERE id=5;
 SELECT * FROM pessoa;
 
-- agrupamento de dados
 SELECT count(genero) AS 'QUANTIDADE' , GENERO FROM pessoa GROUP BY genero;
 
 



