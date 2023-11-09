use universidade_u;

drop table log;
create table log(
  idlog int primary key auto_increment,
  log varchar (255)
);

select * from log;

delimiter $$
create procedure proc_while()
comment'Exemplo de uso do while'
begin
   declare contador int default 1;
   while contador < 10 do
      insert into log(log) values(contador);
      set contador = contador +1;
   end while;
end
$$
delimiter ;

call proc_while;