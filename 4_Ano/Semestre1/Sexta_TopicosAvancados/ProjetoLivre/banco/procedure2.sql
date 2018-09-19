---------------------------------------------------editora---------------------------------------------------------
--pr_inserir_editora
CREATE PROCEDURE PR_INSERIR_EDITORA
	@cnpj bigint,
	@editoranome varchar (100),
	@pais varchar (100),
	@estado varchar (100),
	@cidade varchar (100),
	@cep varchar (100),
	@logradouro varchar (100),
	@bairro varchar (100),
	@numero int,
	@complemento varchar (100)
AS 
BEGIN
	INSERT INTO editora (cnpj, editoranome, pais, estado, cidade, cep, logradouro, bairro, numero, complemento)
         VALUES(@cnpj, @editoranome, @pais, @estado, @cidade, @cep, @logradouro, @bairro, @numero, @complemento)
END
GO
--pr_select_editora
CREATE PROCEDURE PR_SELECT_EDITORA
	@cnpj bigint = 0
AS
BEGIN
	if (@cnpj = 0) 
		select e.cnpj, e.editoranome,e.cidade, e.logradouro
		from editora e
	else
		select *
		from editora where cnpj = @cnpj
END
GO

CREATE PROCEDURE PR_ATUALIZAR_EDITORA
	@cnpj bigint,
	@editoranome varchar (100),
	@pais varchar (100),
	@estado varchar (100),
	@cidade varchar (100),
	@cep varchar (100),
	@logradouro varchar (100),
	@bairro varchar (100),
	@numero int,
	@complemento varchar (100)
AS 
BEGIN
	UPDATE editora
	SET
		editoranome = @editoranome,
		pais = @pais,
		estado = @estado,
		cidade = @cidade,
		cep = @cep,
		logradouro = @logradouro,
		bairro = @bairro,
		numero = @numero,
		complemento = @complemento
	WHERE cnpj = @cnpj
END
GO

SELECT * FROM editora
GO

---------------------------------------------editoratelefone------------------------------------------------------
/*
--pr_inserir_editoratelefone
CREATE PROCEDURE PR_INSERIR_EDITORATELEFONE
	@editora_cnpj varchar (100),
    @telefone varchar (20)
AS 
BEGIN
	INSERT INTO editoratelefone (editora_cnpj, telefone)
         VALUES(@editora_cnpj, @telefone)
END
GO
--pr_select_editoratelefone
CREATE PROCEDURE PR_SELECT_EDITORATELEFONE
AS 
BEGIN
	select editora_cnpj, telefone
     from editoratelefone
END
GO

SELECT * FROM editoratelefone
GO
*/
---------------------------------------------Livro----------------------------------------------------------------

--pr_inserir_livro
CREATE PROCEDURE PR_INSERIR_LIVRO
	@editora_cnpj bigint not null,
	@isbn bigint not null,
	@qtde int,
	@titulo varchar (100),
	@autor varchar (100)
AS 
BEGIN
	INSERT INTO livro (editora_cnpj, isbn, qtde, titulo, autor)
         VALUES(@editora_cnpj, @isbn, @qtde, @titulo, @autor)
END
GO
--pr_select_livro
CREATE PROCEDURE PR_SELECT_LIVRO
	@isbn bigint = 0
AS 
BEGIN
	if (@isbn = 0)
		select e.editoranome as editora, l.isbn, l.qtde, l.titulo, l.autor
		from livro l
		INNER JOIN editora e ON e.cnpj = l.editora_cnpj
	else
		select * from livro where isbn = @isbn
END
GO

SELECT * FROM livro
GO

---------------------------------------------Cliente----------------------------------------------------------------

--pr_inserir_cliente
CREATE PROCEDURE PR_INSERIR_CLIENTE
	@cpf_cnpj bigint,
	@nome varchar (100),
	@email varchar (100),
	@pais varchar (100),
	@estado varchar (100),
	@cidade varchar (100),
	@cep varchar (100),
	@logradouro varchar (100),
	@bairro varchar (100),
	@numero int,
	@complemento varchar (100),
	@tipo char
