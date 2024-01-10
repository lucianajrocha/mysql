CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe (
id BIGINT AUTO_INCREMENT, 
tipo_classe VARCHAR (255) NOT NULL,
nivel_classe INT NOT NULL,
PRIMARY KEY (id)
);


CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
item_do_personagem VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD classeid bigint;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classe
FOREIGN KEY (classeid) REFERENCES tb_classe(id);

INSERT INTO tb_classe (tipo_classe, nivel_classe)
VALUES ("sereia", 4),
("fada do campo", 3),
("fada guardiã", 5),
("fada cristal", 4),
("fada borboleta", 4);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, item_do_personagem, classeid )
VALUES ("Nori", 1500, 1000, "cauda", 1),
("Elina", 3000, 2000, "colarde pérolas", 2),
("Azura", 4000, 3000, "colar azul", 3),
("Corine", 5000, 4000, "cristalito", 4),
("Erika", 6000, 5000, "asas", 5);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classe;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000.00 AND 2000.00;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, item_do_personagem, classeid)
VALUES ("Ruby", 4000, 3000, "colar vermelho", 3); 

SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.classeid = tb_classe.id;
SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.classeid = tb_classe.id WHERE tb_classe.id = 3;

UPDATE tb_personagens SET item_do_personagem = "colar de perolas" WHERE id = 2;
SELECT * FROM tb_personagens;


