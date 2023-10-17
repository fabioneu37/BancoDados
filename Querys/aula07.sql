use universidade_u;

delimiter $$
create procedure proc_variaveis_escopo_local1()
begin
  declare x int default 10;
  select x as variavel_escopo_local;
end
$$
delimiter ;
call proc_variaveis_escopo_local1();
