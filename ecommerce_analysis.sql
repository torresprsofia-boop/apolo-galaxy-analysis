-- ============================================================
--  ApoloGALAXY — Análisis de Productos Gaming 2024
--  Autor: Data Analyst Portfolio Project
--  Descripción: Análisis de ventas de consolas y accesorios
--               gaming para el período Enero-Diciembre 2024
-- ============================================================

-- 1. CREAR BASE DE DATOS
-- ============================================================
CREATE DATABASE IF NOT EXISTS apolo_galaxy;
USE apolo_galaxy;

-- 2. CREAR TABLAS
-- ============================================================

CREATE TABLE IF NOT EXISTS categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre       VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS marcas (
    marca_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre   VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS productos (
    producto_id  INT PRIMARY KEY AUTO_INCREMENT,
    nombre       VARCHAR(100) NOT NULL,
    categoria_id INT NOT NULL,
    marca_id     INT NOT NULL,
    precio       DECIMAL(10,2) NOT NULL,
    stock        INT NOT NULL DEFAULT 0,
    FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id),
    FOREIGN KEY (marca_id)     REFERENCES marcas(marca_id)
);

CREATE TABLE IF NOT EXISTS ventas (
    venta_id    INT PRIMARY KEY AUTO_INCREMENT,
    producto_id INT NOT NULL,
    cantidad    INT NOT NULL,
    fecha       DATE NOT NULL,
    descuento   DECIMAL(5,2) DEFAULT 0.00,
    devolucion  TINYINT(1)   DEFAULT 0,
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);

-- 3. INSERTAR DATOS
-- ============================================================

INSERT INTO categorias (nombre) VALUES
    ('Consolas'),
    ('Accesorios');

INSERT INTO marcas (nombre) VALUES
    ('Microsoft'),
    ('HyperX'),
    ('Nintendo'),
    ('Sony'),
    ('Razer');

-- Productos
INSERT INTO productos (nombre, categoria_id, marca_id, precio, stock) VALUES
    -- Consolas
    ('Xbox Series X',             1, 1, 499.99, 80),
    ('Xbox Series S',             1, 1, 299.99, 120),
    ('Nintendo Switch OLED',      1, 3, 349.99, 100),
    ('Nintendo Switch Lite',      1, 3, 199.99, 150),
    ('PlayStation 5',             1, 4, 499.99, 60),
    ('PlayStation 5 Slim',        1, 4, 449.99, 75),
    -- Accesorios Microsoft
    ('Control Xbox Elite S2',     2, 1,  179.99, 200),
    ('Control Xbox Inalámbrico',  2, 1,   59.99, 300),
    -- Accesorios HyperX
    ('HyperX Cloud III Headset',  2, 2,   99.99, 250),
    ('HyperX Alloy Origins Core', 2, 2,  109.99, 180),
    ('HyperX Pulsefire Haste 2',  2, 2,   59.99, 220),
    -- Accesorios Nintendo
    ('Joy-Con Neón',              2, 3,   79.99, 200),
    ('Pro Controller Switch',     2, 3,   69.99, 170),
    -- Accesorios Sony
    ('DualSense PS5',             2, 4,   69.99, 260),
    ('DualSense Edge PS5',        2, 4,  199.99, 100),
    ('Auriculares Pulse 3D',      2, 4,   99.99, 140),
    -- Accesorios Razer
    ('Razer BlackShark V2 X',     2, 5,   59.99, 190),
    ('Razer Wolverine V2',        2, 5,  149.99, 130),
    ('Razer Kishi V2',            2, 5,   99.99, 110);

