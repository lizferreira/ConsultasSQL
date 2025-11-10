-- ISNULL

SELECT FirstName,
      ISNULL(MiddleName, 'None') AS MiddleIfAny,
      LastName
FROM Sales.Customer;

-- COALESCE
-- es un poco mas flexible
SELECT COALESCE ( expression1, expression2, [ ,...n ] )

SELECT EmployeeID,
      COALESCE(HourlyRate * 40,
                WeeklySalary,
                Commission * SalesQty) AS WeeklyEarnings
FROM HR.Wages;

-- NULLIF
-- permitte devolver null en determinadas condiciones
-- NULLIF toma dos argumentos y devuelve NULL si son equivalentes. Si no son iguales, NULLIF devuelve el primer argumento.


SELECT SalesOrderID,
      ProductID,
      UnitPrice,
      NULLIF(UnitPriceDiscount, 0) AS Discount
FROM Sales.SalesOrderDetail;

