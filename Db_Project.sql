-- CREATE TABLES

CREATE TABLE Airplane (
    airplane_id NUMBER(3) CONSTRAINT pk_airplane_id PRIMARY KEY,
    airline_id NUMBER(2) CONSTRAINT fk_airline_id REFERENCES Airline(airline_id),
    airplane_capacity NUMBER(3),
    production_year NUMBER(4)
);

CREATE TABLE Airlines (
    airline_id NUMBER(3) CONSTRAINT pk_airline_id PRIMARY KEY,
    airline_name VARCHAR2(100),
    country VARCHAR2(100)
);

CREATE TABLE Airport (
    airport_id NUMBER(2) CONSTRAINT pk_airport_id PRIMARY KEY,
    airport_name VARCHAR2(100),
    airport_location VARCHAR2(100),
    contact_number VARCHAR(15),
    airline_id CONSTRAINT fk_airline_id  REFERENCES Airlines (airline_id);
);

CREATE TABLE Flights (
    flight_id NUMBER(2) CONSTRAINT pk_flight_id PRIMARY KEY,
    airline_id NUMBER(3) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    flight_number VARCHAR2(10) NOT NULL,
    departure_airport VARCHAR2(50) NOT NULL,
    arrival_airport VARCHAR2(50) NOT NULL
);

CREATE TABLE Flight_Attendant (
    attendant_id NUMBER(3) CONSTRAINT attendant_id PRIMARY KEY, 
    att_first_name VARCHAR2(50),
    att_last_name VARCHAR2(50),
    gender VARCHAR2(10),
    hire_date DATE
);

CREATE TABLE Passengers (
    flight_id number(2) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    passenger_id NUMBER(3) CONSTRAINT passenger_id PRIMARY KEY,
    passaport_no CHAR(5),
    pass_first_name VARCHAR2(50),
    pass_last_name VARCHAR2(50),
    gender VARCHAR2(10)
);

CREATE TABLE Contracts (
    contract_id NUMBER(3) CONSTRAINT pk_contract_id PRIMARY KEY,
    airline_id NUMBER(3) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    airport_id NUMBER(2) CONSTRAINT fk_airport_id REFERENCES Airport(airport_id),
    contract_value NUMBER(1,2),
    con_start_date DATE,
    con_end_date DATE
);


-- INSERT INTO

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
INSERT INTO Airlines (airline_id, airline_name, counrty) VALUES (3, 'Singapore Airlines', 'Singapore');
INSERT INTO Airlines (airline_id, airline_name, counrty) VALUES (4, 'Sigma Airlines' 'Germany');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (5, 'Pegasus Airlines', 'Argentina');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (6, 'Kitten Airlines', 'Hungary');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (7, 'Robin Airlines', 'Croatia');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (8, 'Cosmos Airlines', 'California');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (9, 'Starlight Air', 'Indonesia');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (10, 'Swift Airlines', 'India');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (11, 'GlobalSky Airlines', 'Thailand');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (12, 'Celestial Airlines', 'Montenegro');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (13, 'SunShine Airlines', 'Zimbabwe');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (14, 'Harmony Airways', 'Sudan');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (15, 'Hoyoverse Airlines', 'Armenia');

INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (1,'San Francisco', 'San Francisco Internation Airport', '(555) 555-1234)');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (2, 'London', 'London Stansted Airport', '44 20 7123 4567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (3, 'Seletar', 'Seletar Airport', '+65 9123 4567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (4, 'Frankfurt', 'Diamond Skyport', '+49 69 1234 5678');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (5, 'Buenos Aires', 'Grand Lotus Skyport', '+54 11 2345 6789');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (6, 'Budapest', 'Emerald City Airport', '+36 1 234 5678');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (7, 'Ljubljana', 'Golden Gate Airport', '+386 1 234 5678');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (8, 'Los Angeles', 'Sunset Vista Airport', '+1 213 555 1234');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (9, 'Jakarta', 'Radiant Skies Airport', '+62 21 9876 5432');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (10, 'New Delhi', 'Crimson Sky Airport', '+91 11 8765 4321');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (11, 'Bangkok', 'Tango Skyport', '+66 2 3456 7890');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (12, 'Podgorica', 'Golden Template Skyport', '+382 20 123 456');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (13, 'Harare', 'Emerald Palace Skyway', '+263 4 123 4567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (14, 'Khartoum', 'Coral Cove International Airport', '+249 183 123 456');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (15, 'Yerevan', 'Phoenix Rising Airport', '+374 10 123456');

INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (1, 1, 'AB123', 'SFIA', 'CSA');
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (2, 2, 'ABC12', 'RSA', 'EPS');
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (3, 3, 'ABB34', 'CCIA', 'TS');
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (4, 4, 'DL334', 'ECA', 'PRA');
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (5, 5, 'FF555', 'LSA', 'SFIA');
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (6, 6, 'LLO00', 'GGA', 'GLS');
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (7, 7, 'PA113', 'DS', 'SVA'); 
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (8, 8, 'TT455', 'CCIA', 'SA');
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (9, 9, 'HH887', 'TS', 'LSA');
INSERT INTO Flights (flight_id, airline_id, flight_number, departure_airport, arrival_airport) VALUES (10, 10, 'AR334', 'GTS', 'PRA');

INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (1, 'Nicky', 'Mcdowell', 'Male', '05/12/2019');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (2, 'Draghici' 'Alexandru-Gabriel', 'Male', '12/06/2022');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (3, 'Jeremy', 'Strong', 'Male', '09/22/2020');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (4, 'Katina', 'Coleman', 'Female', '11/01/2023');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (5, 'Keith', 'Webb', 'Female', '04/27/2019');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (6, 'Valentina', 'Rother', 'Female', '03/05/2023');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (7, 'Monica', 'Slabu', 'Female', '05/09/2016');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (8, 'Alberto', 'Dima', 'Male', '10/17/2019');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (9, 'Sabina', 'Foster', 'Female', '11/10/2018');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (10, 'Carlos', 'Oliveira', 'Male', '04/10/2021');

INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (1, 1, 12345, 'Bruno', 'Wood', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (2, 2, 55134, 'Taylor', 'Sims', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (3, 3, 12980, 'Julius', 'Mills', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (4, 4, 09412, 'Keith', 'Davila', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (5, 5, 16485, 'Florencio', 'Love', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (6, 6, 65645, 'Nestor', 'Kelly', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (7, 7, 64332, 'Lila', 'Lin', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (8, 8, 09312, 'Donnie', 'Hill', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (9, 9, 89457, 'Markus', 'Rose', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (10, 10, 65624, 'Wilfred', 'Salas', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (11, 11, 76543, 'Elinor', 'Vaughan', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (12, 12, 21341, 'Gordon', 'Zimmerman', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (13, 13, 12345, 'Dimulescu', 'Matei', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (14, 14, 10239, 'Dimitrescu', 'Alcina', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (15, 15, 11122, 'Khaeda', 'Jhin', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (16, 16, 77534, 'Ada', 'Wong', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (17, 17, 00192, 'Satoru', 'Gojo', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (18, 18, 99932, 'Suguru', 'Geto', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (19, 19, 77532, 'Ioana', 'Monalisa', 'Female');    
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (20, 20, 81923, 'Jica', 'Stefan', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (21, 21, 45234, 'Liam', 'Rodriguez', 'Male');  
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (22, 22, 87685, 'Olivia', 'Brown', 'Female');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (23, 23, 54212, 'Ethan', 'winters', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (24, 24, 00129, 'Chris', 'Redfield', 'Male');
INSERT INTO Passengers (passenger_id, airline_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (25, 25, 54452, 'Claire', 'Redfield', 'Female');

INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (1, 1, 1, '03/15/2023', '03/15/2028'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (2, 2, 2, '09/28/2022', '09/28/2027'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (3, 3, 3, '12/06/2020', '12/06/2030'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (4, 4, 4, '12/24/2017', '12/24/2024'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (5, 5, 5, '12/18/2011', '12/18/2023'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (6, 6, 6, '01/31/2015', '01/31/2025'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (7, 7, 7, '07/19/2021', '07/19/2031'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (8, 8, 8, '04/18/2024', '04/18/2029'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (9, 9, 9, '07/08/2019', '07/08/2026'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (10, 10, 10, '10/09/2010,' '10/09/2025'); 
 

-- DROP TABLES

DROP TABLE Airplane;
DROP TABLE Airlines;
DROP TABLE Airport;
DROP TABLE Flights;
DROP TABLE Flight_Attendant;
DROP TABLE Passengers;
DROP TABLE Contracts;

-- ALTER TABLES

ALTER TABLE Airplane
ADD (model VARCHAR2(25));

ALTER TABLE Passengers
ADD CONSTRAINT pk_passeneger PRIMARY KEY (passenger_id);

ALTER TABLE Flight_Attendant
DROP COLUMN gender;

-- UPDATE TABLE

UPDATE Airline 
SET country = 'Romania'
WHERE airline_id = 2;

UPDATE Airport
SET airport_name = 'Henri Coanda International Airport'
WHERE airport_id = 2;

UPDATE Airport 
SET contact_number = '+40 721 123 456'
WHERE airport_id = 2;

-- DELETE FROM

DELETE FROM Airline 
WHERE airline_id = 1;

DELETE FROM Passengers
WHERE passenger_id = 20;

DELETE FROM Contracts
WHERE contract_id = 5;

-- MERGE 
