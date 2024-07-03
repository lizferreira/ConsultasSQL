-- CONSULTA #2
/*
  Selecciona la columna Title de la tabla Posts junto con el DisplayName de los usuarios que lo publicaron para aquellos posts que tienen un propietario.
  Para lograr esto une las tablas Posts y Users utilizando OwnerUserId para obtener el nombre del usuario que publicó cada post. 
  Presenta los resultados en una tabla mostrando las columnas Title y DisplayName
  */

SELECT p.Title, u.DisplayName -- selecciona las columnas de la tabla de Posts

FROM Posts p -- de la tabla Posts, asignando el alias 'p' a la tabla

JOIN Users u ON p.OwnerUserId = u.Id -- une la tabla Posts con la tabla Users utilizando la columna OwnerUserId de Posts y la columna Id de Users

WHERE p.OwnerUserId IS NOT NULL AND p.Title IS NOT NULL; -- filtra los resultados para solo incluir los posts que tienen un propietario (evitando los valores nulos - NULL)
