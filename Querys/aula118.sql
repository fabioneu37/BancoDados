use universidade_u;

delimiter $$
create procedure proc_loop()
comment'Exemplo de uso do loop'
begin
    declare x int default 1;
    
    loop_tabuada: loop
       insert into log(log)values(2*x);
       
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