-- SELECCION DE TODAS LAS COLUMNAS
-- recupera todas las columnas de la tabla

SELECT * FROM Production.Product


-- SELECCION DE COLUMNAS ESPECIFICAS

SELECT ProductID, Name, ListPrice, StandarCost
FROM Production.Product;

-- Seleccion de expresiones

SELECT ProductID,
        Name + '(' + ProductoNumber + ')',
    ListPrice - StandarCost
FROM Production.Product;

-- especificacion de alias de columna
SELECT ProductID AS ID,
      Name + '(' + ProductNumber + ')' AS ProductName,
  ListPrice - StandardCost AS Markup
FROM Production.Product;

-- conversion de tipos de datos
-- CAST Y TRY_CAST

-- convierte los valores integer de productid en valores varchar para concatenar con otro valor basado en caracteres

SELECT CAST(ProductID AS varchar(4)) + ': ' + Name AS ProductName
FROM Production.Product;

-- si la columna size es una columna varchar que contiene algunos tamanhos numericos y algunos basados en texto, convertir los valores en un tipo de datos integer
SELECT CAST(Size AS integer) As NumericSize
FROM Production.Product;
-- genera un error


-- alternativa usando TRY_CAST
SELECT TRY_CAST(Size AS integer) As NumericSize
FROM Production.Product;
-- los valores incompatibles devuelve como null


-- CONVERT Y TRY_CONVERT
-- convertir entre tipos de datos

SELECT CONVERT(varchar(4), ProductID) + ': ' + Name AS ProductName
FROM Production.Product;


SELECT SellStartDate,
       CONVERT(varchar(20), SellStartDate) AS StartDate,
       CONVERT(varchar(10), SellStartDate, 101) AS FormattedStartDate 
FROM SalesLT.Product;

-- PARSE Y TRY_PARSE
--convierte cadenas con formato de valores numericos o fecha y hora

SELECT PARSE('01/01/2021' AS date) AS DateValue,
   PARSE('$199.99' AS money) AS MoneyValue;

--    STR
-- convierte un valor numerico en varchar

SELECT ProductID,  '$' + STR(ListPrice) AS Price
FROM Production.Product;