AS
BEGIN
	INSERT INTO cliente (cpf_cnpj, nome, email, pais, estado, cidade, cep, logradouro, bairro, numero, complemento, tipo)
         VALUES(@cpf_cnpj, @nome, @email, @pais, @estado, @cidade, @cep, @logradouro, @bairro, @numero, @complemento, @tipo)
END
GO
--pr_select_cliente
CREATE PROCEDURE PR_SELECT_CLIENTE
	@cpf_cnpj bigint = 0
AS 
BEGIN
	if (@cpf_cnpj = 0) 
		select cpf_cnpj, nome, email, pais, estado, cidade, cep, logradouro, bairro, numero, complemento, tipo
		from cliente
	else
		select cpf_cnpj, nome, email, pais, estado, cidade, cep, logradouro, bairro, numero, complemento, tipo
		from cliente where cpf_cnpj = @cpf_cnpj
END
GO

CREATE PROCEDURE PR_DELETAR_CLIENTE
	@cpf_cnpj bigint
AS 
BEGIN
	delete cliente
	where cpf_cnpj = @cpf_cnpj
END
GO

--pr_select_cliente
CREATE PROCEDURE PR_ATUALIZAR_CLIENTE
	@cpf_cnpj bigint,
	@nome varchar (100),
	@email varchar (100),
	@pais varchar (100),
	@estado varchar (100),
	@cidade varchar (100),
	@cep varchar (100),
	@logradouro varchar (100),
	@bairro varchar (100),
	@numero int,
	@complemento varchar (100),
	@tipo char
AS 
BEGIN
	UPDATE cliente
	SET 
		nome = @nome,
		email = @email,
		pais = @pais,
		estado = @estado,
		cidade = @cidade,
		cep = @cep,
		logradouro = @logradouro,
		bairro = @bairro,
		numero = @numero,
		complemento = @complemento,
		tipo = @tipo
	where
		cpf_cnpj = @cpf_cnpj
END
GO

SELECT * FROM cliente
GO


---------------------------------------------cliente_Compra_Livro--------------------------------------------------

--pr_inserir_Cliente_Compra_Livro
CREATE PROCEDURE PR_INSERIR_COMPRA
	@cliente_id int,
    @livro_isbn varchar (100),
    @data datetime,
    @valor decimal
AS
BEGIN
	INSERT INTO COMPRA_LIVRO (cliente_id, livro_isbn, data, valor)
         VALUES(@cliente_id, @livro_isbn, @data, @valor)
END
GO
--pr_select_livro
CREATE PROCEDURE PR_SELECT_COMPRA
AS 
BEGIN
	select cliente_id, livro_isbn, data, valor
     from Cliente_Compra_Livro
END
GO

SELECT * FROM Cliente_Compra_Livro
GO

---------------------------------------------Categoria_Livro------------------------------------------------------------

--pr_inserir_Categoria_Livro
--CREATE PROCEDURE PR_INSERIR_CATEGORIA_LIVRO
--	@nome varchar(100)
--AS 
--BEGIN
--	INSERT INTO Categoria_Livro (livro_isbn)
--         VALUES(@livro_isbn)
--END
--GO
--pr_select_Categoria_Livro
CREATE PROCEDURE PR_SELECT_CATEGORIA_LIVRO
AS 
BEGIN
	select id, livro_isbn
     from Categoria_Livro
END
GO

SELECT * FROM Categoria_Livro
GO

---------------------------------------------categoria_nome------------------------------------------------------

--pr_inserir_categoria_nome
CREATE PROCEDURE PR_INSERIR_CATEGORIA_NOME
    @categoria_nome varchar(100)
AS 
BEGIN
	INSERT INTO categoria_nome (categoria_nome)
         VALUES(@categoria_nome)
END
GO
--pr_select_categoria_nome
CREATE PROCEDURE PR_SELECT_CATEGORIA_NOME
AS 
BEGIN
	select categoria_nome
     from categoria_nome
END
GO

SELECT * FROM categoria_nome
GO