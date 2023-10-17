use universidade_u;
/*recuperar a data atual*/
select curdate();
select current_date();

/*retorna data e hora atuais*/
select now();

/*formata a projeção da data recuperada*/
select date_format(curdate(),'%d/%m/%Y') as Data_Formatada;
select date_format(curdate(), '%D/%M/%y') as data_formatada;
/*
%d - dia do mês ( de 01 até 31)
%D - dia do mês com sufixo em inglês
%m - mês (de 01 a 12)
%M - nome do mês em inglês
%y - ano (dois dígitos)
%Y - ano (quatro dígitos)
*/

/*extrai parte de uma determinada data*/
select extract(day from curdate());
select extract(month from curdate());
select extract(year from curdate());
select extract(month from '1989-06-01');
/* day, month ou year */

/* adicionando intervalos de tempo as datas */
select date_add('1990-12-10', interval 4 day) as data_hora_ajustada;
select date_add('1990-12-10', interval 10 year) as data_hora_ajustada;
select date_add('1990-12-10 10:15:20', interval -2 hour) as data_hora_ajustada;
select date_add(now(), interval 5 hour) as data_hora_ajustada;
select now() as data_hora_atuais, date_add(now(), interval 5 day) as data_hora_ajustada;
/* second, minute, hour, day, month, year */

/* calculo de dias entre datas */
select 
   '1983-02-01' as data_nascimento, 
    curdate() as Data_Atual,
    datediff(curdate(), '1983-01-19') as diferença_dias,
    floor(datediff(curdate(), '1983-02-01') / 365) as idade_aproximada;
    
/* calculo de meses entre datas */
select period_diff('202104','198504');

/* dia do ano */
select dayofyear('2021-06-05');

select datediff(curdate(), '1985-04-01');

select curdate();