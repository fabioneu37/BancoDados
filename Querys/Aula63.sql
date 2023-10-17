use universidade_u;

select 
    idaluno,
    nome,
    data_nascimento,
    extract(month from data_nascimento) as data_nascimento_mes,
    extract(day from data_nascimento) as data_nascimento_dia,
    
    curdate() as data_atual,
    extract(month from curdate())as data_atual_mes,
    extract(day from curdate())as data_atual_dia,
    timestampdiff(YEAR,data_nascimento, curdate()) as idade
from
    aluno
where
     extract(month from data_nascimento) = extract(month from curdate()) 
     and extract(day from data_nascimento) = extract(day from curdate());

    update aluno set data_nascimento = '1982-04-01' where idaluno = 3;
    
    select * from aluno;
