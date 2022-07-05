USE MindboxTask

SELECT Products.[Name] AS ProductName, Categories.[Name] AS CategoryName
FROM Products LEFT JOIN Categories
ON EXISTS (SELECT 1 FROM ProductCategories
WHERE ProductCategories.ProductId = Products.ProductId AND ProductCategories.CategoryId = Categories.CategoryId)