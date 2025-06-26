SELECT sofas.item_code AS SOFA_CODE, 
	   sofas.price AS PRICE
	FROM SOFA sofas
WHERE sofas.price < 500;

SELECT manufacturers.name AS MANUFACTURER, 
	   manufacturers.year AS YEAR_OF_FOUNDATION
	FROM MANUFACTURER manufacturers
WHERE manufacturers.county = 'Bulgaria'
	AND manufacturers.year > 1990;

SELECT stores.code AS CODE,
	   stores.name AS NAME,
	   stores.address AS ADDRESS
	FROM STORE stores
WHERE stores.type = 'furniture store';

SELECT locations.code AS CODE,
	   locations.sector AS SECTOR,
	   locations.row AS ROW,
	   locations.position AS POSITION
	FROM LOCATION locations
WHERE locations.code like ('SB%');

SELECT chairs.price AS PRICE
	FROM CHAIR chairs
WHERE (chairs.colour = 'Red' OR chairs.colour = 'Black')
	AND chairs.price < 250;
