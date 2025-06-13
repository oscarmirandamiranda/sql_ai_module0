-- 1 ¿Cuántos pedidos ha realizado cada cliente y cuál fue su método de pago más frecuente?
SELECT 
    oc.CUSTOMER_ID,
    CONCAT(oc.CUSTOMER_FNAME, ' ', oc.CUSTOMER_LNAME) AS Cliente,
    COUNT(oh.ORDER_ID) AS Total_Pedidos,
    (
        SELECT PAYMENT_MODE
        FROM order_header oh2
        WHERE oh2.CUSTOMER_ID = oc.CUSTOMER_ID
        GROUP BY PAYMENT_MODE
        ORDER BY COUNT(*) DESC
        LIMIT 1
    ) AS Metodo_Pago_Mas_Frecuente
FROM online_customer oc
JOIN order_header oh ON oc.CUSTOMER_ID = oh.CUSTOMER_ID
GROUP BY oc.CUSTOMER_ID;

-- 2️ ¿Qué productos se han vendido más y cuántas unidades se han vendido de cada uno?
SELECT 
    p.PRODUCT_ID,
    p.PRODUCT_DESC,
    SUM(oi.PRODUCT_QUANTITY) AS Total_Unidades_Vendidas
FROM order_items oi
JOIN product p ON oi.PRODUCT_ID = p.PRODUCT_ID
GROUP BY p.PRODUCT_ID
ORDER BY Total_Unidades_Vendidas DESC;

-- 3️ ¿Cuál es el total de ingresos generados por cada categoría de producto (product_class)?
SELECT 
    pc.PRODUCT_CLASS_DESC,
    ROUND(SUM(p.PRODUCT_PRICE * oi.PRODUCT_QUANTITY), 2) AS Ingresos_Totales
FROM order_items oi
JOIN product p ON oi.PRODUCT_ID = p.PRODUCT_ID
JOIN product_class pc ON p.PRODUCT_CLASS_CODE = pc.PRODUCT_CLASS_CODE
GROUP BY pc.PRODUCT_CLASS_DESC
ORDER BY Ingresos_Totales DESC;

-- 4️ ¿Qué clientes han hecho pedidos pero no tienen una dirección registrada en India?
SELECT DISTINCT 
    oc.CUSTOMER_ID,
    CONCAT(oc.CUSTOMER_FNAME, ' ', oc.CUSTOMER_LNAME) AS Cliente,
    a.COUNTRY
FROM online_customer oc
JOIN address a ON oc.ADDRESS_ID = a.ADDRESS_ID
JOIN order_header oh ON oh.CUSTOMER_ID = oc.CUSTOMER_ID
WHERE a.COUNTRY <> 'India';

-- 5️ ¿Cuántos pedidos ha enviado cada empresa de envío (shipper) y cuál fue el total de productos transportados?
SELECT 
    s.SHIPPER_NAME,
    COUNT(DISTINCT oh.ORDER_ID) AS Total_Pedidos,
    SUM(oi.PRODUCT_QUANTITY) AS Total_Productos
FROM shipper s
JOIN order_header oh ON s.SHIPPER_ID = oh.SHIPPER_ID
JOIN order_items oi ON oh.ORDER_ID = oi.ORDER_ID
GROUP BY s.SHIPPER_NAME
ORDER BY Total_Pedidos DESC;

-- 6️ ¿Cuál es el precio promedio de los productos en cada categoría
SELECT 
    pc.PRODUCT_CLASS_DESC,
    ROUND(AVG(p.PRODUCT_PRICE), 2) AS Precio_Promedio
FROM product p
JOIN product_class pc ON p.PRODUCT_CLASS_CODE = pc.PRODUCT_CLASS_CODE
GROUP BY pc.PRODUCT_CLASS_DESC
ORDER BY Precio_Promedio DESC;

-- 7️ ¿Qué pedidos fueron realizados por clientes registrados en el año 2012?
SELECT 
    oh.ORDER_ID,
    oc.CUSTOMER_ID,
    CONCAT(oc.CUSTOMER_FNAME, ' ', oc.CUSTOMER_LNAME) AS Cliente,
    oc.CUSTOMER_CREATION_DATE
FROM order_header oh
JOIN online_customer oc ON oh.CUSTOMER_ID = oc.CUSTOMER_ID
WHERE YEAR(oc.CUSTOMER_CREATION_DATE) = 2012;

-- 8️ ¿Qué productos tienen menos de 10 unidades disponibles en inventario y ya han sido vendidos al menos una vez?
SELECT 
    p.PRODUCT_ID,
    p.PRODUCT_DESC,
    p.PRODUCT_QUANTITY_AVAIL,
    SUM(oi.PRODUCT_QUANTITY) AS Total_Vendido
FROM product p
JOIN order_items oi ON p.PRODUCT_ID = oi.PRODUCT_ID
WHERE p.PRODUCT_QUANTITY_AVAIL < 10
GROUP BY p.PRODUCT_ID
HAVING Total_Vendido > 0;




