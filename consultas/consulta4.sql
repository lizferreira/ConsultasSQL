-- CONSULTA #4
/*
  Encuentra el DisplayName de los usuarios que han realizado más de 100 comentarios en total. 
  Para esto utiliza una subconsulta para calcular el total de comentarios por usuario y luego filtra aquellos usuarios que hayan realizado más de 100 comentarios en total. 
  Presenta los resultados en una tabla mostrando el DisplayName de los usuarios
*/

SELECT u.DisplayName -- selecciona la columna DisplayName de la tabla de usuarios (USers)

FROM Users u -- de la tabla Users asignando el alias 'u'

-- filtra los resultados para que incluyan solo los usuarios que realizaron más de 100 comentarios
WHERE u.Id IN (
	
	SELECT c.UserId -- subconsulta que calcula el total de comentarios por usuario
	
	FROM Comments C
	
	GROUP BY c.UserId
	
	HAVING COUNT(c.Id) > 100
	);
