create table test (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);
insert into test (id, make, model, price) values (1, 'Mitsubishi', 'Chariot', 73318);
insert into test (id, make, model, price) values (2, 'Jaguar', 'S-Type', 19377);
insert into test (id, make, model, price) values (3, 'Pontiac', 'Grand Prix', 59558);
insert into test (id, make, model, price) values (4, 'Mercedes-Benz', 'E-Class', 25079);