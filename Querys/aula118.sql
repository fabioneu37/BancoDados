use universidade_u;

delimiter $$
create procedure proc_loop()
comment'Exemplo de uso do loop'
begin
    declare x int default 1;
    declare resultado varchar(20);
    
    loop_tabuada: loop
       
	   set resultado = concat('2 x',x, ' = ', (2*x));
       insert into log(log)values(resultado);
       
       set x = x + 1;
       if x > 10 then
          leave loop_tabuada;
       end if;
    end loop loop_tabuada;
end
$$
delimiter ;

call proc_loop();
drop procedure universidade_u.proc_loop;

truncate table log;
select * from log;