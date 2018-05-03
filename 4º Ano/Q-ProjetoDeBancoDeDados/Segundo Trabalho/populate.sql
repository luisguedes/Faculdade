------------- Populate Empresas ------------- OK
-- insert into empresa values (cnpj, nome, telefone, website, end_cidade, end,bairro, end_numero, end_logradouro, end_cep);
insert into empresa values (32156778902, 'Paraty', 1633885432, 'www.paraty.bus.br', 'Araraquara', 'Centro', 'Rua dos Busões', 122, '14800100');
insert into empresa values (20987765123, 'Empresa Cruz', 1633351728, 'www.empresacruz.bus.br', 'Araraquara', 'Centro', 'Rua dos Busões', 124, '14800100');
--teste de erro (nome ou cnpj igual) OK
--insert into empresa values (20987765123, 'Empresa Cruz', 1633351728, 'www.empresacruz.bus.br', 'Araraquara', 'Centro', 'Rua dos Busões', 124, '14800100');

------------- Populate Linhas ------------- OK
-- insert into linha values (numero, nome);
insert into linha values (30, 'Rodoviária / TCI');
insert into linha values (20, 'Fonte/Jardim das Estações');
insert into linha values (10, 'Jardim Santa Lúcia');
--teste de erro (numero ou nome da linha igual) OK
--insert into linha values (10, 'Jardim Santa Lúcio');

------------- Populate Logradouro -------------
-- insert into logradouro values (nome)
insert into logradouro values ('Rua Paulo henrique');
insert into logradouro values ('Rua Papini Junior');
insert into logradouro values ('Rua Luis Filipe II');
insert into logradouro values ('Rua Renata Menabue');
insert into logradouro values ('Rua Monica Braga');
insert into logradouro values ('Rua Clélia Cambiaghi');
insert into logradouro values ('Rua Timão eô');
insert into logradouro values ('Rua Palmeiras sem mundial');
--teste de erro (nome igual) OK
--insert into logradouro values ('Rua Palmeiras sem mundial');

------------- Populate grade_hora -------------
-- insert into grade_hora values (cnpj_empresa, numero_linha, dia, hora)
insert into quadro_hora values (32156778902, 10, 'Segunda-Feira', '12:00');
insert into quadro_hora values (32156778902, 20, 'Terça-Feira', '10:00');
insert into quadro_hora values (20987765123, 10, 'Quarta-Feira', '10:20');
insert into quadro_hora values (20987765123, 30, 'Sexta-Feira', '19:00');

------------- Populate itinerario -------------
-- insert into itinerario values (numerolinha, codigolog, ordem, sentido)
-- itinerario linha 10.
insert into itinerario values (10, 1, 1, 'Centro');
insert into itinerario values (10, 2, 2, 'Shopping Palmeiras sem mundial');
insert into itinerario values (10, 3, 3, 'Escola Do Senhor Tatu');
insert into itinerario values (10, 4, 4, 'Aeroporto');
insert into itinerario values (10, 5, 5, 'TCI');
insert into itinerario values (10, 6, 6, 'Faculdade Integradas Lumpalumpa');

-- itinerario linha 20.
insert into itinerario values (20, 2, 1, 'Centro');
insert into itinerario values (20, 1, 2, 'Centro');
insert into itinerario values (20, 5, 3, 'Centro');
insert into itinerario values (20, 3, 4, 'Centro');
insert into itinerario values (20, 6, 5, 'Centro');
insert into itinerario values (20, 4, 6, 'Centro');
---------------------------------------------------------------------------