-- CONSULTA #5
/*
  Actualiza la columna Location de la tabla Users cambiando todas las ubicaciones vacías por "Desconocido". 
  Utiliza una consulta de actualización para cambiar las ubicaciones vacías.
  Muestra un mensaje indicando que la actualización se realizó correctamente.
*/

UPDATE Users -- actualiza la columna Location de la tabla (Users)

SET Location = 'Desconocido'

WHERE Location IS NULL OR Location = ''

SELECT 'La actualización se realizó correctamente'; -- muestra un mensaje de actualizacion exitosa

SELECT * FROM Users -- muestra el resultado de la tabla Users despues de la actualizacion
