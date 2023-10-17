use universidade_u;
-- timestemp(marca temporal) início à partir de meia-noite do dia 01/01/1970
select 
     timestampdiff(YEAR,'1983-01-19', curdate()) as idade;

select 
    data_nascimento,
    curdate() as data_atual,
    idade,
    timestampdiff(YEAR, data_nascimento, curdate()) as idade_dinamica
from
    aluno;
    
alter table aluno drop column idade;

select * from aluno;
