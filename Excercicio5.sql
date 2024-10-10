
/* Teste

Select 
Productname as 'Nome do Produto',
BrandName as 'Nome da Marca',
ColorName as 'Qual Cor'
From DimProduct*/



/* Exercicio 5*/ 
SELECT *
FROM Dimproduct
WHERE ProductKey NOT IN (SELECT ProductKey FROM FactSales);

SELECT p.*
FROM DimProduct p
LEFT JOIN FactSales v ON p.ProductKey = v.ProductKey
WHERE v.ProductKey IS NULL;
