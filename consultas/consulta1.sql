-- CONSULTA #1
/*
  De la Tabla Users selecciona las columnas DisplayName, Age, y Reputation de los usuarios mayores a 30 años, ordenados por reputación de forma descendente,
  puedes tomar una cantidad de 200 usuarios para esto.
  Debes filtrar los usuarios por edad y muestra solo aquellos mayores de 30 años. Luego, ordena los resultados por reputación de forma descendente. 
  Presenta los resultados en una tabla mostrando solo las columnas DisplayName, Age, y Reputation
*/

UPDATE Users SET Age = FLOOR(RAND() * 83) + 18; -- asigna edades aleatorias entre 1 y 100 (a modo de prueba para poder visualizar la consulta, ya que esa columna tenia valores nulos)

SELECT TOP 200 DisplayName, Age, Reputation -- selecciona las columnas de la tabla de usuarios (los primeros 200 usuarios)

FROM Users 

WHERE Age > 30 -- filtra los usuarios que tienen mas de 30 años

ORDER BY Reputation DESC; -- ordena los resultados por Reputation de forma descendente
