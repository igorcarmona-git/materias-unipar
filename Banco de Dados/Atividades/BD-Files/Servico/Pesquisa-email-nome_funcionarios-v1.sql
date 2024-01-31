/*
 * RELATÓRIO SINTÉTICO POR SEXO
 * */
SELECT 
		SEXO
,		COUNT(ST.DESCRICAO) AS TOTAL
FROM	FPFUNC FP
JOIN	FPSIT_FUNC ST ON FP.COD_SIT = ST.COD_SIT
WHERE	TRIM(FP.EMAIL) <> ''                                      --Trim --> limpa os espaços em branco.
		AND		FP.COD_SIT <> 'D'
GROUP BY
		SEXO;
-----------------------------------------------------------------------------------------------------------------------
/*
 * RELATÓRIO ANALITICO
 */
SELECT 
	NOME, 
	CASE WHEN EMAIL = '' THEN 'E-mail não cadastrado' ELSE EMAIL END, 
	(SELECT COUNT(SEXO) AS Feminino
		FROM FPFUNC 
		WHERE SEXO = 'F'
			AND COD_SIT <> 'D'
	),
	(SELECT COUNT(SEXO) AS Masculino
	FROM FPFUNC 
	WHERE SEXO = 'M'
		AND COD_SIT <> 'D'
	),
	FPFUNC.COD_SIT AS Situacao,
	FPSIT_FUNC.DESCRICAO
FROM FPFUNC
JOIN FPSIT_FUNC 
	ON FPFUNC.COD_SIT = FPSIT_FUNC.COD_SIT
WHERE
	FPFUNC.COD_SIT <> 'D';

--------------------------------------------------------------------------------------------------------
/*
 * AGRUPAMENTO POR SITUAÇÃO
 */

SELECT	F.COD_SIT
,		(SELECT ff.DESCRICAO FROM FPSIT_FUNC ff WHERE ff.COD_SIT = f.COD_SIT) AS NM_SITUACAO
,		COUNT(F.COD_SIT) AS QT_SITUACAO 
FROM	FPFUNC F
WHERE	F.COD_SIT = 'A'
GROUP BY
		F.COD_SIT;

SELECT NOME, CASE WHEN EMAIL = '' THEN 'E-mail não cadastrado' ELSE EMAIL END 
FROM FPFUNC
WHERE COD_SIT <> 'D'
