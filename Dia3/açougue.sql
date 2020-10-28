create database db_cidade_das_carnes;
use db_cidade_das_carnes;
create table tb_categoria(
	id bigint auto_increment,
	nome varchar(255) not null,
	ativo boolean not null,
    primary key (id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(10,2) not null,
    quantidade int not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);
insert into tb_categoria(nome, ativo) values ("Bovinos",true);
insert into tb_categoria(nome, ativo) values ("Suínos", true);
insert into tb_categoria(nome, ativo) values ("Aves", true);
insert into tb_categoria(nome, ativo) values ("Acompanhamentos", true);
insert into tb_categoria(nome, ativo) values ("Bebidas", true);

insert into tb_produto(nome, preco, quantidade, categoria_id) values ("Picanha", 40.00, 15, 1);
insert into tb_produto(nome, preco, quantidade, categoria_id) values ("Bisteca Suína", 20.00, 14, 2);
insert into tb_produto(nome, preco, quantidade, categoria_id) values ("Peito de Frango", 15.00, 18, 3);
insert into tb_produto(nome, preco, quantidade, categoria_id) values ("Farofa", 4.00, 20, 4);
insert into tb_produto(nome, preco, quantidade, categoria_id) values ("Cerveja", 2.50, 50, 5);
insert into tb_produto(nome, preco, quantidade, categoria_id) values ("Filé Mignon", 50.99, 17, 1);
insert into tb_produto(nome, preco, quantidade, categoria_id) values ("Pão de Alho", 10.00, 10, 4);
insert into tb_produto(nome, preco, quantidade, categoria_id) values ("Queijo Coalho", 15.00, 20, 4);

select * from tb_produto where preco >= 50.00;
select * from tb_produto where preco >=3 && preco <=60;
select * from tb_produto where nome like "CO%";

-- select entre as duas tabelas
select tb_produto.nome, tb_produto.preco, tb_produto.quantidade, tb_categoria.nome, tb_categoria.ativo from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- select dos produtos de uma categoria específica
select tb_produto.nome, tb_produto.preco, tb_produto.quantidade, tb_categoria.nome, tb_categoria.ativo from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.nome like "Acompanhamentos";