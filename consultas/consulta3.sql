-- CONSULTA #3
/*
  Calcula el promedio de Score de los Posts por cada usuario y muestra el DisplayName del usuario junto con el promedio de Score.
  Para esto agrupa los posts por OwnerUserId, calcula el promedio de Score para cada usuario y muestra el resultado junto con el nombre del usuario. 
  Presenta los resultados en una tabla mostrando las columnas DisplayName y el promedio de Score
*/

SELECT u.DisplayName, AVG(p.Score) AS PromedioScore -- selecciona las columnas DsiplayName de la tabla Users y el promedio de la tabla Posts

FROM Posts p -- de la tabla Posts, asignando el alias 'p'

INNER JOIN Users u ON p.OwnerUserId = u.Id -- une la tabla Posts con la tabla Users

WHERE p.OwnerUserId IS NOT NULL  -- filtra los resultados que incluya solo los posts de un usuario

GROUP BY u.DisplayName -- agrupa los resultados por nombre de usuario

ORDER BY PromedioScore DESC; -- ordena el promedio de forma descendente
