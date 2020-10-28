create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
create table tb_categorias(
	id bigint auto_increment,
	tipo varchar(255) not null,
	ativo boolean not null,
	primary key (id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
	preco decimal(10,2) not null,
	certificado boolean not null,
	categoria bigint not null,
    primary key (id),
	foreign key (categoria) references tb_categorias (id)
);

insert into tb_categorias(tipo, ativo) values ("TI e Software", true);
insert into tb_categorias(tipo, ativo) values ("Marketing", true);
insert into tb_categorias(tipo, ativo) values ("Finanças", true);
insert into tb_categorias(tipo, ativo) values ("Design", true);
insert into tb_categorias(tipo, ativo) values ("Negócios", true);

insert into tb_produtos(nome, preco, certificado, categoria) values ("Python", 30.99, true, 1);
insert into tb_produtos(nome, preco, certificado, categoria) values ("Git", 27.99, true, 1);
insert into tb_produtos(nome, preco, certificado, categoria) values ("Java", 50.99, true, 1);
insert into tb_produtos(nome, preco, certificado, categoria) values ("Google ADS", 60.00, true, 2);
insert into tb_produtos(nome, preco, certificado, categoria) values ("Investimentos", 50.99, true, 3);
insert into tb_produtos(nome, preco, certificado, categoria) values ("Adobe Photoshop", 35.99, true, 4);
insert into tb_produtos(nome, preco, certificado, categoria) values ("UX", 25.99, true, 4);
insert into tb_produtos(nome, preco, certificado, categoria) values ("Scrum", 29.99, true, 5);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco >= 3.00 && preco <= 60.00;
select * from tb_produtos where nome like "jav%";

select tb_produtos.nome, tb_produtos.preco, tb_produtos.certificado, tb_categorias.tipo from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.certificado, tb_categorias.tipo from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria
where tb_categorias.tipo = "Design";