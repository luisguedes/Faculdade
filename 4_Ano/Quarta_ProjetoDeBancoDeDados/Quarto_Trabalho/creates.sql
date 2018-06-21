USE master 
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'dbpapinitrab4')
BEGIN
	DROP DATABASE dbpapinitrab4
END
GO

CREATE DATABASE dbpapinitrab4
GO

USE dbpapinitrab4
GO


CREATE TABLE Pessoa (
    id int identity not null,
    nome varchar (100) not null,
	telefone varchar (20) not null,
	pais varchar (100) not null,
    estado varchar (100) not null,
    cidade varchar (100) not null,
    cep varchar (100) not null,
	logradouro varchar (100) not null,
    bairro varchar (100) not null,
	numero int not null,
    complemento varchar (100),
	
    constraint PK_Pessoa_Id primary key (id),
);

CREATE TABLE Aluno (
    pessoa_id int not null,
    ra int not null,
    alu_turma varchar (100),
	
    constraint PK_Aluno_Id primary key (ra),
    constraint REF_Aluno_Pessoa_Id foreign key (pessoa_id) references Pessoa (id),
    constraint UNQ_Aluno_Pessoa_Id unique (pessoa_id),
);

CREATE TABLE Professor (
    pessoa_id int not null,
    cnte int not null,
    salario float not null,
	
    constraint PK_Professor_Id primary key (cnte),
    constraint REF_Professor_Pessoa_Id foreign key (pessoa_id) references Pessoa (id),
    constraint UNQ_Professor_Pessoa_Id unique (pessoa_id),
	
);

CREATE TABLE Disciplina (
    id int identity not null,
    nome varchar (100) not null,
    carga_horaria int not null,
	
    constraint PK_Disciplina_Id primary key (id),
	
);

CREATE TABLE Curso (
    nome varchar (100) not null,
    turno varchar (100) not null,

    constraint PK_Curso_Id primary key (nome),
);

CREATE TABLE Lista_Disciplina
    (
        id int IDENTITY(1,1) not null,
        curso_nome varchar (100) not null,
        disciplina_id int not null,

        Constraint PK_Lista_Disciplina_Id PRIMARY KEY(id),
        constraint FK_Lista_Disciplina_Curso_nome foreign key (curso_nome) references Curso (nome),
        constraint FK_Lista_Disciplina_Disciplina_Id foreign key (disciplina_id) references Disciplina (id),
        constraint INQ_Lista_Disciplina unique (disciplina_id),
    );

CREATE TABLE Coordenadores -- perguntar sobre ano
    (
        id int IDENTITY(1,1) not null,
        curso_nome varchar (100) not null,
        professor_cnte int not null,

        Constraint PK_Coordenadores_Id PRIMARY KEY(id),
        constraint FK_Coordenadores_Curso_nome foreign key (curso_nome) references Curso (nome),
        constraint FK_Coordenadores_Professor_Cnte foreign key (professor_cnte) references Professor (cnte),
        constraint INQ_Coordenadores unique (curso_nome),
    );


CREATE TABLE Boletim (
    id int identity not null,
    aluno_ra int not null,
    disciplina_id int not null,
    ano int not null,
    semestre varchar (50) not null,
    p1 int not null,
    p2 int not null,
    p3 int,
	
    constraint PK_Boletim_Id primary key (id),
    constraint REF_Boletim_Pessoa_Id foreign key (aluno_ra) references aluno (ra),
    constraint REF_Boletim_disciplina_id foreign key (disciplina_id) references Disciplina (id),
	
);

CREATE TABLE Professor_Disciplina (
    professor_cnte int not null,
    disciplina_id int not null,
    ano int not null,
	
    constraint PK_Professor_Disciplina_Id primary key (disciplina_id),
    constraint UNQ_Professor_Disciplina_Cnte unique (disciplina_id, ano),
    constraint REF_Professor_Disciplina_Pessoa_Id foreign key (professor_cnte) references professor (cnte)
);