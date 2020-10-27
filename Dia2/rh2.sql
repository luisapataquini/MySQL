-- criar um banco de dados
create database db_RH2;
-- acessar o banco de dados
use db_RH2;
-- criar a primeira tabela
create table tb_cargo(
	id bigint auto_increment,
	setor varchar(255) not null,
	funcao varchar(255) not null,
    salario decimal(10,2) not null,
	primary key (id)
);
-- criar a segunda tabela
create table tb_funcionario(
	id bigint auto_increment,
	nome varchar(255) not null,
    cpf bigint(11) not null,
	data_inicio date not null,
	contrato boolean,
    cargo_id bigint not null, 
    primary key (id),
	foreign key (cargo_id) references tb_cargo (id)
);
-- preencher a primeira tabela 
insert into tb_cargo(setor, funcao, salario) values ("Administrativo", "Auxiliar Administrativo", 1500.00);
insert into tb_cargo(setor, funcao, salario) values ("Financeiro", "Auxiliar Contábil", 2000.00);
insert into tb_cargo(setor, funcao, salario) values ("Comercial", "Gerente de Vendas", 4000.00);
insert into tb_cargo(setor, funcao, salario) values ("Recursos Humanos", "Analista de recursos humanos", 2000.00);
insert into tb_cargo(setor, funcao, salario) values ("Tecnologia", "Desenvolvedor Java", 3500.00);
-- preencher a segunda tabela
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Luisa", 44433322212 , "2020-01-01", true, 5);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Fernanda", 1234567891 , "2020-02-01", true, 1);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("João", 76543876511 , "2020-03-01", true, 2);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Isabela", 76543309811 , "2020-03-01", true, 3);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Felipe", 12356789011 , "2020-04-01", true, 1);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Marcos", 54321765478 , "2020-04-01", true, 4);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Roberta", 23456789066 , "2020-02-01", true, 5);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Luis", 12367865411 , "2020-03-01", true, 5);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Fernando", 65489612899 , "2020-04-01", true, 2);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Sueli", 76548976599 , "2020-05-01", true, 3);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Ricardo", 43587690811 , "2020-06-01", true, 1);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Maria", 54678965477 , "2020-01-01", true, 2);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("José", 12367898744 , "2020-02-01", true, 4);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Fábio", 65489732166 , "2020-03-01", true,3);
insert into tb_funcionario(nome, cpf, data_inicio, contrato, cargo_id) values ("Eliana", 76598765311 , "2020-04-01", true, 4);

select * from tb_cargo where salario > 2000;
select * from tb_cargo where salario >= 1000 && salario <=2000;

select * from tb_funcionario where nome like "C%"; 