CREATE DATABASE db_construindo_vidas;

/* DATABASE db_construindo_vidas; */

USE db_construindo_vidas;

CREATE TABLE  tb_categorias (
	id bigint auto_increment,
    nome char(255),
    descricao char(255),
    primary key(id)
);

CREATE TABLe tb_produtos (
	id bigint auto_increment,
    nome char(255),
    descricao char(255),
    valor double,
    marca char(255),
    categorias_id bigint,
    primary key(id),
    foreign key(categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ("madeiras", "madeiras");
INSERT INTO tb_categorias (nome, descricao) VALUES ("ferramentas", "ferramentas");
INSERT INTO tb_categorias (nome, descricao) VALUES ("moveis", "moveis");
INSERT INTO tb_categorias (nome, descricao) VALUES ("eletros", "eletros");
INSERT INTO tb_categorias (nome, descricao) VALUES ("banheiros", "banheiros");

INSERT INTO tb_produtos (nome, descricao, valor, marca, categorias_id) VALUES ("Martelo", "Martelo para pregos", 51.50, "3M", 2);
INSERT INTO tb_produtos (nome, descricao, valor, marca, categorias_id) VALUES ("Ripa de Madeira 2m", "Ripa de Madeira 2m", 60.50, "Madereiraleila", 1);
INSERT INTO tb_produtos (nome, descricao, valor, marca, categorias_id) VALUES ("Televisao", "Televisao 50 polegadas", 2.500, "Sony", 4);
INSERT INTO tb_produtos (nome, descricao, valor, marca, categorias_id) VALUES ("Assento Sanitario", "Assento Sanitario", 45.50, "Roca", 5);
INSERT INTO tb_produtos (nome, descricao, valor, marca, categorias_id) VALUES ("Aspirador mini", "Aspirador portatil", 102.50, "Wallita", 4);
INSERT INTO tb_produtos (nome, descricao, valor, marca, categorias_id) VALUES ("prego c/ 200", "Jogo de 200 pregos", 25.00, "3M", 2);
INSERT INTO tb_produtos (nome, descricao, valor, marca, categorias_id) VALUES ("Serrote Madeira", "Serrote para madeira", 32.50, "Wesco", 2);
INSERT INTO tb_produtos (nome, descricao, valor, marca, categorias_id) VALUES ("tronco ornamental", "tronco de enfeite", 485.60, "Ornamental", 1);

SELECT * from tb_produtos WHERE valor > 100.00;

SELECT * from tb_produtos WHERE valor > 70 AND  valor < 150;

SELECT * from tb_produtos WHERE nome LIKE '%c%';

SELECT * from tb_produtos INNER JOIN tb_categorias on tb_produtos.categorias_id = tb_categorias.id;

SELECT * from tb_produtos INNER JOIN tb_categorias on tb_produtos.categorias_id = tb_categorias.id where tb_categorias.nome LIKE "ferramentas";


