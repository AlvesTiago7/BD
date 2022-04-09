Create Database Livros;

create table Autor
(ID_AUTOR integer PRIMARY KEY AUTOINCREMENT,
nome varchar (100) not null,
sobrenome vachar (100) not null,
ID_Genero integer,
CONSTRAINT fk_Genero FOREIGN KEY (ID_Genero) REFERENCES Genero (ID_Genero)
);

create table Título
(ID_Título integer PRIMARY KEY AUTOINCREMENT,
nome varchar (100) not null,
ID_SubTítulo integer,
CONSTRAINT fk_SubTítulo FOREIGN KEY (ID_SubTítulo) REFERENCES SubTítulo (ID_SubTítulo)
);

