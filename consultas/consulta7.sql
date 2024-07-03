-- CONSULTA #7
/*
  Para cada usuario, muestra el número total de publicaciones (Posts), comentarios (Comments) y medallas (Badges) que han realizado. 
  Utiliza uniones (JOIN) para combinar la información de las tablas Posts, Comments y Badges por usuario. 
  Presenta los resultados en una tabla mostrando el DisplayName del usuario junto con el total de publicaciones, comentarios y medallas
*/

-- selecciona la informacion de la tabla Users y subconsultas necesarias
SELECT 
	u.Id,
	u.DisplayName,
	(SELECT COUNT(*) FROM Posts p WHERE p.OwnerUserId = u.Id) AS TotalPosts, -- cuenta el numero de publicaciones del usuario
	(SELECT COUNT(*) FROM Comments c WHERE c.UserId = u.Id) AS TotalComments, -- cuenta el numero de comentarios del usuario
	(SELECT COUNT(*) FROM Badges b WHERE b.UserId = u.Id) AS TotalBadges -- cuenta el numero de medallas del usuario

FROM 
	Users u

ORDER BY u.DisplayName; -- ordena los resultados por DisplayName del usuario
