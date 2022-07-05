CREATE DATABASE MindboxTask
GO

USE MindboxTask
GO

CREATE TABLE Products(
	ProductId INT PRIMARY KEY IDENTITY(0, 1),
	[Name] VARCHAR(500)
);
GO

CREATE TABLE Categories(
	CategoryId INT PRIMARY KEY IDENTITY(0, 1),
	[Name] VARCHAR(100)
);
GO

CREATE TABLE ProductCategories(
	ProductId INT NOT NULL,
	CategoryId INT NOT NULL,
	FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
	FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
);
GO

CREATE INDEX IX_ProductCategories_ProductId_CategoryId ON ProductCategories(ProductId, CategoryId)
GO
