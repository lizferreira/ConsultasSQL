-- CONSULTA # 9

/*
  Muestra los 5 comentarios más recientes de la tabla Comments. 
  Ordena los comentarios por fecha de creación de forma descendente y selecciona solo los 5 primeros. 
  Presenta los resultados en una tabla mostrando el Text del comentario y la fecha de creación
*/

SELECT TOP 5 c.Text, c.CreationDate -- selecciona los 5 primeros comentarios mas recientes (texto del comentario y fecha de creacion del comentario)

FROM Comments c

ORDER BY c.CreationDate DESC; -- ordena los comentarios por fecha de creacion de forma descendente
