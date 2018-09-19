------------- Populate Pessoa -------------
-- insert into Pessoa values ('nome', 'telefone', 'pais', 'estado', 'cidade', 'cep', 'logradouro', 'bairro', numero, 'complemento')

insert into Pessoa values ('Luis Felipe Cambiaghe Guedes', '16997651512', 'Brasil', 'São Paulo', 'Araraquara', '14800200', 'Rua Comendador Pedro Morganti', 'Carmo', 1050, 'Próximo ao Colégio Florestano Libuti');
insert into Pessoa values ('Ana Laura Cambiaghe Guedes', '16997665542', 'Brasil', 'São Paulo', 'Araraquara', '14800200', 'Rua Comendador Pedro Morganti', 'Carmo', 1050, 'Próximo ao Colégio Florestano Libuti');
insert into Pessoa values ('Fernando Oliveira', '16997442193', 'Brasil', 'São Paulo', 'Araraquara', '14810038', 'Av. Vincente Jeronimo Freire', 'Vila Xavier', 144, null);
insert into Pessoa values ('Regiane Souza Filho', '16981736455', 'Brasil', 'São Paulo', 'Araraquara', '14803010', 'Estrada Nélson Barbieri', 'Rec Camp Idanorma', 428, 'Estrada para Gavião Peixoto');
insert into Pessoa values ('Fabio Papini', '16945346789', 'Brasil', 'São Paulo', 'Araraquara', '14803010', 'Rua Padre Duarte', 'Centro', 428, 'Próximo ao Colégio Progresso');

------------- Populate Aluno -------------
-- insert into aluno values (pessoa_id, alu_rm, 'alu_turma');
insert into Aluno values (1, 44325, 'B1');
insert into Aluno values (2, 44326, 'A1');
insert into Aluno values (4, 44200, 'A1');


------------- Populate Professor -------------
-- insert into Professor values (pessoa_id, cnte, salario);
insert into Professor values (3, 123456, 3500.00);
insert into Professor values (5, 654321, 6530.00);


------------- Populate Disciplina -------------
-- insert into Disciplina values ('nome', carga_horaria);
insert into Disciplina values ('Banco de Dados', 80);
insert into Disciplina values ('Java', 80);
insert into Disciplina values ('Banco de Dados II', 80);
insert into Disciplina values ('Java II', 80);
insert into Disciplina values ('Regar Plantação', 80);
insert into Disciplina values ('Regar Plantação II', 80);
insert into Disciplina values ('Arvorismo', 80);
insert into Disciplina values ('Relevo da Terra', 80);

------------- Populate Curso -------------
-- insert into Curso values ('nome', 'turno'); comentar sobre lista disciplina
insert into Curso values ('Sistemas de Informação', 'Tarde');
insert into Curso values ('Engenharia Ambiental', 'Manhã');

------------- Populate Lista_Disciplina -------------
-- insert into Lista_Disciplina values ('curso_nome', disciplina_id); comentar sobre lista disciplina
insert into Lista_Disciplina values ('Sistemas de Informação', 1);
insert into Lista_Disciplina values ('Sistemas de Informação', 2);
insert into Lista_Disciplina values ('Sistemas de Informação', 3);
insert into Lista_Disciplina values ('Sistemas de Informação', 4);
insert into Lista_Disciplina values ('Engenharia Ambiental', 5);
insert into Lista_Disciplina values ('Engenharia Ambiental', 6);
insert into Lista_Disciplina values ('Engenharia Ambiental', 7);
insert into Lista_Disciplina values ('Engenharia Ambiental', 8);

------------- Populate Coordenadores -------------
-- insert into aluno values ('curso_nome', professor_cnte);
insert into Coordenadores values ('Sistemas de Informação', 654321);
insert into Coordenadores values ('Engenharia Ambiental', 123456);


------------- Populate Boletim -------------
-- insert into aluno values (aluno_ra, disciplina_id, ano, 'semestre', p1, p2, p3);
insert into Boletim values (44325, 1, 2016, '1º - Semestre', 10, 8, null);
insert into Boletim values (44325, 2, 2016, '1º - Semestre', 5, 3, 0);
insert into Boletim values (44325, 3, 2016, '1º - Semestre', 7, 8, null);
insert into Boletim values (44325, 4, 2016, '1º - Semestre', 4, 4, 7);
insert into Boletim values (44200, 5, 2015, '1º - Semestre', 10, 8, null);
insert into Boletim values (44200, 6, 2015, '1º - Semestre', 5, 3, 0);
insert into Boletim values (44200, 7, 2015, '1º - Semestre', 7, 8, null);
insert into Boletim values (44200, 8, 2015, '1º - Semestre', 4, 4, 7);
insert into Boletim values (44326, 5, 2015, '1º - Semestre', 8, 7, null);
insert into Boletim values (44326, 6, 2015, '1º - Semestre', 9, 10, null);
insert into Boletim values (44326, 7, 2015, '1º - Semestre', 6, 9, null);
insert into Boletim values (44326, 8, 2015, '1º - Semestre', 10, 10, null);



------------- Populate Professor_Disciplina -------------
-- insert into Professor_Disciplina values (professor_cnte, disciplina_id, ano);
    insert into Professor_Disciplina values (123456, 5, 2015);
    insert into Professor_Disciplina values (123456, 6, 2015);
    insert into Professor_Disciplina values (123456, 7, 2015);
    insert into Professor_Disciplina values (123456, 8, 2015);
    insert into Professor_Disciplina values (654321, 1, 2016);
    insert into Professor_Disciplina values (654321, 2, 2016);
    insert into Professor_Disciplina values (654321, 3, 2016);
    insert into Professor_Disciplina values (654321, 4, 2016);