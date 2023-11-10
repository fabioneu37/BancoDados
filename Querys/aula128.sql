use universidade_u;

set global log_bin_trust_function_creators = 0;

delimiter $$
create function func_qtde_idade(p_idcurso int)
returns int 
comment 'Function server para retornar a quantidade de disciplinas com base em um curso'
begin
    
    declare qtde_disciplinas int default 0;
    set qtde_disciplinas = (select count(*) as qtde_disciplinas from disciplina where fk_idcurso = p_idcurso);
    return qtde_disciplinas;

end $$
delimiter ;

show function status where Db = 'universidade_u';
show create function universidade_u.func_qtde_idade;

select func_qtde_idade(2) as Quantidade_Disciplinas;

select 
     idcurso,
     descricao,
     func_qtde_idade(idcurso) as Quantidade_Disciplinas
from 
    curso;
