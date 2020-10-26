-- criar um banco de dados
create database db_ecommerce;
-- acessar o banco de dados
use db_ecommerce;
-- criar uma tabela 
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50) not null,
    preco decimal(10,2) not null,
    quantidade bigint not null,
    marca varchar(50) not null,
    primary key (id)
);
-- inserir dados na tabela
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera W", 450.00, 10, "Polaroid");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera WW", 480.00, 10, "Instax");   
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera X", 450.00, 3, "Instax");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera Y", 430.00, 5, "Canon");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera Z", 490.99, 10, "Nikon");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera XX", 1000.99, 8, "Sony");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera ZZ", 1500.99, 11, "EOS");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Câmera YYY", 1800.99, 6, "Canon");    

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set quantidade = 9 where id =1;

select * from tb_produtos;
