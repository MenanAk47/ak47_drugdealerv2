DELETE FROM items WHERE name = 'weed_pooch';
DELETE FROM items WHERE name = 'coke_pooch';
DELETE FROM items WHERE name = 'spice_pooch';
DELETE FROM items WHERE name = 'double_cup';
DELETE FROM items WHERE name = 'lean_bottle';
DELETE FROM items WHERE name = 'xpills';
DELETE FROM items WHERE name = 'heroin_shot';
DELETE FROM items WHERE name = 'meth_pooch';

INSERT INTO `items` (`name`, `label`, `limit`) VALUES
	('weed_pooch', 'Weed Pooch', 10),
	('coke_pooch', 'Coke Pooch', 10),
	('spice_pooch', 'Spice Pooch', 10),
	('lean_bottle', 'Lean bottle', 10),
	('double_cup', 'Double cup', 10),
	('xpills', 'X-Pills', 10),
	('heroin_shot', 'Heroin Shot', 10),
	('meth_pooch', 'Meth Pooch', 10)
;
