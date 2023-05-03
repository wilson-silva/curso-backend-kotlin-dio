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
 SELECT * FROM pessoa;
 INSERT INTO 
 -- agrupamento de dados
 
 
 



