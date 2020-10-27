-- criar um banco de dados
create database db_ecommerce2;
-- acessar o banco de dados
use db_ecommerce2;
-- criar primeira tabela
create table tb_categoria(
	id bigint auto_increment,
    descricao varchar(255) not null,
    ativo boolean not null,
    primary key (id)
);
-- criar segunda tabela
create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(10,2) not null,
    quantidade int not null,
    categoria_id bigint, 
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);
-- inserir os dados na primeira tabela 
insert into tb_categoria (descricao, ativo) values ("Esporte", true);
insert into tb_categoria (descricao, ativo) values ("Infantil", true);
insert into tb_categoria (descricao, ativo) values ("Eletrodomésticos", true);
insert into tb_categoria (descricao, ativo) values ("Tecnologia", true);
insert into tb_categoria (descricao, ativo) values ("Ferramentas", true);
-- inserir os dados na segunda tabela
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Bicicleta", 1000.00, 10, 1);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Boneca", 500.00, 8, 2);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Geladeira", 2500.00, 5, 3);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Celular X", 1500.00, 7, 4);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Escada", 1000.00, 10, 5);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Prancha", 500.00, 8, 1);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Patinete", 1200, 2, 1);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Carrinho", 1500.00, 10, 2);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Televisão", 3000.00, 5, 3);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Mesa", 3000.00, 3, 3);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Microondas", 1000.00, 9, 3);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Celular Y", 1800.00, 10, 4);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Computador X", 3000.00, 8, 4);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Furadeira", 500.00, 7, 5);
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Máquina", 1500.00, 10, 5);

select*from tb_produto where preco > 2000.00;
select*from tb_produto where preco >= 1000 && preco <= 2000;

select*from tb_produto where nome like "c%";