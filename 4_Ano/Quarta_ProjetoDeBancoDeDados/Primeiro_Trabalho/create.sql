create table continente (
    nome varchar (60) NOT NULL PRIMARY KEY,
    area bigint NOT NULL,
    pop bigint NOT NULL,
);

create table pais (
    nome varchar (60) NOT NULL PRIMARY KEY,
    area bigint NOT NULL,
    pop bigint NOT NULL,
    moed varchar (110) NOT NULL,
    ling varchar (110) NOT NULL,
    d_ref_hist date NOT NULL,
    presidente varchar (110) NOT NULL,
    capital varchar (110) NOT NULL,
    regdem varchar (110) NOT NULL,
    continente_id varchar (60) NOT NULL REFERENCES continente(nome)
);

create table cidade (
    id integer IDENTITY(1,1) NOT NULL PRIMARY KEY,
    idade date NOT NULL,
    nome varchar (110) NOT NULL,
    pop integer NOT NULL,
    descricao text,
    pais_id varchar (60) NOT NULL REFERENCES pais(nome),
);

create table hotel (
    cnpj integer NOT NULL PRIMARY KEY,
    nome varchar (110) NOT NULL,
    estrelas integer NOT NULL,
    cidade_id integer NOT NULL REFERENCES cidade(id)
);

create table quarto (
    id integer IDENTITY(1,1) NOT NULL PRIMARY KEY,
    tipo varchar (110) NOT NULL,
);

create table hotel_quarto (
    id integer IDENTITY(1,1) NOT NULL PRIMARY KEY,
    preco decimal NOT NULL,
    hotel_id integer NOT NULL REFERENCES hotel(cnpj),
    quarto_id integer NOT NULL REFERENCES quarto(id)
)


