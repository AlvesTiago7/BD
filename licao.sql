 CREATE DATABASE licao;

CREATE TABLE livros(
titulo varchar (50) not null PRIMARY KEY,
numExemplar int (5) not null PRIMARY KEY,
PriAutor varchar (50) not null,
SegAutor varchar (50),
TerAutor varchar (50),
estatus boolean not null PRIMARY KEY);

CREATE Table emprestimo(
pessoa varchar (100) not null,
CONSTRAINT livTit FOREIGN KEY (titulo) REFERENCES livros (titulo),
CONSTRAINT livExem FOREIGN KEY (numExemplar) REFERENCES livros (numExemplar),
CONSTRAINT livStatus FOREIGN KEY (estatus) REFERENCES livros (estatus)
);

