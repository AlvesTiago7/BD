create table livros(
id serial PRIMARY KEY, 
nome varchar(200) NOT NULL
);

create table usuario(
ide serial PRIMARY KEY,
nome varchar(200) NOT NULL
);

create table emprestimo(
id serial PRIMARY KEY,
id_livros integer NOT NULL,
id_usuario integer NOT NULL
);

ALTER TABLE Emprestimo
ADD CONSTRAINT EmprestimoLivros
FOREIGN KEY (id_livros) REFERENCES livros;

ALTER TABLE Emprestimo
ADD CONSTRAINT EmprestimoUsuario
FOREIGN KEY (id_usuario) REFERENCES Usuario;

insert into livros (nome) values ('Mentes Depressiva'),('Marcados'),('Pequeno Principe'),('Fabulas'),('Vendedor de Sonhos');
insert into usuario (nome) values ('Tiago'),('Alexandre'),('Matheus'),('Beatriz');
insert into emprestimo (id_usuario,id_livros) values (1,1),(2,2),(2,3),(4,1),(4,2),(4,3),(4,4);

select * from emprestimo;

select liv.nome as livros, usu.nome as usuario from emprestimo as emp
join livros as liv on liv.id = emp.id_livros
join usuario as usu on usu.ide = emp.id_usuario;

select emp.id as emprestimo, liv.nome as livros from emprestimo as emp
right join livros as liv on liv.id = emp.id_livros;

select emp.id as emprestimo, liv.nome as livros from emprestimo as emp
left join livros as liv on liv.id = emp.id_livros;