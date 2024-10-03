CREATE TABLE productos (
id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
categoria VARCHAR(50) NOT NULL,
fecha_lanzamiento DATE NOT NULL,
proveedor_id INT,
PRIMARY KEY(id),
FOREIGN KEY (proveedor_id) REFERENCES proveedores(id) 
);

INSERT INTO productos (nombre, precio, categoria, fecha_lanzamiento,
proveedor_id)
VALUES
('Laptop', 1200.00, 'Electrónica', '2021-01-01', NULL),
('Smartphone', 800.00, 'Electrónica', '2020-05-15', NULL),
('Cafetera', 50.00, 'Hogar', '2019-08-20', NULL),
('Libro', 20.00, 'Libros', '2022-03-10', NULL),
('Tablet', 300.00, 'Electrónica', '2021-06-01', 1),
('Aspiradora', 150.00, 'Hogar', '2020-11-20', 2),
('Monitor', 250.00, 'Electrónica', '2018-07-15', 3),
('Juego de Mesa', 30.00, 'Juegos', '2022-09-05', 4);

-- Punto 3
-- SELECT * FROM productos WHERE (precio > 200.00 AND categoria = 'Electrónica') OR (precio < 51.00 AND categoria = 'Hogar');
--
-- Punto 4
-- Select avg(precio) as Precio_Promedio from productos group by categoria HAVING (Precio_Promedio > 100.00);

-- Punto 5
-- select * from productos order by precio desc, nombre asc;
--
-- Punto 6
-- update productos set precio = precio * 1.10 where categoria = 'Electrónica';
-- select * from productos;
--
-- punto 7
-- delete from productos where categoria = 'libros' and fecha_lanzamiento < '2020-01-01'; 
--
-- Punto 8
-- select * from productos where precio > (select avg(precio) from productos);




-- select categoria, count(*) as Cantidad_Productos, avg(precio) as Precio_promedio from productos group by categoria;

-- select proveedores.id, proveedores.correo, productos.nombre from proveedores left join productos on proveedores.id = productos.proveedor_id;