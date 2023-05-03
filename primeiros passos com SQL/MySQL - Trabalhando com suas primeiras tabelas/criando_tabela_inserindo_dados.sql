-- Crianto tabela pessoas sem id
CREATE TABLE pessoas(
	nome VARCHAR(100),
    nascimento DATE
);

-- Criando tabela pessoa com id
CREATE TABLE pessoa(
    id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
    nascimento DATE
);

-- Inserindo valores nos atributos
INSERT INTO pessoas(nome, nascimento) VALUES ('Wilson', '1991-01-02');

INSERT INTO pessoa(nome, nascimento) VALUES ('Wilson', '1991-01-02');
INSERT INTO pessoa(nome, nascimento) VALUES ('Katelyn', '2012-10-24');
INSERT INTO pessoa(nome, nascimento) VALUES ('Davi', '2019-10-06');
INSERT INTO pessoa(nome, nascimento) VALUES ('Francislaine', '1988-08-15');