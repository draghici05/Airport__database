CREATE TABLE Airplane (
    airplane_id NUMBER(3) CONSTRAINT pk_airplane_id PRIMARY KEY,
    airline_id CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    airplane_capacity NUMBER(3),
    production_year NUMBER(4)
);

CREATE TABLE Airlines (
    airline_id NUMBER(3) PRIMARY KEY,
    airline_name VARCHAR2(100),
    country VARCHAR2(100)
);

CREATE TABLE Airport (
    airport_id NUMBER(2) PRIMARY KEY,
    airport_name VARCHAR2(100),
    airport_location VARCHAR2(100),
    contact_number NUMBER(10)
    airline_id CONSTRAINT fk_airline_id FOREIGN KEY (airline_id) REFERENCES Airlines (airline_id);
);

CREATE TABLE Flights (
    flight_id NUMBER(2) PRIMARY KEY,
    airline_id NUMBER(3) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    flight_number VARCHAR2(10) NOT NULL,
    departure_airport VARCHAR2(50) NOT NULL,
    arrival_airport VARCHAR2(50) NOT NULL
);

CREATE TABLE Flight_Attendant (
    attendant_id NUMBER(3) PRIMARY KEY, 
    att_first_name VARCHAR2(50),
    att_last_name VARCHAR2(50),
    hire_date DATE
);

CREATE TABLE Passengers (
    passenger_id NUMBER(3) PRIMARY KEY,
    passaport_no CHAR(5),
    pass_first_name VARCHAR2(50),
    pass_last_name VARCHAR2(50)
);

CREATE TABLE Contracts (
    contract_id NUMBER(3) PRIMARY KEY,
    airline_id NUMBER(3) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    airport_id NUMBER(2) CONSTRAINT fk_airport_id REFERENCES Airport(airport_id),
    contract_value NUMBER(2,2), -- Use NUMBER for precise values, assuming 10 digits with 2 decimals
    con_start_date DATE,
    con_end_date DATE
);


-- Insert data

INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (1, 1, 150, 2010);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (2, 2, 190, 2009);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (3, 3, 300, 2020);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (4, 4, 250, 2019);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (5, 5, 275, 2021);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (6, 6, 290, 2022);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (7, 7, 200, 2018);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (8, 8, 170, 2016);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (9, 9, 230, 2014);
INSERT INTO Airplane (airplane_id, airline_id, airplane_capacity, production_year) VALUES (10, 10, 200, 2023);

INSERT INTO Airlines (airline_id, airline_name, country) VALUES (1, 'Delta Airlines', 'USA');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (2, 'British Airlines', 'UK');
INSERT INTO Airlines (airline_id, airline_name, coutnry) VALUES (3, 'Singapore Airlines', 'Singapore');
INSERT INTO Airlines (airline_id, airline_name, coutnry) VALUES (4, 'Sigma Airlines' 'Germany');
INSERT INTO Airlines (airline_id, airline_name, coutnry) VALUES (5, 'Pegasus Airlines', 'Argentina');
INSERT INTO Airlines (airline_id, airline_name, coutnry) VALUES (6, 'Kitten Airlines', 'Hungary');
INSERT INTO Airlines (airline_id, airline_name, coutnry) VALUES (7, 'Robin Airlines', 'Croatia');
INSERT INTO Airlines (airline_id, airline_name, coutnry) VALUES (8, 'Cosmos Airlines', 'Los Angeles');
INSERT INTO Airlines (airline_id, airline_name, coutnry) VALUES (9, 'Starlight Air', 'Indonesia');
INSERT INTO Airlines (airline_id, airline_name, coutnry) VALUES (10, 'Swift Airlines', 'Chad');

INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (1,'' )