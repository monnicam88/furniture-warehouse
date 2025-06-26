SELECT items.manufacturer_code AS MANUFACTURER_CODE
	FROM ITEM items
WHERE items.code IN (SELECT tables_.item_code
						FROM TABLE_ tables_
					WHERE tables_.type = 'oval');
					
SELECT manufacturers.name AS MANUFACTURER_NAME,
	   manufacturers.county AS COUNTRY,
	   manufacturers.year AS YEAR_OF_FOUNDATION
	FROM MANUFACTURER manufacturers
WHERE manufacturers.code IN (SELECT items.manufacturer_code
								FROM ITEM items
							WHERE items.type = 'Chair');

SELECT items.type AS ITEM_TYPE, 
	   products.price AS ITEM_PRICE
	FROM ITEM items, (SELECT sofas.item_code, sofas.price
						FROM SOFA sofas
					UNION
					SELECT chairs.item_code, chairs.price
						FROM CHAIR chairs
					UNION
					SELECT tables_.item_code, tables_.price
						FROM TABLE_ tables_) products
WHERE items.code = products.item_code
	AND products.price >= ALL (SELECT price
								  FROM SOFA
							   UNION
							   SELECT price
								  FROM CHAIR
							   UNION
							   SELECT price
							      FROM TABLE_);

SELECT name AS STORE_NAME
	FROM STORE
WHERE code IN (SELECT store_code
				FROM DELIVERY
			   WHERE delivery_date >= ALL (SELECT delivery_date 
											FROM DELIVERY));

SELECT bundle_id AS BUNDLE_NUMBER
	FROM BUNDLEITEM 
WHERE item_code IN (SELECT items.code
					 FROM ITEM items
					WHERE items.code IN (SELECT sofas.item_code
											FROM SOFA sofas
										 WHERE sofas.basematerial = 'Leather'
											AND sofas.num_seats = 2));
