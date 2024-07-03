-- CONSULTA #6
/*
  Elimina todos los comentarios realizados por usuarios con menos de 100 de reputación.
  Utiliza una consulta de eliminación para eliminar todos los comentarios realizados y muestra un mensaje indicando cuántos comentarios fueron eliminados
*/


DELETE FROM Comments -- elimina los comentarios de la tabla Comments

-- filtra los comentarios para que incluyan solo los que se realizaron por usuarios con menos de 100 de reputacion
WHERE UserId IN (

	SELECT Id -- subconsulta que selecciona los Id de los usarios con menos de 100 de reputacion

	FROM Users

	WHERE Reputation < 100

	);

SELECT @@ROWCOUNT AS 'Comentarios eliminados'; -- muestra el numero de filas eliminadas
