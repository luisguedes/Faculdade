-- Trigger LogLivro
IF EXISTS (SELECT name FROM sys.triggers WHERE name = 'TG_LogLivro')
 DROP TRIGGER TG_LogLivro
GO

CREATE TRIGGER TG_LogLivro
ON Livro
 AFTER INSERT, UPDATE, DELETE
AS
BEGIN
 --Registar log
 IF((SELECT count(*) FROM INSERTED) > 0 AND (SELECT COUNT(*) FROM DELETED)=0)
 BEGIN
  INSERT INTO Log(data, msg)
  SELECT getdate()
    , 'Registro de Livro Inserido. ||CNPJ: ' + cnpj_biblioteca
      + ' ||isbn: ' + isbn
      + ' ||qtde: ' + Convert(varchar(6),qtde)
      + ' ||Titulo: ' + titulo
      + ' ||autor: ' + autor
    FROM INSERTED
 END
 ELSE IF((SELECT count(*) FROM INSERTED)>0 AND (SELECT COUNT(*) FROM DELETED)>0)
 BEGIN
  INSERT INTO Log(data, msg)
  SELECT getdate()
    , 'Registro de Livro Alterado. ||CNPJ: ' + cnpj_biblioteca
      + ' ||isbn: ' + isbn
      + ' ||qtde: ' + Convert(varchar(6),qtde)
      + ' ||Titulo: ' + titulo
      + ' ||autor: ' + autor
    FROM INSERTED
 END
 ELSE IF ((SELECT COUNT(*) FROM DELETED)>0) 
 BEGIN
  INSERT INTO Log(data, msg)
  SELECT getdate()
    , 'Registro de Livro Excluido. ||CNPJ: ' + cnpj_biblioteca
      + ' ||isbn: ' + isbn
      + ' ||qtde: ' + Convert(varchar(6),qtde)
      + ' ||Titulo: ' + titulo
      + ' ||autor: ' + autor
    FROM DELETED
 END
END
GO

-- Trigger LogEditora
IF EXISTS (SELECT name FROM sys.triggers WHERE name = 'TG_LogEditora')
 DROP TRIGGER TG_LogEditora
GO

CREATE TRIGGER TG_LogEditora
ON Editora
 AFTER INSERT, UPDATE, DELETE
AS
BEGIN
 --Registar log
 IF((SELECT count(*) FROM INSERTED) > 0 AND (SELECT COUNT(*) FROM DELETED)=0)
 BEGIN
  INSERT INTO Log(data, msg)
  SELECT getdate()
    , 'Registro de Editora Inserido. ||CNPJ: ' + cnpj
      + ' ||Nome da Editora: ' + editoranome
      + ' ||Pais: ' + pais
      + ' ||Estado: ' + estado
      + ' ||Cidade: ' + cidade
      + ' ||CEP: ' + cep
      + ' ||Logadrouro: ' + logradouro
      + ' ||Bairro: ' + bairro
      + ' ||Numero: ' + Convert(varchar(6),numero)
      + ' ||Complemento: ' + complemento
    FROM INSERTED
 END
 ELSE IF((SELECT count(*) FROM INSERTED)>0 AND (SELECT COUNT(*) FROM DELETED)>0)
 BEGIN
  INSERT INTO Log(data, msg)
  SELECT getdate()
    , 'Registro de Editora Alterado. ||CNPJ: ' + cnpj
      + ' ||Nome da Editora: ' + editoranome
      + ' ||Pais: ' + pais
      + ' ||Estado: ' + estado
      + ' ||Cidade: ' + cidade
      + ' ||CEP: ' + cep
      + ' ||Logadrouro: ' + logradouro
      + ' ||Bairro: ' + bairro
      + ' ||Numero: ' + Convert(varchar(6),numero)
      + ' ||Complemento: ' + complemento
    FROM INSERTED
 END
 ELSE IF ((SELECT COUNT(*) FROM DELETED)>0) 
 BEGIN
  INSERT INTO Log(data, msg)
  SELECT getdate()
    , 'Registro de Editora Deletado. ||CNPJ: ' + cnpj
      + ' ||Nome da Editora: ' + editoranome
      + ' ||Pais: ' + pais
      + ' ||Estado: ' + estado
      + ' ||Cidade: ' + cidade
      + ' ||CEP: ' + cep
      + ' ||Logadrouro: ' + logradouro
      + ' ||Bairro: ' + bairro
      + ' ||Numero: ' + Convert(varchar(6),numero)
      + ' ||Complemento: ' + complemento
    FROM INSERTED
 END
END
GO
