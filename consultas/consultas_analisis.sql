USE inmobiliaria;

SELECT 
    ciudad,
    AVG(precio) AS precio_promedio,
    MAX(precio) AS precio_maximo,
    MIN(precio) AS precio_minimo
FROM propiedades
GROUP BY ciudad;

SELECT *
FROM propiedades
WHERE tipo_operacion = 'Arriendo'
AND precio BETWEEN 800000 AND 2000000;


SELECT 
    a.nombre AS agente,
    COUNT(p.id_propiedad) AS cantidad_propiedades,
    p.ciudad
FROM agentes a
JOIN propiedades p 
ON a.id_agente = p.id_agente
GROUP BY a.nombre, p.ciudad
ORDER BY cantidad_propiedades DESC;


SELECT 
    p.id_propiedad,
    p.direccion,
    p.precio,
    c.nombre AS cliente
FROM propiedades p
LEFT JOIN contratos co 
ON p.id_propiedad = co.id_propiedad
LEFT JOIN clientes c
ON co.id_cliente = c.id_cliente
ORDER BY p.precio DESC
LIMIT 5;