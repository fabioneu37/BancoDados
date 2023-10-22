use universidade_u;

/* calendário acadêmico */
create table calendario(
	idcalendario int not null primary key auto_increment,
    `data` date not null,
    dia int(2) not null,
    mes int(2) not null,
    ano int(4) not null,
    feriado enum('s', 'n'),
    nome_feriado varchar(50)
);
select * from calendario;
truncate table calendario;

delimiter $$
create procedure proc_calendario(in p_data_inicio date, in p_data_fim date)
comment 'Procedimento para definição de calendário acadêmico com base em uma data início e fim'
begin
   declare v_dia,v_mes int(2);
   declare v_ano int(4);
   declare v_feriado char(1);
   declare v_nome_feriado varchar(50);
   
   select p_data_inicio as data_inicio, p_data_fim as data_fim;
   
   while p_data_inicio <= p_data_fim do
	
     set v_dia = extract(day from p_data_inicio);
	 set v_mes = extract(month from p_data_inicio);
     set v_ano = extract(year from p_data_inicio);
     
     if v_dia = 1 and v_mes = 1 then
       set v_feriado = 's';
       set v_nome_feriado = 'Confraternização Universal';
     
     elseif v_dia = 20 and v_mes = 2 then  
        set v_feriado = 's';
        set v_nome_feriado = 'Segunda-feira de Carnaval';
     
      elseif v_dia = 22 and v_mes = 2 then  
        set v_feriado = 's';
        set v_nome_feriado = 'Quaresma';
	  
      elseif v_dia = 21 and v_mes = 2 then  
        set v_feriado = 's';
        set v_nome_feriado = 'Terça_feira de Carnaval';
	  
      elseif v_dia = 22 and v_mes = 2 then  
        set v_feriado = 's';
        set v_nome_feriado = '	Quarta-feira de Cinzas';
      
      else
        set v_feriado = 'n';
        set v_nome_feriado = 'null';
      end if;
     
     insert into calendario(`data`, dia, mes, ano, feriado, nome_feriado)
     values(p_data_inicio, v_dia, v_mes, v_ano, v_feriado, v_nome_feriado);
     
     set p_data_inicio = date_add(p_data_inicio, interval 1 day);
   
   end while;
end
$$
delimiter ;

call proc_calendario('2023-01-01','2023-12-31');
drop procedure universidade_u.proc_calendario;





