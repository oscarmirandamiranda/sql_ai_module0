use curso_sql;

-- Obteniedo datos (Fetching)

-- [1] Despliega el conjunto completo de datos
select * from lecturasdia;
 
 -- [2] Cuenta el total de registros de la tabla
select count(*) from lecturasdia;
 
 -- [3] Asigna un alias
select count(*) AS Cuenta from lecturasdia; 

-- [4] Despliega únicamente columnas seleccionadas
SELECT DiaHora1, Id_Sistema, Corriente_L1 , Corriente_L2, Corriente_L3 FROM lecturasdia;

-- [5] Despliega valores únicos de Id_Sistema en lecturasdia
SELECT DISTINCT Id_Sistema FROM lecturasdia;

-- [6] Borra todos los registros donde el FP_IND_III sea 1
DELETE FROM lecturasdia WHERE FP_IND_III = 1;
SELECT * FROM lecturasdia;

-- [7] Actualiza el importe con base en la potencia activa III y una tarifa de 0.98 pesos por kWh
UPDATE lecturasdia SET Importe = Potencia_Activa_III * 0.98;
SELECT * FROM lecturasdia;

-- [8] Despliega los 10 primeros registros
SELECT * FROM lecturasdia LIMIT 50;

-- Filtrando datos

-- [1] Desplega sólo lo registros donde Id_Sistema = 1
SELECT * FROM lecturasdia WHERE Id_Sistema = 5;

-- [2] Despliega sólo los registros donde Id_Sistema IN (2, 3)
SELECT * FROM lecturasdia WHERE Id_Sistema IN (2, 3);
SELECT * FROM lecturasdia WHERE (Id_Sistema = 2) OR (Id_Sistema=3);

-- [3] Selecciona los registros dónde PST_L1 no es null (nulo)
SELECT * FROM lecturasdia WHERE PST_L1 IS NOT NULL;

-- [4] Selecciona los registro en donce Estampa_Tiempo inicia con '2025-05-12 00'
SELECT * FROM lecturasdia WHERE Estampa_Tiempo LIKE '2025-05-12 01%';

-- [5] Selecciona registros que cumplan con el rango definido
SELECT * FROM lecturasdia WHERE DiaHora1 BETWEEN "2025-05-12 00:00:00" AND "2025-05-12 06:00:00";

-- [6] Selecciona todos los registros que cumplan con la condición
SELECT * FROM lecturasdia WHERE Corriente_L1 > 80 AND FP_IND_L1 < 0.80;


-- Agregaciones

-- [1] Número total de registros
SELECT COUNT(*) AS CNT FROM lecturasdia;

-- [2.1] Obtiene la suma de Potencia_Real_Li y el Promedio del FP_IND_III 
-- [2.2] Selecciona registros dónde la potencio real Li sea mayor o igual a 5000
SELECT 
	Id_Medidor, 
    SUM(Potencia_Real_L1) AS Potencia_Real,
    AVG(FP_IND_III) AS AVG_FP
FROM lecturasdia
WHERE Potencia_Real_L1 >= 5000
GROUP BY 
	Id_Medidor;

-- [3] Selecciona el número de registros por sistema y medidor
SELECT 
    Id_Sistema,     
    COUNT(Potencia_Real_L1) AS Registros
FROM lecturasdia  
GROUP BY Id_Sistema;

-- [4] Cuenta los sistemas únicos
SELECT COUNT(DISTINCT Id_Sistema) AS UNIQUE_Sistemas FROM lecturasdia;


/* [5] Verificar algunas variables (columnas) dadas algunas condiciones */
SELECT DiaHora1, Edificio, Id_Sistema Tension_Fase_L1, Tension_Fase_L2, Tension_Fase_L3, Tension_Linea_L1_L2,Tension_Linea_L2_L3, Tension_Linea_L3_L1 , FP_IND_III,
CASE 
	WHEN FP_IND_III <=0.50 THEN 'FP crítico'
    WHEN FP_IND_III >0.50 AND FP_IND_III <=0.80  THEN 'FP muy bajo'
    WHEN FP_IND_III >0.80 AND FP_IND_III <=0.95  THEN 'FP bajo'
    WHEN FP_IND_III >=0.95 THEN 'FP Bueno'
