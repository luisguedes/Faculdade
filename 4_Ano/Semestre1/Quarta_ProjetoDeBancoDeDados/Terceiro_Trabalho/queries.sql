-- 1.Consultar registro de um livro dado seu nome.
SELECT titulo as Título_do_Livro
, qtde as Quantidade_do_Livro
, autor as Autor_do_Livro
, biblioteca_coc.website as Site_da_Biblio
, editora.editoranome as Nome_da_Editora
, editoratelefone.telefone as Telefone_da_Editora
	FROM livro
inner join editora on cnpj_editora = editora.cnpj
inner join biblioteca_coc on biblioteca_coc.cnpj = biblioteca_coc.cnpj
inner join editoratelefone on editoratelefone.cnpj_editora = editora.cnpj
where titulo like '%Introdução a sistemas de bancos de dados%'
--group by titulo, qtde, autor, biblioteca_coc.website, editora.editoranome, editoratelefone.telefone

--1.2. Com ajuda do Paulo
SELECT titulo as Título_do_Livro
     , qtde as Quantidade_do_Livro
     , autor as Autor_do_Livro
     , biblioteca_coc.website as Site_da_Biblio
     , e.editoranome as Nome_da_Editora
     , (select dbo.fnGetFoneEditora(e.CNPJ)) as Telefone_da_Editora
  FROM livro 
INNER JOIN editora e on cnpj_editora = e.cnpj
INNER JOIN biblioteca_coc on biblioteca_coc.cnpj = biblioteca_coc.cnpj
where titulo like '%Introdução a sistemas de bancos de dados%'

-- 2.Quantidade total de pessoas cadastradas
SELECT COUNT (codigo) as Numero_de_Pessoas_Cadastradas from Pessoa

-- 3. Mostrar Log do sistemas passando uma certa data e hora:
SELECT data as Data_do_Ocorrido, msg as Ocorrencia from log
where data between '2001-06-06 00:00:00' and '2018-06-06 23:59:59'


-- 4. Mostrar dados para contato e endereço de uma editora dado seu nome
SELECT editoranome as Nome_da_editora
     , (select dbo.fnGetFoneEditora(editora.CNPJ)) as Telefone_da_Editora
     , estado as Estado
     , cidade as Cidade
     , cep as CEP
     , logradouro as Endereco
     , numero as Numero
  from Editora
order by editoranome
where editoranome = 'Editora Abril'

-- 5. Mostrar dados de um aluno dado registro.
SELECT pessoa.nome as Nome_da_Pessoa
     , pessoa.telefone as Telefone_da_Pessoa
     , pessoa.logradouro as Endereco_da_Pessoa
     , pessoa.numero as NumeroResidencial
     , alu_turma as Turma_do_Aluno
from aluno
INNER JOIN pessoa on pessoa_codigo = pessoa.codigo
	where alu_rm = 44325

-- 6. Mostrar dados de um aluno dado registro.
SELECT pessoa.nome as Nome_da_Pessoa
     , pessoa.telefone as Telefone_da_Pessoa
     , pessoa.logradouro as Endereco_da_Pessoa
     , pessoa.numero as NumeroResidencial
     , func_setor as Setor_do_Funcionario
  from funcionario
INNER JOIN pessoa on pessoa_codigo = pessoa.codigo
where func_rt = 05140055

-- delete
DELETE FROM Livro
      WHERE isbn = 

-- update
UPDATE livro
set qtde = 5
where isbn = '471-607092597-6'