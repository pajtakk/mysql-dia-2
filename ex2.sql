CREATE DATABASE db_pizzaria_legal;

/* DATABASE db_pizzaria_legal; */

USE db_pizzaria_legal;

CREATE TABLE  tb_categorias (
	id bigint auto_increment,
    nome char(255),
    descricao char(255),
    primary key(id)
);

CREATE TABLe tb_pizzas (
	id bigint auto_increment,
    nome char(255),
    descricao char(255),
    valor double,
    tamanho char(255),
    categorias_id bigint,
    primary key(id),
    foreign key(categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ("doce", "eh doce");
INSERT INTO tb_categorias (nome, descricao) VALUES ("salgada", "eh salgada");
INSERT INTO tb_categorias (nome, descricao) VALUES ("amarga", "eh amarga");
INSERT INTO tb_categorias (nome, descricao) VALUES ("picante", "eh ardida");
INSERT INTO tb_categorias (nome, descricao) VALUES ("agridoce", "eh agridoce");

INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categorias_id) VALUES ("Calabresa", "Pizza de calabresa com cebola", 51.50, "grande", 2);
INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categorias_id) VALUES ("Abaxi com Lombo", "Pizza de calabresa com lombo", 60.50, "grande", 5);
INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categorias_id) VALUES ("Kimichi", "Pizza de acelga picante estilo coreano com queijo", 30.00, "pequena", 4);
INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categorias_id) VALUES ("Brigadeiro", "Pizza de brigadeiro", 98.50, "grande", 1);
INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categorias_id) VALUES ("Rolinho Primavera com Molho Agridoce", "Pizza de Rolinho Primavera com Molho Agridoce", 102.50, "grande", 5);
INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categorias_id) VALUES ("Escarola", "Pizza de Escarola com Parmesao", 38.50, "pequeno", 3);
INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categorias_id) VALUES ("Beijinho", "Pizza de beijinho", 32.50, "pequena", 1);
INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categorias_id) VALUES ("4 queijos", "Pizza de mussarela, parmesa, requeijao e gogonzolo", 110.50, "grande", 2);

SELECT * from tb_pizzas WHERE valor > 45.00;

SELECT * from tb_pizzas WHERE valor > 50 AND  valor < 100;

SELECT * from tb_pizzas WHERE nome LIKE '%c%';

SELECT * from tb_pizzas INNER JOIN tb_categorias on tb_pizzas.categorias_id = tb_categorias.id;

SELECT * from tb_pizzas INNER JOIN tb_categorias on tb_pizzas.categorias_id = tb_categorias.id where tb_categorias.nome LIKE "doce";

