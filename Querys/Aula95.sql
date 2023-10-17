use universidade_u;
select @@version;

select * from curso;
select * from disciplina;

select  
    *
from curso as c left join disciplina as d on (c.idcurso = d.fk_idcurso);

select  
    *
from 
    curso as c right join disciplina as d on (c.idcurso = d.fk_idcurso);

select  
    *
from
   telefone as t right join aluno as a on (t.fk_idaluno = a.idaluno);