CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
preco DECIMAL (10, 2) NOT NULL,
quantidade INT NOT NULL,
cor VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, preco, quantidade, cor) 
VALUES ("Kindle 11 geração", 500, 1, "cinza"),
("Kindle 10 geração", 480.00, 2, "cinza"),
("Kindle Oasis", 900.00, 1, "branco"),
("Kindle PaperWhite", 800.00, 1, "preto"),
(" TV LG 50 Polegadas", 4000.00, 1, "cinza"),
(" Iphone 12", 3000.00, 1, "branco"),
("TV LG 45 Polegadas", 3500.00, 1, "cinza"),
("Samsung S20", 1800.00, 1, "branco");

SELECT * FROM tb_produtos; 
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 850.00 WHERE id = 3;
SELECT * FROM tb_produtos; 




