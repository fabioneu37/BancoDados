use universidade_u;

delimiter $$
create function func_idade(p_data date)
returns int 
deterministic
comment 'Function server para retornar a idade com base na data de nascimento'
begin
     return timestampdiff(YEAR, p_data, curdate());
end $$
delimiter ;

select
    nome,func_idade(data_nascimento) from aluno;
    