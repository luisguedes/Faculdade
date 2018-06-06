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


CREATE TABLE editora (
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

    constraint pkcnpj primary Key (cnpj),
    constraint editoranome unique (editoranome),
);


Create TABLE editora_telefone(
	cnpj_editora varchar (100) not null,
	telefone varchar (20) not null,
    
    --conferir!
    constraint fkcnpj_editora foreign key (cnpj_editora) references editora (cnpj),
    constraint pkeditora_telefone primary Key (telefone),
);

Create TABLE biblioteca_coc(
	cnpj varchar (100) not null,
	ramal int not null,
	website varchar (100) not null,

    --conferir!
	constraint pkbiblioteca_cnpj primary Key (cnpj),
    constraint biblioteca_ramal unique (ramal),
);

Create TABLE livro(
    --cnpj_editora varchar (100) not null REFERENCES editora(cnpj),
    --cnpj_biblioteca varchar (100) not null REFERENCES biblioteca_coc(cnpj),
    cnpj_editora varchar (100) not null,
    cnpj_biblioteca varchar (100) not null,
	isbn varchar (100) not null,
	qtde int not null,
    titulo varchar (100) not null,
    autor varchar (100) not null,

    constraint fklivro_cnpj_livro foreign key (cnpj_editora) references editora (cnpj),
    constraint fklivro_cnpj_biblioteca foreign key (cnpj_biblioteca) references biblioteca_coc (cnpj),
    constraint pklivro primary Key (cnpj_editora, isbn),
    --constraint cnpj_editora unique (livroisbn),

);

Create TABLE pessoa(
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
    
    constraint fkpessoa foreign key (cnpj_biblioteca) references biblioteca_coc (cnpj),
	constraint pkpessoa primary key (codigo),
);

Create TABLE aluno(
    codigo_pessoa int,
    alu_rm int,
    alu_turma varchar (100),

    constraint fkaluno foreign key (codigo_pessoa) references pessoa (codigo),
	constraint pkaluno primary key (alu_rm),

);

Create TABLE funcionario(
    codigo_pessoa int,
    func_rt int,
    func_setor varchar (100),
    
    constraint fkfuncionario foreign key (codigo_pessoa) references pessoa (codigo),
	constraint pkfuncionario primary key (func_rt),
);