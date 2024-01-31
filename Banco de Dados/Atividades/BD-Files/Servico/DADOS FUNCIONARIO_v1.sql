select * from FPFUNC;

select * from FPHSTSIT;

select * from fpfichaf;

select FIRST 1 SALARIO from fphstsal
where COD_FUNC = 00190
ORDER BY DTA_ALTER DESC;

select * from fpsit_func;
diferente de demitido

select *  from FPHSTSIT; where cod_sit <> 'D';

SELECT COD_FUNC FROM FPHSTSIT WHERE extract(month from DTA_ALTER) <= 11 and COD_SIT = 'D';