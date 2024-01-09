CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
nota DECIMAL (4,2) NOT NULL,
serie VARCHAR (255) NOT NULL,
ano_ingresso INT NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, nota, serie, ano_ingresso)
VALUES ("Ana Paula", 10.00, "sétima série", 2023),
("Bruno", 9.75, "oitava série", 2022),
("Camila", 8.75, "oitava série", 2022),
("Daniel", 7.75, "quinta série", 2021),
("Eduarda", 7.00, "quinta série", 2020),
("Fátima", 6.50, "oitava série", 2017),
("Gustavo", 10.00, "oitava série", 2019),
("Heitor", 5.50, "oitava série", 2018);

SELECT * FROM tb_estudantes; 
SELECT * FROM tb_estudantes WHERE nota > 7.00;
SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes SET nota = 7.00 WHERE id = 6;
SELECT * FROM tb_estudantes; 
