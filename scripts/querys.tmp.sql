
SELECT * FROM Productos WHERE ID_Marca = 9;
productos_realme = df_productos.query('ID_Marca == 9')


SELECT * FROM Productos WHERE Estrellas > 4.5;


SELECT Marcas.Nombre_Marca, COUNT(Productos.ID) AS Cantidad_Productos 
FROM Marcas 
INNER JOIN Productos ON Marcas.ID_Marca = Productos.ID_Marca 
GROUP BY Marcas.ID_Marca, Marcas.Nombre_Marca;


SELECT AVG(RAM_GB) AS Promedio_RAM, AVG(ROM_GB) AS Promedio_ROM FROM Productos;

SELECT * FROM Productos ORDER BY Precio_de_venta DESC;

SELECT Marcas.Nombre_Marca, COUNT(Productos.ID) AS Cantidad_Productos 
FROM Marcas 
INNER JOIN Productos ON Marcas.ID_Marca = Productos.ID_Marca 
GROUP BY Marcas.ID_Marca, Marcas.Nombre_Marca
ORDER BY Cantidad_Productos DESC
LIMIT 1;

SELECT * FROM Productos WHERE Precio_de_lista > Precio_de_venta;

SELECT * FROM Productos WHERE RAM_GB > 6;

SELECT SUM(Reseñas) AS Suma_Reseñas FROM Productos;

SELECT * FROM Productos WHERE Estrellas BETWEEN 4.0 AND 4.5;
