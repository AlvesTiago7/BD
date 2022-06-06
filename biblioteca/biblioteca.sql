create database livraria;

create table pessoafisica(
    cpf varchar(11) primary key not null
);

create table cliente(
    codigo int primary key not null,
    telefone varchar(11),
    endereço varchar(45),
    cpf varchar(11) primary key not null,
    foreign key (cpf) references 
    pessoafisica (cpf)
);

create table emprestimo (
    codigocliente int not null,
    isbn int not null,
    dataemp date,
    datadev date,
    primary key (codigocliente, isbn)
    );

create table livro(
    isbn int primary key not null,
    nc int (45), 
    titulo varchar (60) not null,
    autor varchar(45),
    codigoeditora varchar(45), 
    numLivro int (20) not null
);

create table editora(
    codigo int primary key not null,
    endereco varchar(45),
    telefone varchar(11),
    gerente varchar(45)

);