use universidade_u;

show triggers;
drop trigger universidade_u.tr_after_insert_funcionario;

delimiter $$
create trigger tr_after_insert_funcionario
after insert on funcionario
for each row
begin
   insert into funcionario_log(fk_idmatricula, tipo_log, funcao_antiga, funcao_nova, telefone_antigo, telefone_novo)
    values(NEW.idmatricula, 'AI', null, NEW.funcao, null, NEW.telefone); 
end 
$$
delimiter ;

select * from funcionario;
select * from funcionario_log;
insert into funcionario(nome, funcao, telefone) values ('Elton','Auxiliar Contábil','11 3333-4444');
