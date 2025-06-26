	CREATE INDEX idx_type_code
ON item(type, code);

	CREATE INDEX idx_type_code_manufacturer
ON item(type, code, manufacturer_code);

	CREATE INDEX idx_type_price
ON table_(type, price);

	CREATE INDEX idx_basematerial_price
ON table_(basematerial, price);

	CREATE INDEX idx_type_basematerial
ON table_(type, basematerial);


CREATE INDEX idx_basematerial_price
ON chair(basematerial, price);

CREATE INDEX idx_numLegs
ON chair(num_legs);


CREATE INDEX idx_basematerial_price
ON sofa(basematerial, price);

	CREATE INDEX idx_numSeats
ON sofa(num_seats);


CREATE INDEX idx_name
ON manufacturer(name);

CREATE INDEX idx_name_county
ON manufacturer(name, county);


CREATE INDEX idx_sector_row_position
ON location(sector, row, position);


CREATE INDEX idx_id_name
ON bundle(id,name);

CREATE INDEX idx_bundleID_storeCode
ON delivery(bundle_id,store_code);


CREATE INDEX idx_name_address
ON store(name, address);

CREATE INDEX idx_type_name
ON store(type, name);

CREATE INDEX idx_code_name
ON store(code, name);
