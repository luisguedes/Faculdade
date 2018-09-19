USE master 
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'dbpapinitrab3')
BEGIN
	DROP DATABASE dbpapinitrab3
END
GO

CREATE DATABASE dbpapinitrab3
GO

USE dbpapinitrab3
GO


CREATE TABLE Editora (
	cnpj varchar (100) not null,
	editoranome varchar (100) not null unique,
	pais varchar (100) not null,
    estado varchar (100) not null,
    cidade varchar (100) not null,
    cep varchar (100) not null,
	logradouro varchar (100) not null,
    bairro varchar (100) not null,
	numero int not null,
    complemento varchar (100),

    constraint PK_Editora_Cnpj primary Key (cnpj),
    constraint UNQ_EditoraNome unique (editoranome),
);


Create TABLE EditoraTelefone(
	cnpj_editora varchar (100) not null,
	telefone varchar (20) not null,
    
    --conferir!
    constraint FK_CnpjEditora foreign key (cnpj_editora) references Editora (cnpj),
    constraint PK_EditoraTelefone_CnpjEditora primary Key (telefone),
);

Create TABLE Biblioteca_Coc(
	cnpj varchar (100) not null,
	ramal int not null,
	website varchar (100) not null,

    --conferir!
	constraint PK_Biblioteca_Coc_Cnpj primary Key (cnpj),
    constraint UNQ_BibliotecaRamal unique (ramal),
);

Create TABLE Livro(
    --cnpj_editora varchar (100) not null REFERENCES editora(cnpj),
    --cnpj_biblioteca varchar (100) not null REFERENCES biblioteca_coc(cnpj),
    cnpj_editora varchar (100) not null,
    cnpj_biblioteca varchar (100) not null,
	isbn varchar (100) not null,
	qtde int not null,
    titulo varchar (100) not null,
    autor varchar (100) not null,

    constraint FK_Livro_CnpjLivro foreign key (cnpj_editora) references Editora (cnpj),
    constraint FK_Livro_CnpjBiblioteca foreign key (cnpj_biblioteca) references Biblioteca_Coc (cnpj),
    constraint PK_Livro primary Key (cnpj_editora, isbn),
    --constraint cnpj_editora unique (livroisbn),

);

Create TABLE Pessoa(
    cnpj_biblioteca varchar (100) not null,
    codigo int IDENTITY(1,1) not null,
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
    
    constraint FK_Pessoa_CnpjBiblioteca foreign key (cnpj_biblioteca) references Biblioteca_Coc (cnpj),
	constraint PK_pessoa_Codigo primary key (codigo),
);

Create TABLE Aluno(
    pessoa_codigo int,
    alu_rm int,
    alu_turma varchar (100),

    constraint FK_Aluno_CodigoPessoa foreign key (pessoa_codigo) references Pessoa (codigo),
	constraint PK_Aluno_AluRm primary key (alu_rm),

);

Create TABLE Funcionario(
    pessoa_codigo int,
    func_rt int,
    func_setor varchar (100),
    
    constraint FK_Funcionario_CodigoPessoa foreign key (pessoa_codigo) references pessoa (codigo),
	constraint PK_Funcionario_FuncRt primary key (func_rt),
);

CREATE TABLE Log
(
 id int identity(1,1) NOT NULL,
 data datetime,
 msg varchar(max),
 Constraint PK_Log_Id PRIMARY KEY(id)
);