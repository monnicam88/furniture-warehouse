CREATE VIEW v_allItemsPrices
AS
SELECT item.code, price
FROM item, table_
WHERE item.code=table_.item_code
UNION
SELECT item.code, price
FROM item, sofa
WHERE item.code=sofa.item_code
UNION
SELECT item.code, price
FROM item, chair
WHERE item.code=chair.item_code

CREATE VIEW v_AvgPricesOfProducts
AS
SELECT type, AVG(price) AS avg_price
FROM item, chair
WHERE item.code=chair.item_code
GROUP BY type
UNION
SELECT type, AVG(price) AS avg_price
FROM item, sofa
WHERE item.code=sofa.item_code
GROUP BY type
UNION
SELECT item.type, AVG(price) AS avg_price
FROM item, table_
WHERE item.code=table_.item_code
GROUP BY item.type

CREATE VIEW v_sofasAbove100
AS
SELECT item_code, basematerial, price
FROM sofa
WHERE price>=100
WITH CHECK OPTION;

CREATE VIEW v_all_4legged_Chairs
AS
SELECT item_code, basematerial, colour
FROM chair
WHERE num_legs=4
WITH CHECK OPTION;

CREATE VIEW v_min_max_prices_allMaterials
AS
SELECT basematerial, MIN(price) AS min_price, MAX(price) AS max_price
FROM chair
GROUP BY basematerial

CREATE VIEW v_wooden_tables
AS
SELECT basematerial, type
FROM table_
WHERE basematerial LIKE '%wood%'
WITH CHECK OPTION;

CREATE VIEW v_Bulgarian_manufacturers
AS
SELECT *
FROM manufacturer
WHERE county='Bulgaria'
WITH CHECK OPTION;

CREATE VIEW v_bulgarianBundles_withDescription
AS
SELECT *
FROM bundle
WHERE name LIKE '%bulgarian%' AND description IS NOT NULL
WITH CHECK OPTION;

CREATE VIEW v_deliveriesBefore2022
AS
SELECT bundle_id, delivery_feature_id, delivery_date
FROM delivery
WHERE delivery_date<'2022-01-01'
WITH CHECK OPTION;

CREATE VIEW v_allStores_numberOfBundles
AS
SELECT store.name, COUNT(delivery.bundle_id) AS num_bundles
FROM store, delivery
WHERE store.code=delivery.store_code
GROUP BY store.name

CREATE VIEW v_stores_deliveries
AS
SELECT DISTINCT s.code, s.name, s.type, df.delivery_company, df.delivery_vehicle
FROM store s, delivery d, delivery_feature df
WHERE s.code=d.store_code AND d.delivery_feature_id=df.id
