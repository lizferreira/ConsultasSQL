# consultas_stackoverflow2010

Este repositorio contiene consultas SQL y resultados para la base de datos Stack Overflow 2010.

## Estructura del repositorio

Este repositorio contiene dos carpetas:
- `consultas`: contiene las consultas SQL realizadas en archivos `.sql` separados. Cada archivo contiene una consulta específica con su descripcion.
- `resultados`: contiene los resultados de cada consulta en archivos `csv` separados.

## Consultas SQL

Las siguientes consultas estan incluidas en este repositorio:

- `Consulta 1`: De la Tabla Users selecciona las columnas DisplayName, Age, y Reputation de los usuarios mayores a 30 años, ordenados por reputación de forma descendente, puedes tomar una cantidad de 200 usuarios para esto. Debes filtrar los usuarios por edad y muestra solo aquellos mayores de 30 años. Luego, ordena los resultados por reputación de forma descendente. Presenta los resultados en una tabla mostrando solo las columnas DisplayName, Age, y Reputation
- `Consulta 2`: Selecciona la columna Title de la tabla Posts junto con el DisplayName de los usuarios que lo publicaron para aquellos posts que tienen un propietario. Para lograr esto une las tablas Posts y Users utilizando OwnerUserId para obtener el nombre del usuario que publicó cada post. Presenta los resultados en una tabla mostrando las columnas Title y DisplayName
- `Consulta 3`: Calcula el promedio de Score de los Posts por cada usuario y muestra el DisplayName del usuario junto con el promedio de Score. Para esto agrupa los posts por OwnerUserId, calcula el promedio de Score para cada usuario y muestra el resultado junto con el nombre del usuario. Presenta los resultados en una tabla mostrando las columnas DisplayName y el promedio de Score
- `Consulta 4`: Calcula el promedio de Score de los Posts por cada usuario y muestra el DisplayName del usuario junto con el promedio de Score. Para esto agrupa los posts por OwnerUserId, calcula el promedio de Score para cada usuario y muestra el resultado junto con el nombre del usuario. Presenta los resultados en una tabla mostrando las columnas DisplayName y el promedio de Score
- `Consulta 5`: Actualiza la columna Location de la tabla Users cambiando todas las ubicaciones vacías por "Desconocido". Utiliza una consulta de actualización para cambiar las ubicaciones vacías. Muestra un mensaje indicando que la actualización se realizó correctamente.
- `Consulta 6`: Elimina todos los comentarios realizados por usuarios con menos de 100 de reputación. Utiliza una consulta de eliminación para eliminar todos los comentarios realizados y muestra un mensaje indicando cuántos comentarios fueron eliminados
- `Consulta 7`: Para cada usuario, muestra el número total de publicaciones (Posts), comentarios (Comments) y medallas (Badges) que han realizado. Utiliza uniones (JOIN) para combinar la información de las tablas Posts, Comments y Badges por usuario. Presenta los resultados en una tabla mostrando el DisplayName del usuario junto con el total de publicaciones, comentarios y medallas
- `Consulta 8`: Muestra las 10 publicaciones más populares basadas en la puntuación (Score) de la tabla Posts. Ordena las publicaciones por puntuación de forma descendente y selecciona solo las 10 primeras. Presenta los resultados en una tabla mostrando el Title de la publicación y su puntuación
- `Consulta 9`: Muestra los 5 comentarios más recientes de la tabla Comments. Ordena los comentarios por fecha de creación de forma descendente y selecciona solo los 5 primeros. 
  Presenta los resultados en una tabla mostrando el Text del comentario y la fecha de creación

### Ejemplo de consulta
- `consulta1.sql`: Esta consulta selecciona de la tabla `Users` las columnas `DisplayName`, `Age`, y `Reputation` de los usuarios mayores a 30 años, ordenados por reputación de forma descendente.

```sql
-- consulta1.sql
SELECT TOP 200 DisplayName, Age, Reputation
FROM Users 
WHERE Age > 30
ORDER BY Reputation DESC;
```
Podes ejecutar estas consultas en tu entorno de SQL Server Management Studio para obtener los mismos resultados.

### Resultados
Los resultados de las consultas han sido exportados como archivos `csv` y se encuentra en la carpeta `resultados`

### Ejemplo de resultado

- `resultado_consulta1.csv`: contiene los resultados de la consulta que selecciona los usuarios mayores de 30 años ordenados por reputación.
```csv
DisplayName,Age,Reputation
"Usuario1",35,1000
"Usuario2",40,800
...
```
## Ejecución

Para ejecutar las consultas, simplemente ejecute cada archivo `.sql` en una base de datos (Microsoft SQL Server Management Studio)

### Herramientas utilizadas 
- SQL Server 2022
- Microsoft SQL Server Management Studio 20
- Base de datos StackOverflow2010 [2008-2010]
