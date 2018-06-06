------------- Populate Editora ------------- OK
-- insert into editora values ('cnpj', 'editoranome', 'pais', 'estado', 'cidade', 'cep', 'logradouro', 'bairro', numero, 'complemento');
insert into editora values ('80.354.229/0001-63', 'Editora Abril', 'Brasil', 'São Paulo', 'São Paulo', '05425-902', 'Av. das Nações Unidas', 'Pinheiros', 7221,'');
insert into editora values ('93.196.755/0001-94', 'Editora COC', 'Brasil', 'São Paulo', 'Ribeirão Preto', '14095-210', 'Av. Pres. Kennedy', 'Ribeirânia', 2295,'');
insert into editora values ('98.094.349/0001-34', 'Editora Rocco', 'Brasil', 'Rio de Janeiro', 'Rio de Janeiro', '20030-021', 'Av. Pres. Wilson', 'Jardim dos Ipes', 231, '8º andar');
-- //teste de erro (nome igual + cnpj igual) Não cadastra (OK)
-- //teste de erro (nome igual + cnpj igual) Não cadastra (OK)

------------- Populate Editora_Telefone ------------- OK
-- insert into editora_telefone values ('cnpj_editora', 'telefone');
insert into editora_telefone values ('80.354.229/0001-63', '1641424344');
insert into editora_telefone values ('80.354.229/0001-63', '1641424345');
insert into editora_telefone values ('93.196.755/0001-94', '1621223233');
insert into editora_telefone values ('98.094.349/0001-34', '1631323334');
insert into editora_telefone values ('98.094.349/0001-34', '1631323335');

-- //teste de erro (Inserir mesmo cnpj + mesmo telefone) Não cadastra (OK)
-- //teste de erro (Inserir mesmo cnpj + telefone inexistente) Cadastra (OK)
-- //teste de erro (Inserir cnpj diferente + telefone existente) Não Cadastra (OK)

------------- Populate Biblioteca_COC -------------
-- insert into biblioteca_coc values ('cnpj', 'ramal', 'website')
insert into biblioteca_coc values ('54.828.227/0001-59', '1628', 'www.cocararaquara.com.br/biblioteca')


------------- Populate Livro -------------
-- insert into livro values ('cnpj_editora', 'cnpj_biblioteca', 'isbn', qtde, 'titulo', 'assunto', 'autor');
insert into livro values ('80.354.229/0001-63', '54.828.227/0001-59', '455-697519020-1', 10, 'Gramática de Uso da Língua Inglesa', 'Liverson Ramos');
insert into livro values ('80.354.229/0001-63', '54.828.227/0001-59', '492-995345194-4', 15, 'Introdução a sistemas de bancos de dados', 'Fábio Papini');
insert into livro values ('80.354.229/0001-63', '54.828.227/0001-59', '471-607092597-6', 12, 'Java para Iniciantes', 'Fábio Papini');
insert into livro values ('93.196.755/0001-94', '54.828.227/0001-59', '248-568710756-2', 20, 'Fundamentos Pedagógicos da Educação Infantil', 'Renata Perangeli');
insert into livro values ('93.196.755/0001-94', '54.828.227/0001-59', '253-287989931-3', 25, 'Métodos de aprendizagem na Educação Infantil ', 'Mayara Muniz da Silva');
insert into livro values ('98.094.349/0001-34', '54.828.227/0001-59', '702-400719158-9', 10, 'Gramática de Uso da Língua Portuguesa', 'Silvana Santoro');

------------- Populate Pessoa -------------
-- insert into pessoa values ('cnpj_biblioteca', ('codigo'), 'nome', 'telefone', 'pais', 'estado', 'cidade', 'cep', 'logradouro', 'bairro', numero, 'complemento')

insert into pessoa values ('54.828.227/0001-59', 'Luis Felipe Cambiaghe Guedes', '16997651512', 'Brasil', 'São Paulo', 'Araraquara', '14800200', 'Rua Comendador Pedro Morganti', 'Carmo', 1050, 'Próximo ao Colégio Florestano Libuti');
insert into pessoa values ('54.828.227/0001-59', 'Ana Laura Cambiaghe Guedes', '16997665542', 'Brasil', 'São Paulo', 'Araraquara', '14800200', 'Rua Comendador Pedro Morganti', 'Carmo', 1050, 'Próximo ao Colégio Florestano Libuti');
insert into pessoa values ('54.828.227/0001-59', 'Fernando Oliveira', '16997442193', 'Brasil', 'São Paulo', 'Araraquara', '14810038', 'Av. Vincente Jeronimo Freire', 'Vila Xavier', 144, null);
insert into pessoa values ('54.828.227/0001-59', 'Regiane Souza Filho', '16981736455', 'Brasil', 'São Paulo', 'Araraquara', '14803010', 'Estrada Nélson Barbieri', 'Rec Camp Idanorma', 428, 'Estrada para Gavião Peixoto');

---------------------------------------------------------------------------

------------- Populate Aluno -------------
-- insert into aluno values (codigo_pessoa, alu_rm, 'alu_turma');
insert into aluno values (1, 44325, 'Cursinho-1 Manhã');
insert into aluno values (2, 44326, 'Cursinho-3 Tarde');


------------- Populate Funcionario -------------
-- insert into funcionario values ((codigo_pessoa), func_rt, 'func_setor');
insert into funcionario values (3 ,05140055, 'Educaçional');
insert into funcionario values (4 ,05140056, 'Limpeza');


