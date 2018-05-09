-- 1.Obter todas as linhas atendidas por uma determinada empresa, dado o nome dessa empresa.
SELECT empresa.nome as Nome_da_Empresa, linha.nome as Nome_da_Linha FROM quadro_hora 
    inner join empresa on empresa.cnpj = quadro_hora.cnpj_empresa
    inner join linha on linha.numero = quadro_hora.numero_linha
    where empresa.nome = 'empresa cruz' GROUP BY Empresa.nome, Linha.nome
--  where empresa.nome = 'Paraty' GROUP BY Empresa.nome, Linha.nome

-- 2.Obter o itinerário de uma determinada linha de ônibus, dado o Nome (Identificação) dessa linha.
SELECT linha.nome as Nome_da_Linha, itinerario.numerolinha as Numero_da_Linha, logradouro.nome as Nome_do_Logradouro, itinerario.ordem  as Ordem, itinerario.sentido as Sentido FROM itinerario
    inner join linha on linha.numero = itinerario.numerolinha
    inner join logradouro on logradouro.codigo = itinerario.codigolog
    where linha.nome = 'Rodoviária / TCI' order by itinerario.ordem
    --where linha.nome = 'Fonte/Jardim das Estações' order by itinerario.ordem
    --where linha.nome = 'Jardim Santa Lúcia' order by itinerario.ordem

--3.Obter o quadro de horário de uma determinada linha, dado seu Nome.
SELECT empresa.nome as Nome_da_Empresa, linha.nome as Nome_da_Linha, linha.numero as Numero_da_Linha, quadro_hora.hora as Hora, quadro_hora.dia as Dia FROM quadro_hora
inner join empresa on empresa.cnpj = quadro_hora.cnpj_empresa
inner join linha on linha.numero = quadro_hora.numero_linha
where linha.nome = 'Rodoviária / TCI' ORDER BY CASE quadro_hora.dia when 'Domingo' then 0 when 'Segunda-Feira' then 1 when 'Terça-Feira' then 2 when 'Quarta-Feira' then 3 when 'Quinta-Feira' then 4 when 'Sexta-Feira' then 5 when 'Sábado' then 6 else 99 end, quadro_hora.hora
--where linha.nome = 'Fonte/Jardim das Estações' ORDER BY CASE quadro_hora.dia when 'Domingo' then 0 when 'Segunda-Feira' then 1 when 'Terça-Feira' then 2 when 'Quarta-Feira' then 3 when 'Quinta-Feira' then 4 when 'Sexta-Feira' then 5 when 'Sábado' then 6 else 99 end, quadro_hora.hora
--where linha.nome = 'Jardim Santa Lúcia' ORDER BY CASE quadro_hora.dia when 'Domingo' then 0 when 'Segunda-Feira' then 1 when 'Terça-Feira' then 2 when 'Quarta-Feira' then 3 when 'Quinta-Feira' then 4 when 'Sexta-Feira' then 5 when 'Sábado' then 6 else 99 end, quadro_hora.hora

--mostrar site sqlfiddle.com/#!9/a132c4c/1

--4.Obter as linhas de ônibus/empresa que passam por um determinado logradouro, dado o nome desse logradouro.
