create table vandi(
	vandi_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);
create table manushyan(
    manushyan_uid UUID NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    gender VARCHAR(7),
    date_of_birth DATE NOT NULL,
    country_of_birth VARCHAR(50),
    van_uid UUID REFERENCES vandi(vandi_uid),
    UNIQUE(van_uid)
);
insert into manushyan (manushyan_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Major', 'Hallihane', 'mhallihane0@ftc.gov', 'Male', '2022/07/23', 'China');
insert into manushyan (manushyan_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Carolin', 'Rittelmeyer', 'crittelmeyer1@bluehost.com', 'Female', '2022/12/12', 'Philippines');
insert into manushyan (manushyan_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Urbano', 'O''Duane', 'uoduane2@vinaora.com', 'Male', '2023/01/19', 'Indonesia');
insert into vandi (vandi_uid, make, model, price) values (uuid_generate_v4(), 'Mitsubishi', 'Chariot', 73318);
insert into vandi (vandi_uid, make, model, price) values (uuid_generate_v4(), 'Jaguar', 'S-Type', 19377);
insert into vandi (vandi_uid, make, model, price) values (uuid_generate_v4(), 'Pontiac', 'Grand Prix', 59558);