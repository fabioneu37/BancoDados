use universidade_u;

/*listando as functions do banco de dados*/
show function status where Db = 'universidade_u';

/*mostrar o conteúdo de um function*/
show create function universidade_u.func_data_ptbr;

delimiter $$
CREATE FUNCTION func_data_ptbr(p_data datetime) 
RETURNS char(14)
   DETERMINISTIC    
   COMMENT 'function serve para retornar datas no formato dd/mm/yyyy'
begin
  return date_format(p_data,'--%d/%m/%Y--');
end $$
delimiter ;

select func_data_ptbr('2023-11-08 15:17:00')  as Data_formatada




