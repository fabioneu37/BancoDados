use universidade_u;

/* soma */
select (144 + 257) as total;

/* subtração */
select (144 - 257) as total;

/* multiplicação */
select (144 * 257) as total;

/* divisão */
select (144 / 257) as total;

select * from gasto;

insert into gasto(ano, tipo, jan, fev, mar, abr, mai, jun, jul, ago, `set`, `out`, nov, dez)values('2019', 'previsto', 18000, 17000, 19000, 20000, 17000, 18000, 18500, 18500, 1800, 17500, 18000, 17000);
insert into gasto(ano, tipo, jan)values('2019', 'realizado', 18353.20);
update gasto set fev = 17555.55 where idgasto = 2;
update gasto set mar = 19435.73 where idgasto = 2;
update gasto set abr = 22753.12 where idgasto = 2;
update gasto set mai = 16198.12 where idgasto = 2;
update gasto set jun = 17451.88 where idgasto = 2;
update gasto set jul = 18975.40 where idgasto = 2;
update gasto set ago = 19163.84 where idgasto = 2;
update gasto set `set` = 18132.56 where idgasto = 2;
update gasto set `out` = 17667.91 where idgasto = 2;
update gasto set nov = 17936.33 where idgasto = 2;
update gasto set dez = 17125.88 where idgasto = 2;

select 
  (jan + fev + mar + abr + mai + jun +
  jul + ago + `set` + `out` + nov + dez) as total
from 
   gasto
where 
   idgasto = 2;
   
/* Média dos gastos */

select 
 truncate(((jan + fev + mar + abr + mai + jun +
  jul + ago + `set` + `out` + nov + dez) / 12),2) as total
from 
   gasto
where 
   idgasto = 2;
