CREATE TABLE empresa (
	cnpj varchar (100) not null primary key,
	nome varchar (100) not null,
	telefone varchar (100) not null,
	website varchar (100) not null,
	end_cidade varchar (100) not null,
	end_bairro varchar (100) not null,
    end_logradouro varchar (100) not null,
	end_numero bigint not null,
	end_cep varchar (100) not null,

    constraint nomeemp unique(nome),
);


Create TABLE linha(
	numero int not null primary key,
	nome varchar (100) not null unique,
    
    constraint nomelinha unique(nome),
);

Create TABLE logradouro(
	codigo int IDENTITY(1,1) not null primary key,
	nome varchar (100) not null,

    constraint nomelog unique(nome)

);


Create TABLE quadro_hora(
	cnpj_empresa varchar (100) not null REFERENCES empresa(cnpj),
	numero_linha int not null REFERENCES linha(numero),
	dia varchar (100) not null,
	hora varchar (100) not null,

	Constraint pkquadroHora primary Key (dia,hora)
    --constraint horario unique(hora), como ter dias iguais com horarios diferentes não podendo ter horario igual
);

Create TABLE itinerario(
	numerolinha int not null REFERENCES linha(numero),
	codigolog int not null REFERENCES logradouro(codigo),
	ordem int not null primary key,
	sentido varchar(100) not null,
);