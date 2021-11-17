DELETE FROM items WHERE name = 'weed_pooch';
DELETE FROM items WHERE name = 'coke_pooch';
DELETE FROM items WHERE name = 'spice_pooch';
DELETE FROM items WHERE name = 'double_cup';
DELETE FROM items WHERE name = 'lean_bottle';
DELETE FROM items WHERE name = 'xpills';
DELETE FROM items WHERE name = 'heroin_shot';
DELETE FROM items WHERE name = 'meth_pooch';

INSERT INTO `items` (`name`, `label`, `weight`) VALUES
	('weed_pooch', 'Weed Pooch', 1),
	('coke_pooch', 'Coke Pooch', 1),
	('spice_pooch', 'Spice Pooch', 1),
	('lean_bottle', 'Lean bottle', 1),
	('double_cup', 'Double cup', 1),
	('xpills', 'X-Pills', 1),
	('heroin_shot', 'Heroin Shot', 1),
	('meth_pooch', 'Meth Pooch', 1)
;