-- Ventas 2024 (datos ficticios realistas)
INSERT INTO ventas (producto_id, cantidad, fecha, descuento, devolucion) VALUES
-- Enero
(5,  3, '2024-01-05', 0.00, 0), (1,  2, '2024-01-07', 5.00, 0),
(9,  5, '2024-01-10', 0.00, 0), (14, 8, '2024-01-12', 0.00, 0),
(3,  4, '2024-01-15', 0.00, 0), (17, 6, '2024-01-18', 0.00, 0),
(8,  7, '2024-01-20', 0.00, 0), (12, 5, '2024-01-22', 0.00, 0),
(6,  2, '2024-01-25', 3.00, 0), (10, 4, '2024-01-28', 0.00, 0),
-- Febrero
(5,  4, '2024-02-02', 0.00, 0), (1,  3, '2024-02-05', 0.00, 0),
(14, 6, '2024-02-08', 0.00, 0), (9,  4, '2024-02-10', 0.00, 0),
(3,  5, '2024-02-14', 10.00,0), (15, 2, '2024-02-16', 0.00, 0),
(18, 3, '2024-02-19', 0.00, 0), (7,  2, '2024-02-22', 0.00, 0),
(11, 5, '2024-02-25', 0.00, 0), (4,  6, '2024-02-28', 0.00, 0),
-- Marzo
(5,  3, '2024-03-03', 0.00, 0), (2,  4, '2024-03-06', 0.00, 0),
(14, 7, '2024-03-09', 0.00, 0), (9,  6, '2024-03-12', 0.00, 0),
(3,  3, '2024-03-15', 0.00, 0), (16, 3, '2024-03-18', 0.00, 0),
(8,  8, '2024-03-20', 0.00, 0), (13, 4, '2024-03-23', 0.00, 0),
(17, 5, '2024-03-26', 0.00, 0), (10, 3, '2024-03-29', 0.00, 0),
-- Abril
(5,  2, '2024-04-02', 0.00, 1), (1,  3, '2024-04-05', 0.00, 0),
(14, 5, '2024-04-08', 0.00, 0), (9,  4, '2024-04-11', 0.00, 0),
(4,  7, '2024-04-14', 5.00, 0), (15, 1, '2024-04-17', 0.00, 1),
(8,  6, '2024-04-20', 0.00, 0), (12, 4, '2024-04-23', 0.00, 0),
(18, 2, '2024-04-26', 0.00, 0), (11, 5, '2024-04-29', 0.00, 0),
-- Mayo
(5,  4, '2024-05-03', 0.00, 0), (3,  5, '2024-05-06', 0.00, 0),
(14, 9, '2024-05-09', 0.00, 0), (9,  5, '2024-05-12', 0.00, 0),
(2,  6, '2024-05-15', 8.00, 0), (16, 2, '2024-05-18', 0.00, 0),
(8,  7, '2024-05-21', 0.00, 0), (13, 5, '2024-05-24', 0.00, 0),
(17, 4, '2024-05-27', 0.00, 0), (7,  3, '2024-05-30', 0.00, 0),
-- Junio
(5,  3, '2024-06-04', 0.00, 0), (1,  2, '2024-06-07', 0.00, 0),
(14, 6, '2024-06-10', 0.00, 0), (9,  4, '2024-06-13', 5.00, 0),
(3,  4, '2024-06-16', 0.00, 0), (15, 2, '2024-06-19', 0.00, 0),
(8,  5, '2024-06-22', 0.00, 0), (12, 3, '2024-06-25', 0.00, 0),
(18, 3, '2024-06-28', 0.00, 0), (10, 4, '2024-06-30', 0.00, 0),
-- Julio (pico vacaciones invierno AR)
(5,  6, '2024-07-02', 0.00, 0), (1,  5, '2024-07-05', 0.00, 0),
(14,10, '2024-07-08', 0.00, 0), (9,  8, '2024-07-11', 0.00, 0),
(3,  7, '2024-07-14', 5.00, 0), (4,  9, '2024-07-17', 0.00, 0),
(8, 10, '2024-07-20', 0.00, 0), (13, 6, '2024-07-23', 0.00, 0),
(17, 7, '2024-07-26', 0.00, 0), (7,  4, '2024-07-29', 0.00, 0),
-- Agosto
(5,  4, '2024-08-02', 0.00, 0), (2,  5, '2024-08-05', 0.00, 0),
(14, 7, '2024-08-08', 0.00, 0), (9,  5, '2024-08-11', 0.00, 0),
(3,  4, '2024-08-14', 0.00, 0), (15, 3, '2024-08-17', 0.00, 1),
(8,  6, '2024-08-20', 0.00, 0), (12, 4, '2024-08-23', 0.00, 0),
(18, 3, '2024-08-26', 0.00, 0), (11, 6, '2024-08-29', 0.00, 0),
-- Septiembre
(5,  3, '2024-09-03', 0.00, 0), (1,  3, '2024-09-06', 0.00, 0),
(14, 6, '2024-09-09', 0.00, 0), (9,  4, '2024-09-12', 0.00, 0),
(3,  5, '2024-09-15', 0.00, 0), (16, 2, '2024-09-18', 0.00, 0),
(8,  7, '2024-09-21', 0.00, 0), (13, 4, '2024-09-24', 0.00, 0),
(17, 5, '2024-09-27', 0.00, 0), (10, 3, '2024-09-30', 0.00, 0),
-- Octubre
(5,  4, '2024-10-03', 0.00, 0), (2,  4, '2024-10-06', 0.00, 0),
(14, 8, '2024-10-09', 0.00, 0), (9,  6, '2024-10-12', 0.00, 0),
(3,  5, '2024-10-15', 8.00, 0), (15, 2, '2024-10-18', 0.00, 0),
(8,  8, '2024-10-21', 0.00, 0), (12, 5, '2024-10-24', 0.00, 0),
(18, 4, '2024-10-27', 0.00, 0), (7,  3, '2024-10-30', 0.00, 0),
-- Noviembre (Black Friday)
(5,  8, '2024-11-01', 0.00, 0), (1,  7, '2024-11-04', 15.00,0),
(14,12, '2024-11-08',10.00, 0), (9, 10, '2024-11-11', 0.00, 0),
(3,  9, '2024-11-15', 5.00, 0), (4, 11, '2024-11-18', 0.00, 0),
(8, 12, '2024-11-22', 0.00, 0), (13, 8, '2024-11-25',10.00, 0),
(17, 9, '2024-11-28', 0.00, 0), (7,  6, '2024-11-29',15.00, 0),
-- Diciembre (Navidad)
(5, 10, '2024-12-02', 0.00, 0), (1,  8, '2024-12-05', 0.00, 0),
(14,14, '2024-12-08', 0.00, 0), (9, 11, '2024-12-11', 0.00, 0),
(3, 12, '2024-12-14', 0.00, 0), (6,  5, '2024-12-17', 0.00, 0),
(8, 13, '2024-12-20', 0.00, 0), (12,10, '2024-12-22', 0.00, 0),
(15, 4, '2024-12-24', 0.00, 0), (7,  7, '2024-12-28', 0.00, 0);


