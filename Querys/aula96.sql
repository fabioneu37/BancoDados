use universidade_u;

select 
     *
from
    disciplina as d inner join professor as p on (d.fk_idprofessor = p.idprofessor);

/*
union - atua como um distinct
union all - não faz distinct
*/

/*mesmo número de colunas*/
select 100, 500
union all
select 100, 300
union all
select 500, 700;

/*mesma ordem*/
select 100 as c1, 200 as c2, 'abacaxi' as c3
union all
select 500, 'uva', 700;

/*union (distinct) x union all*/
select 'morango' as frutas
union
select 'uva' 
union 
select 'morango' 
union 
select 'abacaxi'
order by frutas;

/* enviar um e-mail para todos os alunos e professores */
select email from aluno;
select email from professor;

select email, 'aluno' from aluno where sexo = 'f'
union
select email, 'professor' from professor where idprofessor in (2,4,6,8)
order by email;

