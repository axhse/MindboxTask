USE MindboxTask

INSERT INTO Products([Name])
VALUES
	('Apple juice'),
	('Chips'),
	('Cream soup'),
	('Friend eggs'),
	('Ketchup'),
	('Pancakes'),
	('Pasta'),
	('Tea')

INSERT INTO Categories([Name])
VALUES
	('Breakfast'),
	('Candy'),
	('Dinner'),
	('Drinks'),
	('Lunch'),
	('Snacks')

INSERT INTO ProductCategories(ProductId, CategoryId)
VALUES
	(0, 0),
	(0, 3),
	(1, 5),
	(2, 4),
	(3, 0),
	(3, 2),
	(3, 4),
	(5, 0),
	(6, 2),
	(6, 4),
	(7, 0),
	(7, 2),
	(7, 3),
	(7, 4)
