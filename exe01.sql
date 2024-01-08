CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
salario DECIMAL(10, 2) NOT NULL,
cargo VARCHAR(255) NOT NULL,
idade INT,
PRIMARY KEY (id)
);
INSERT INTO tb_colaboradores (nome, salario, cargo, idade)
VALUES ("Fábio", 2000.00, "administrador", 40),
("Joelma", 5000.00, "gerente", 45),
("Henrique", 1000.00, "estagiário", 25),
("Luana", 1000.00, "estagiária", 23),
("Lívia", 2500.00, "administradora", 45);

SELECT * FROM tb_colaboradores; 
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 5500.00 WHERE id = 2;
SELECT * FROM tb_colaboradores; 







