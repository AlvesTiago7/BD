create database livraria;

create table livros(id serial PRIMARY KEY, titulo varchar(100), subtitulo varchar(100));

create table autores(nome varchar(100), sobrenome varchar(100));

create table funcionarios(nome varchar(100), sobrenome varchar(100), cargo varchar(100));

create table clientes(nome varchar(100), sobrenome varchar(100), rg integer, cpf integer);

create table emprestimos(nomelivro varchar(100), nomecliente varchar(100));

create table fornecedores(nome varchar(100), endereco varchar(100));

create table credenciados(identificacao integer);