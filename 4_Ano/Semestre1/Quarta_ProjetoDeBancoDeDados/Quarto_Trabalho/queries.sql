-- 1. Quais são os alunos de uma determinada disciplina ministrada no ano de 2015,com suas notas.. (OK)
select  b.aluno_ra as RA_do_Aluno,
		p.nome as Nome_do_Aluno,
        d.nome as Nome_da_Disciplina,
        b.ano as No_Ano_de,
        b.semestre as Semestre,
        b.p1 as Nota_Prova_1,
        b.p2 as Nota_Prova_2,
        b.p3 as Nota_Prova_3
        from boletim b

        INNER JOIN Aluno a on a.ra = b.aluno_ra
        INNER JOIN Disciplina d on d.id = b.disciplina_id
		INNER JOIN Pessoa p on p.id = a.pessoa_id
		where ano = 2015 and d.nome = 'Regar Plantação' order by p.nome

-- 2. Quais são as notas de um aluno em todas as disciplinas por ele cursadas no ano de 2016.
select  b.aluno_ra as RA_do_Aluno,
		p.nome as Nome_do_Aluno,
        d.nome as Nome_da_Disciplina,
        b.ano as No_Ano_de,
        b.semestre as Semestre,
        b.p1 as Nota_Prova_1,
        b.p2 as Nota_Prova_2,
        b.p3 as Nota_Prova_3
        from boletim b

        INNER JOIN Aluno a on a.ra = b.aluno_ra
        INNER JOIN Disciplina d on d.id = b.disciplina_id
		INNER JOIN Pessoa p on p.id = a.pessoa_id
		where ano = 2016 and
        p.nome = 'Luis Felipe Cambiaghe Guedes'
        order by d.nome

-- 3. Quais são os alunos reprovados por nota (média inferior a cinco) no ano de 2016 e o nome das disciplinas e as médias.
select  b.aluno_ra as RA_do_Aluno,
		p.nome as Nome_do_Aluno,
        d.nome as Nome_da_Disciplina,
        b.ano as No_Ano_de,
        b.semestre as Semestre,
        --b.p1 as Nota_Prova_1,
        --b.p2 as Nota_Prova_2,
        --b.p3 as Nota_Prova_3,
CASE
                When b.p1 > b.p2 Then (b.p1 + b.p3)/2
                Else (b.p2 + b.p3)/2
            END
          as media
        from boletim b

        INNER JOIN Aluno a on a.ra = b.aluno_ra
        INNER JOIN Disciplina d on d.id = b.disciplina_id
        INNER JOIN Pessoa p on p.id = a.pessoa_id
        WHERE (b.p1 + b.p2)/2 < 5
        AND (
            CASE
                When b.p1 > b.p2 Then (b.p1 + b.p3)/2
                Else (b.p2 + b.p3)/2
            END
        ) < 5
        AND b.ano = 2016