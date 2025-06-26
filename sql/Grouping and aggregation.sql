select AVG(price) AS Àveràgå_sofa_price
	from SOFA;
 
select basematerial, AVG(price) AS Average_price
	from SOFA
group by basematerial
order by Average_price ASC;

select type, COUNT(type) AS Count
	from ITEM
group by type;

select b.bundle_id, COUNT(b.bundle_id) AS item_count
	from BUNDLEITEM b
group by b.bundle_id
having COUNT(b.bundle_id) < 5;

select l.row, COUNT(l.position) AS Taken_positions_count
	from LOCATION l
group by l.row

select b.description, COUNT(b.description) AS Count_occurences
	from BUNDLE b
group by b.description
having b.description is NOT NULL

select * 
	from CHAIR;
select SUM(c.price) AS Bundle_price_sum
	from CHAIR c
where c.num_legs = 3;

select AVG(price)
	from (select price from CHAIR 
		  union all
		  select price from SOFA
		  union all
		  select price from TABLE_) price

select l.sector, COUNT(l.sector) Armchairs_count
	from ITEM i join LOCATION l on i.loc_code = l.code
where i.type = 'Sofa'
group by l.sector;

select  c.num_legs, MAX(c.price) as Max_price
	from ITEM i 
		 join CHAIR c on i.code = c.item_code
		 join MANUFACTURER m on m.code = i.manufacturer_code
where m.county = 'Bulgaria'
group by c.num_legs