-- ============================================================
-- 4. CONSULTAS DE ANÁLISIS
-- ============================================================

-- ► 4.1 Revenue total y unidades vendidas por producto
SELECT
    p.nombre                                          AS producto,
    m.nombre                                          AS marca,
    c.nombre                                          AS categoria,
    SUM(v.cantidad)                                   AS unidades_vendidas,
    ROUND(SUM(v.cantidad * p.precio * (1 - v.descuento/100)), 2) AS revenue_total
FROM ventas v
JOIN productos  p ON v.producto_id = p.producto_id
JOIN marcas     m ON p.marca_id    = m.marca_id
JOIN categorias c ON p.categoria_id = c.categoria_id
WHERE v.devolucion = 0
GROUP BY p.producto_id, p.nombre, m.nombre, c.nombre
ORDER BY revenue_total DESC;

-- ► 4.2 Top 5 productos más vendidos (por unidades)
SELECT
    p.nombre        AS producto,
    m.nombre        AS marca,
    SUM(v.cantidad) AS unidades_vendidas
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
JOIN marcas    m ON p.marca_id    = m.marca_id
WHERE v.devolucion = 0
GROUP BY p.producto_id, p.nombre, m.nombre
ORDER BY unidades_vendidas DESC
LIMIT 5;

-- ► 4.3 Revenue por categoría
SELECT
    c.nombre                                                      AS categoria,
    SUM(v.cantidad)                                               AS unidades_vendidas,
    ROUND(SUM(v.cantidad * p.precio * (1 - v.descuento/100)), 2) AS revenue_total
