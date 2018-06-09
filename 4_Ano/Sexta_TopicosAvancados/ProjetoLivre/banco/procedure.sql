---------------------------------------------------editora---------------------------------------------------------
--pr_inserir_editora
CREATE PROCEDURE PR_INSERIR_EDITORA
	@cnpj varchar (100),
	@editoranome varchar (100),
	@pais varchar (100),
	@estado varchar (100),
	@cidade varchar (100),
	@cep varchar (100),
	@logradouro varchar (100),
	@bairro varchar (100),
	@numero int,
	@complemento varchar (100),
AS 
BEGIN
	INSERT INTO editora (cnpj, editoranome, pais, estado, cidade, cep, logradouro, bairro, numero, complemento)
         VALUES(@cnpj, @editoranome, @pais, @estado, @cidade, @cep, @logradouro, @bairro, @numero, @complemento)
END
GO
--pr_select_editora
CREATE PROCEDURE PR_SELECT_EDITORA AS 
BEGIN
	select cnpj, editoranome, pais, estado, cidade, cep, logradouro, bairro, numero, complemento
     from editora
END
GO

SELECT * FROM editora
GO

---------------------------------------------editoratelefone------------------------------------------------------

--pr_inserir_editoratelefone
CREATE PROCEDURE PR_INSERIR_EDITORATELEFONE
	@editora_cnpj varchar (100),
    @telefone varchar (20),
AS 
BEGIN
	INSERT INTO editoratelefone (editora_cnpj, telefone)
         VALUES(@editora_cnpj, @telefone)
END
GO
--pr_select_editoratelefone
CREATE PROCEDURE PR_SELECT_EDITORATELEFONE AS 
BEGIN
	select editora_cnpj, telefone
     from editoratelefone
END
GO

SELECT * FROM editoratelefone
GO

---------------------------------------------Livro----------------------------------------------------------------

--pr_inserir_livro
CREATE PROCEDURE PR_INSERIR_LIVRO
	@editora_cnpj varchar (100),
	@isbn varchar (100),
	@qtde int,
	@titulo varchar (100),
	@autor varchar (100),
AS 
BEGIN
	INSERT INTO livro (editora_cnpj, isbn, qtde, titulo, autor)
         VALUES(@editora_cnpj, @isbn, @qtde, @titulo, @autor)
END
GO
--pr_select_livro
CREATE PROCEDURE PR_SELECT_LIVRO
AS 
BEGIN
	select editora_cnpj, isbn, qtde, titulo, autor
     from livro
END
GO

SELECT * FROM livro
GO

---------------------------------------------Pessoa----------------------------------------------------------------

--pr_inserir_pessoa
CREATE PROCEDURE PR_INSERIR_PESSOA
	@cpf_cnpj int,
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
	@tipo char,
AS 
BEGIN
	INSERT INTO editora (cpf_cnpj, nome, email, pais, estado, cidade, cep, logradouro, bairro, numero, complemento, tipo)
         VALUES(@cpf_cnpj, @nome, @email, @pais, @estado, @cidade, @cep, @logradouro, @bairro, @numero, @complemento, @tipo)
END
GO
--pr_select_pessoa
CREATE PROCEDURE PR_SELECT_PESSOA
AS 
BEGIN
	select cpf_cnpj, nome, email, pais, estado, cidade, cep, logradouro, bairro, numero, complemento, tipo
     from pessoa
END
GO

SELECT * FROM pessoa
GO


---------------------------------------------cliente_Compra_Livro--------------------------------------------------

--pr_inserir_compra_livro
CREATE PROCEDURE PR_INSERIR_COMPRA_LIVRO
	cliente_id int,
    livro_isbn int,
    data datetime,
    valor decimal,
AS 
BEGIN
	INSERT INTO COMPRA_LIVRO (cliente_id, livro_isbn, data, valor)
         VALUES(@cliente_id, @livro_isbn, @data, @valor)
END
GO
--pr_select_livro
CREATE PROCEDURE PR_SELECT_COMPRA_LIVRO
AS 
BEGIN
	select cliente_id, livro_isbn, data, valor
     from COMPRA_LIVRO
END
GO

SELECT * FROM COMPRA_LIVRO
GO

---------------------------------------------categoria------------------------------------------------------------

--pr_inserir_categoria
CREATE PROCEDURE PR_INSERIR_CATEGORIA
	@nome varchar(100),
AS 
BEGIN
	INSERT INTO categoria (nome)
         VALUES(@nome)
END
GO
--pr_select_categoria
CREATE PROCEDURE PR_SELECT_CATEGORIA
AS 
BEGIN
	select nome
     from categoria
END
GO

SELECT * FROM categoria
GO

---------------------------------------------categoria_livro------------------------------------------------------

--pr_inserir_categoria_livro
CREATE PROCEDURE PR_INSERIR_CATEGORIA_LIVRO
    @categoria_id int,
    @livro_isbn int,
AS 
BEGIN
	INSERT INTO categoria_livro (nome)
         VALUES(@nome)
END
GO
--pr_select_categoria_livro
CREATE PROCEDURE PR_SELECT_CATEGORIA_LIVRO
AS 
BEGIN
	select nome
     from categoria_livro
END
GO

SELECT * FROM categoria_livro
GO