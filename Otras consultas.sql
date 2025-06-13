SHOW CREATE TABLE lecturasdia;

SELECT COUNT(DISTINCT Estampa_Tiempo, Id_Medidor) FROM lecturasdia;

SELECT DATE(DiaHora1) AS dia,
       ROUND(AVG(FP_IND_III),3) AS fp_prom
FROM   lecturasdia
GROUP  BY dia
ORDER  BY dia;


SELECT Id_Medidor,
       MAX(Potencia_Activa_III) AS kw_max
FROM   lecturasdia
WHERE  DiaHora1 >= DATE_SUB(CURDATE(), INTERVAL 1 DAY)
  AND  DiaHora1 <  CURDATE()
GROUP  BY Id_Medidor;


SELECT DiaHora1, Desbalance_Tension
FROM   lecturasdia
ORDER  BY Desbalance_Tension DESC
LIMIT  5;


CREATE OR REPLACE VIEW v_features_1h AS
SELECT Id_Medidor,
       DATE_FORMAT(DiaHora1,'%Y-%m-%d %H:00:00') AS hora,
       AVG(Potencia_Activa_III)  AS kw_avg,
       AVG(FP_IND_III)           AS fp_avg,
       AVG(THD_V_L1+THD_V_L2+THD_V_L3)/3 AS thd_v_avg
FROM   lecturasdia
GROUP  BY Id_Medidor, hora; 




SELECT hour(DiaHora1) hora, ROUND(AVG(FP_IND_III),3) AS fp_prom
FROM lecturasdia
WHERE Edificio=1 AND Id_Sistema=1
GROUP BY hora ORDER BY hora;

SELECT hour(DiaHora1) hora, ROUND(MIN(FP_IND_III),3) AS MIN, ROUND(MAX(FP_IND_III),3) AS MAX, ROUND(AVG(FP_IND_III),3) AS fp_prom
FROM lecturasdia
WHERE Edificio=1 AND Id_Sistema=1
GROUP BY hora ORDER BY hora; 
SELECT * FROM curso_sql.lecturasdia;

SELECT * FROM curso_sql.lecturasdia WHERE Id_Sistema=3;

SELECT DiaHora1, Corriente_L1, Corriente_L2, Corriente_L3 FROM curso_sql.lecturasdia WHERE Id_Sistema=3;

SELECT min(Corriente_L1), avg(Corriente_L1), max(Corriente_L1) FROM curso_sql.lecturasdia WHERE Id_Sistema=3;

SELECT hour(DiaHora1) as Hora, round(min(Corriente_L1),2) as C_Min, round(avg(Corriente_L1),2) as C_Avg, round(max(Corriente_L1),2) as C_Max
FROM curso_sql.lecturasdia
WHERE Id_Sistema=3 
GROUP BY hour(DiaHora1);

SELECT Id_Sistema, hour(DiaHora1) as Hora, round(min(Corriente_L1),2) as C_Min, round(avg(Corriente_L1),2) as C_Avg, round(max(Corriente_L1),2) as C_Max
FROM curso_sql.lecturasdia
GROUP BY Id_Sistema, hour(DiaHora1)
ORDER BY Id_Sistema, hour(DiaHora1);