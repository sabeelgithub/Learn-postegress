create table vehicle(
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);
create table human(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    gender VARCHAR(7),
    date_of_birth DATE NOT NULL,
    country_of_birth VARCHAR(50),
    vehi_id BIGINT REFERENCES vehicle(id),
    UNIQUE(vehi_id)
);
insert into human (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Major', 'Hallihane', 'mhallihane0@ftc.gov', 'Male', '2022/07/23', 'China');
insert into human (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Carolin', 'Rittelmeyer', 'crittelmeyer1@bluehost.com', 'Female', '2022/12/12', 'Philippines');
insert into human (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Urbano', 'O''Duane', 'uoduane2@vinaora.com', 'Male', '2023/01/19', 'Indonesia');
insert into vehicle (id, make, model, price) values (1, 'Mitsubishi', 'Chariot', 73318);
insert into vehicle (id, make, model, price) values (2, 'Jaguar', 'S-Type', 19377);
insert into vehicle (id, make, model, price) values (3, 'Pontiac', 'Grand Prix', 59558);