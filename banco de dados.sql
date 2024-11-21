create table estudantes (
	matricula serial primary key,
	nome_completo varchar(100) not null,
	data_nascimento date not null,
	email varchar(100) unique not null,
	telefone varchar(15)
);

create table livros (
	codigo serial primary key,
	titulo varchar(150) not null,
	autor varchar(100)not null,
	editora varchar(100),
	ano int,
	status varchar(20) default 'disponível' not null
);

create table emprestimos (
	codigo serial primary key,
	codigo_livro int not null references livros(codigo),
	matricula_estudante int not null references estudantes(matricula),
	data_retirada date not null,
	devolucao boolean default false
);