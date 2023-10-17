use universidade_u;

/* estado com mais alunos - alunos por estado */
select 
    estado, count(*) as total
from 
    endereco
group by
    estado
order by 
total desc limit 3;

/* cursos mais vendidos - alunos por curso */
select 
     fk_idcurso, count(*) as total
from
     aluno_curso
group by
     fk_idaluno;
     
select * from aluno_curso;
select distinct(fk_idcurso) from aluno_curso;
select * from aluno;