FROM ventas v
JOIN productos  p ON v.producto_id  = p.producto_id
JOIN categorias c ON p.categoria_id = c.categoria_id
WHERE v.devolucion = 0
GROUP BY c.categoria_id, c.nombre
ORDER BY revenue_total DESC;

-- ► 4.4 Revenue por marca
SELECT
    m.nombre                                                      AS marca,
    SUM(v.cantidad)                                               AS unidades_vendidas,
    ROUND(SUM(v.cantidad * p.precio * (1 - v.descuento/100)), 2) AS revenue_total
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
JOIN marcas    m ON p.marca_id    = m.marca_id
WHERE v.devolucion = 0
GROUP BY m.marca_id, m.nombre
ORDER BY revenue_total DESC;

-- ► 4.5 Ventas mensuales (tendencia anual)
SELECT
    MONTH(v.fecha)                                                AS mes_num,
    MONTHNAME(v.fecha)                                            AS mes,
    SUM(v.cantidad)                                               AS unidades_vendidas,
    ROUND(SUM(v.cantidad * p.precio * (1 - v.descuento/100)), 2) AS revenue_mensual
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
WHERE v.devolucion = 0
GROUP BY MONTH(v.fecha), MONTHNAME(v.fecha)
ORDER BY mes_num;

-- ► 4.6 Tasa de devolución por producto
SELECT
    p.nombre                                        AS producto,
    m.nombre                                        AS marca,
    SUM(v.cantidad)                                 AS unidades_totales,
    SUM(CASE WHEN v.devolucion = 1 THEN v.cantidad ELSE 0 END) AS unidades_devueltas,
    ROUND(
        SUM(CASE WHEN v.devolucion = 1 THEN v.cantidad ELSE 0 END) * 100.0
        / SUM(v.cantidad), 2
    )                                               AS tasa_devolucion_pct
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
JOIN marcas    m ON p.marca_id    = m.marca_id
GROUP BY p.producto_id, p.nombre, m.nombre
HAVING unidades_devueltas > 0
ORDER BY tasa_devolucion_pct DESC;

-- ► 4.7 Productos con stock crítico (menos de 80 unidades)
SELECT
    p.nombre   AS producto,
    m.nombre   AS marca,
    c.nombre   AS categoria,
    p.stock    AS stock_actual
FROM productos  p
JOIN marcas     m ON p.marca_id     = m.marca_id
JOIN categorias c ON p.categoria_id = c.categoria_id
WHERE p.stock < 80
ORDER BY p.stock ASC;

-- ► 4.8 Impacto de descuentos en revenue
SELECT
    p.nombre                                                      AS producto,
    ROUND(AVG(v.descuento), 2)                                    AS descuento_promedio_pct,
    SUM(v.cantidad)                                               AS unidades_vendidas,
    ROUND(SUM(v.cantidad * p.precio), 2)                          AS revenue_sin_descuento,
    ROUND(SUM(v.cantidad * p.precio * (1 - v.descuento/100)), 2) AS revenue_con_descuento,
    ROUND(SUM(v.cantidad * p.precio) -
          SUM(v.cantidad * p.precio * (1 - v.descuento/100)), 2) AS perdida_por_descuento
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
WHERE v.descuento > 0 AND v.devolucion = 0
GROUP BY p.producto_id, p.nombre
ORDER BY perdida_por_descuento DESC;