END AS FP_STATUS
FROM lecturasdia;

/* IA Generativa  -- SQL Generado */

/* Te comparto un código, explícalo:  SELECT DiaHora1, Edificio, Id_Sistema Tension_Fase_L1, Tension_Fase_L2, Tension_Fase_L3, Tension_Linea_L1_L2,Tension_Linea_L2_L3, Tension_Linea_L3_L1 , FP_IND_III,
CASE 
	WHEN FP_IND_III <=0.50 THEN 'FP crítico'
    WHEN FP_IND_III >0.50 AND FP_IND_III <=0.80  THEN 'FP muy bajo'
    WHEN FP_IND_III >0.80 AND FP_IND_III <=0.95  THEN 'FP bajo'
    WHEN FP_IND_III >=0.95 THEN 'FP Bueno'
END AS FP_STATUS
FROM lecturasdia; */

/* Quisiera saber cuantos y qué proporción de registros tenemos por clasificación del FP */

SELECT 
    CASE 
        WHEN FP_IND_III <= 0.50 THEN 'FP crítico'
        WHEN FP_IND_III > 0.50 AND FP_IND_III <= 0.80 THEN 'FP muy bajo'
        WHEN FP_IND_III > 0.80 AND FP_IND_III <= 0.95 THEN 'FP bajo'
        WHEN FP_IND_III >= 0.95 THEN 'FP Bueno'
    END AS FP_STATUS,
    COUNT(*) AS Cantidad,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Proporcion_Porcentual
FROM lecturasdia
GROUP BY FP_STATUS;

/* Quisiera agregar a la descripción del status el rango de valores del FP que cubre */
SELECT 
    CASE 
        WHEN FP_IND_III <= 0.50 THEN 'FP crítico (≤ 0.50)'
        WHEN FP_IND_III > 0.50 AND FP_IND_III <= 0.80 THEN 'FP muy bajo (> 0.50 y ≤ 0.80)'
        WHEN FP_IND_III > 0.80 AND FP_IND_III <= 0.95 THEN 'FP bajo (> 0.80 y ≤ 0.95)'
        WHEN FP_IND_III > 0.95 THEN 'FP Bueno (> 0.95)'
    END AS FP_STATUS,
    COUNT(*) AS Cantidad,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Proporcion_Porcentual
FROM lecturasdia
GROUP BY FP_STATUS;

/* Ahora quisiera obtener esta clasificación pero por sistema, los sistemasson  subestaciones, que  la descripción de la columna diga "Subestación" + el sistema, por ejemplo 1 */

SELECT 
    CONCAT('Subestación ', Id_Sistema) AS Subestacion,
    CASE 
        WHEN FP_IND_III <= 0.50 THEN 'FP crítico (≤ 0.50)'
        WHEN FP_IND_III > 0.50 AND FP_IND_III <= 0.80 THEN 'FP muy bajo (> 0.50 y ≤ 0.80)'
        WHEN FP_IND_III > 0.80 AND FP_IND_III <= 0.95 THEN 'FP bajo (> 0.80 y ≤ 0.95)'
        WHEN FP_IND_III > 0.95 THEN 'FP Bueno (> 0.95)'
    END AS FP_STATUS,
    COUNT(*) AS Cantidad,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY Id_Sistema), 2) AS Proporcion_Porcentual
FROM lecturasdia
GROUP BY Id_Sistema, FP_STATUS;

SELECT 
    FP_IND_III
FROM (
    SELECT 
        FP_IND_III,
        PERCENT_RANK() OVER (ORDER BY FP_IND_III) AS percentil
    FROM lecturasdia
    WHERE DiaHora1 >= '2025-05-01' AND DiaHora1 < '2025-06-01'
      AND FP_IND_III IS NOT NULL
) AS sub
WHERE percentil >= 0.05
ORDER BY percentil
LIMIT 1;

