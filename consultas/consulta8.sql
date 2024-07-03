-- CONSULTA #8
/*
  Muestra las 10 publicaciones más populares basadas en la puntuación (Score) de la tabla Posts. 
  Ordena las publicaciones por puntuación de forma descendente y selecciona solo las 10 primeras. 
  Presenta los resultados en una tabla mostrando el Title de la publicación y su puntuación
*/

SELECT TOP 10 p.Title, p.Score -- selecciona las 10 primeras publicaciones con mayor puntuacion

FROM Posts p 

WHERE p.Title IS NOT NULL -- filtra las publicaciones que tienen un titulo  

ORDER BY p.Score DESC; -- ordena las publicaciones por puntuacion de forma descendente
