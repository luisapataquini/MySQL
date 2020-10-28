create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean,
primary key (id)
);
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null,
quantidade int not null,
categoria bigint not null,
primary key(id),
foreign key(categoria) references tb_categorias(id)
);

insert into tb_categorias(descricao, ativo) values ("Banheiro", true);
insert into tb_categorias(descricao, ativo) values ("Cozinha", true);
insert into tb_categorias(descricao, ativo) values ("Home Office", true);
insert into tb_categorias(descricao, ativo) values ("Ferramentas", true);
insert into tb_categorias(descricao, ativo) values ("Decoração", true);

insert into tb_produtos(nome, preco, quantidade, categoria) values ("Chuveiro", 100.00, 100, 1);
insert into tb_produtos(nome, preco, quantidade, categoria) values ("Porta Talheres", 69.90, 80, 2);
insert into tb_produtos(nome, preco, quantidade, categoria) values ("Escorredor de Louças", 66.90, 100, 2);
insert into tb_produtos(nome, preco, quantidade, categoria) values ("Lixeira", 30.99, 50, 3);
insert into tb_produtos(nome, preco, quantidade, categoria) values ("Porta Caneta", 10.00, 90, 3);
insert into tb_produtos(nome, preco, quantidade, categoria) values ("Alicate", 35.00, 120, 4);
insert into tb_produtos(nome, preco, quantidade, categoria) values ("Porta-Retratos", 30.00, 20, 5);
insert into tb_produtos(nome, preco, quantidade, categoria) values ("Papel de Parede", 25.90, 35, 5);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco >= 3.00 && preco <= 60.00;
select * from tb_produtos where nome like "C%";

select tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade, tb_categorias.descricao from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade, tb_categorias.descricao from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria
where tb_categorias.descricao = "home office";