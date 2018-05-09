------------- Populate Empresas ------------- OK
-- insert into empresa values (cnpj, nome, telefone, website, end_cidade, end,bairro, end_numero, end_logradouro, end_cep);
insert into empresa values (32156778902, 'Paraty', 1633885432, 'www.paraty.bus.br', 'Araraquara', 'Centro', 'Rua dos Busões', 122, '14800100');
insert into empresa values (20987765123, 'Empresa Cruz', 1633351728, 'www.empresacruz.bus.br', 'Araraquara', 'Centro', 'Rua dos Busões', 124, '14800100');
--teste de erro (nome ou cnpj igual) OK
--insert into empresa values (20987765123, 'Empresa Cruz', 1633351728, 'www.empresacruz.bus.br', 'Araraquara', 'Centro', 'Rua dos Busões', 124, '14800100');

------------- Populate Linhas ------------- OK
-- insert into linha values (numero, nome);
insert into linha values ('Rodoviária / TCI');
insert into linha values ('Fonte/Jardim das Estações');
insert into linha values ('Jardim Santa Lúcia');
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

------------- Populate quadro_hora -------------
-- insert into quadro_hora values (cnpj_empresa, numero_linha, dia, hora)
insert into quadro_hora values (32156778902, 1, 'Segunda-Feira', '12:00');
insert into quadro_hora values (32156778902, 2, 'Terça-Feira', '10:00');
insert into quadro_hora values (32156778902, 1, 'Quarta-Feira', '13:00');
insert into quadro_hora values (32156778902, 1, 'Quinta-Feira', '16:00');
insert into quadro_hora values (32156778902, 1, 'Sexta-Feira', '13:00');
insert into quadro_hora values (20987765123, 1, 'Quarta-Feira', '10:20');
insert into quadro_hora values (20987765123, 3, 'Sexta-Feira', '19:00');

------------- Populate itinerario -------------
-- insert into itinerario values (numerolinha, codigolog, ordem, sentido)
-- itinerario linha 1.
insert into itinerario values (1, 1, 1, 'Centro');
insert into itinerario values (1, 2, 2, 'Shopping Palmeiras sem mundial');
insert into itinerario values (1, 3, 3, 'Escola Do Senhor Tatu');
insert into itinerario values (1, 4, 4, 'Aeroporto');
insert into itinerario values (1, 5, 5, 'TCI');
insert into itinerario values (1, 6, 6, 'Faculdade Integradas Lumpalumpa');

-- itinerario linha 2.
insert into itinerario values (2, 2, 1, 'Centro');
insert into itinerario values (2, 1, 2, 'Aeroporto');
insert into itinerario values (2, 5, 3, 'Faculdade Integradas Lumpalumpa');
insert into itinerario values (2, 3, 4, 'Shopping Palmeiras sem mundial');
insert into itinerario values (2, 6, 5, 'TCI');
insert into itinerario values (2, 4, 6, 'Escola Do Senhor Tatu');
---------------------------------------------------------------------------