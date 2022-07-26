CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id bigint auto_increment,
    nome char(255),
    descricao char(255),
    primary key(id)
);

CREATE TABLe tb_personagem(
	id bigint auto_increment,
    nome char(255),
    idade char(255),
    ataque int,
    defesa int,
    classes_id bigint,
    primary key(id),
    foreign key(classes_id) references tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES ("mago", "taca fogo");
INSERT INTO tb_classes (nome, descricao) VALUES ("guerreiro", "taca machado");
INSERT INTO tb_classes (nome, descricao) VALUES ("ladrao", "taca faca");
INSERT INTO tb_classes (nome, descricao) VALUES ("padre", "taca agua benta");
INSERT INTO tb_classes (nome, descricao) VALUES ("paladino", "taca martelo");

INSERT INTO tb_personagem (nome, idade, ataque, defesa, classes_id) VALUES ("Igor", 30, 9000, 7560, 4);
INSERT INTO tb_personagem (nome, idade, ataque, defesa, classes_id) VALUES ("Lucas", 21, 7000, 8560, 5);
INSERT INTO tb_personagem (nome, idade, ataque, defesa, classes_id) VALUES ("Mariano", 18, 13000, 5560, 1);
INSERT INTO tb_personagem (nome, idade, ataque, defesa, classes_id) VALUES ("Sthef", 26, 12300, 57560, 3);
INSERT INTO tb_personagem (nome, idade, ataque, defesa, classes_id) VALUES ("Jhon", 45, 245, 1870, 4);
INSERT INTO tb_personagem (nome, idade, ataque, defesa, classes_id) VALUES ("Catarina", 80, 9000, 7560, 2);
INSERT INTO tb_personagem (nome, idade, ataque, defesa, classes_id) VALUES ("Celeste", 60, 1999, 560, 1);
INSERT INTO tb_personagem (nome, idade, ataque, defesa, classes_id) VALUES ("Morgana", 15, 1625, 1560, 1);

SELECT * from tb_personagem WHERE ataque > 2000;

SELECT * from tb_personagem WHERE defesa > 1000 AND  ataque < 2000;

SELECT * from tb_personagem WHERE nome LIKE '%c%';

SELECT * from tb_personagem INNER JOIN tb_classes on tb_personagem.classes_id = tb_classes.id;

SELECT * from tb_personagem INNER JOIN tb_classes on tb_personagem.classes_id = tb_classes.id where tb_classes.nome LIKE "mago";

