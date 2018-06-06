-- 1.Consulta utilizando atributos de 4 tabelas.
SELECT titulo as Título_do_Livro, qtde as Quantidade_do_Livro, autor as Autor_do_Livro, biblioteca_coc.website 
as Site_da_Biblio, editora.editoranome as Nome_da_Editora, editora_telefone.telefone as Telefone_da_Editora FROM livro
inner join editora on cnpj_editora = editora.cnpj
inner join biblioteca_coc on biblioteca_coc.cnpj = biblioteca_coc.cnpj
inner join editora_telefone on editora_telefone.cnpj_editora = editora.cnpj
--group by titulo, qtde, autor, biblioteca_coc.website, editora.editoranome, editora_telefone.telefone

-- 2.Consulta utilizando atributos de 4 tabelas.
SELECT sum (qtde) as Total_de_livros from livro








-- paulo criou

declare @st varchar(max) = ''
--Select @st =  Coalesce(@st + telefone, ', ') from editora_telefone where cnpj_editora = e.cnpj ) as Telefone_da_Editora
Select @st =  Coalesce(@st + telefone + ', ' , '') from editora_telefone 

select @st


create table #temp(
	titulo varchar(max)
     , qtde as Quantidade_do_Livro
	 , autor as Autor_do_Livro
	 , biblioteca_coc.website as Site_da_Biblio
	 , e.editoranome as Nome_da_Editora
	 , '' as editora_telefone  
)



SELECT titulo as Título_do_Livro
     , qtde as Quantidade_do_Livro
	 , autor as Autor_do_Livro
	 , biblioteca_coc.website as Site_da_Biblio
	 , e.editoranome as Nome_da_Editora
	 , '' as editora_telefone  
  FROM livro
inner join editora e on cnpj_editora = e.cnpj
inner join biblioteca_coc on biblioteca_coc.cnpj = biblioteca_coc.cnpj
--group by titulo, qtde, autor, biblioteca_coc.website, e.editoranome

