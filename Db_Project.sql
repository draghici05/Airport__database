-- CREATE TABLE

CREATE TABLE Airlines (
    airline_id NUMBER(3) CONSTRAINT pk_airline_id PRIMARY KEY,
    airline_name VARCHAR2(100),
    country VARCHAR2(100)
);

CREATE TABLE Airplanes (
    airplane_id NUMBER(3) CONSTRAINT pk_airplane_id PRIMARY KEY,
    airline_id NUMBER(2) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    airplane_capacity NUMBER(3),
    production_year NUMBER(4)
);

CREATE TABLE Airport (
    airport_id NUMBER(2) CONSTRAINT pk_airport_id PRIMARY KEY,
    airport_name VARCHAR2(100),
    airport_location VARCHAR2(100),
    contact_number VARCHAR(15),
    airline_id CONSTRAINT fk_airline_id_airport REFERENCES Airlines (airline_id)
);

CREATE TABLE Flights (
    flight_id NUMBER(2) CONSTRAINT pk_flight_id PRIMARY KEY,
    airline_id NUMBER(3) CONSTRAINT fk_airline_id_flight REFERENCES Airlines(airline_id),
    flight_number VARCHAR2(10) NOT NULL,
    departure_airport VARCHAR2(50) NOT NULL,
    arrival_airport VARCHAR2(50) NOT NULL
);

CREATE TABLE Pilots(
    pilot_id NUMBER(2) CONSTRAINT pk_pilot_id PRIMARY KEY,
    airline_id NUMBER(3) CONSTRAINT fk_airline_id_pilot REFERENCES Airlines(airline_id),
    flight_id NUMBER(2) CONSTRAINT fk_flight_id REFERENCES Flights(flight_id),
    pil_first_name VARCHAR2(50),
    pil_last_name VARCHAR2(50),
    gender VARCHAR2(10),
    email_address VARCHAR2(30),
    hire_date DATE
);

CREATE TABLE Flight_Attendant (
    attendant_id NUMBER(3) CONSTRAINT pk_attendant_id PRIMARY KEY, 
    flight_id NUMBER(2) CONSTRAINT fk_flight_id_attendant REFERENCES Flights(flight_id),
    att_first_name VARCHAR2(50),
    att_last_name VARCHAR2(50),
    gender VARCHAR2(10),
    hire_date DATE
);

CREATE TABLE Passengers (
    passenger_id NUMBER(3) CONSTRAINT passenger_id PRIMARY KEY,
    flight_id number(2) CONSTRAINT fk_airline_id_pass REFERENCES Flights(flight_id),
    passaport_no VARCHAR2(5),
    pass_first_name VARCHAR2(50),
    pass_last_name VARCHAR2(50),
    gender VARCHAR2(10)
);


CREATE TABLE Contracts (
    contract_id NUMBER(3) CONSTRAINT pk_contract_id PRIMARY KEY,
    airline_id NUMBER(3) CONSTRAINT fk_airline_id_contract REFERENCES Airlines(airline_id),
    airport_id NUMBER(2) CONSTRAINT fk_airport_id_contract REFERENCES Airport(airport_id),
    contract_value NUMBER(8,2),
    con_start_date DATE,
    con_end_date DATE
);

-- INSERT INTO

INSERT INTO Airlines (airline_id, airline_name, country) VALUES (1, 'Delta Airlines', 'USA');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (2, 'British Airlines', 'UK');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (3, 'Singapore Airlines', 'Singapore');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (4, 'Sigma Airlines', 'Germany');
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

INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (1, 1, 150, 2010);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (2, 2, 190, 2009);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (3, 3, 300, 2020);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (4, 4, 250, 2019);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (5, 5, 275, 2021);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (6, 6, 290, 2022);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (7, 7, 200, 2018);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (8, 8, 170, 2016);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (9, 9, 230, 2014);
INSERT INTO Airplanes (airplane_id, airline_id, airplane_capacity, production_year) VALUES (10, 10, 200, 2023);

INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (1,'San Francisco', 'San Francisco Internation Airport', '(555) 555-1234)');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (2, 'London', 'London Stansted Airport', '44 20 7123 4567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (3, 'Seletar', 'Seletar Airport', '+65 9123 4567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (4, 'Frankfurt', 'Diamond Skyport', '+49 69 1234 567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (5, 'Buenos Aires', 'Grand Lotus Skyport', '+54 11 2345 678');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (6, 'Budapest', 'Emerald City Airport', '+36 1 234 5678');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (7, 'Ljubljana', 'Golden Gate Airport', '+386 1 234 5678');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (8, 'Los Angeles', 'Sunset Vista Airport', '+1 213 555 1234');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (9, 'Jakarta', 'Radiant Skies Airport', '+62 21 9876 543');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (10, 'New Delhi', 'Crimson Sky Airport', '+91 11 8765 432');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (11, 'Bangkok', 'Tango Skyport', '+66 2 3456 7890');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (12, 'Podgorica', 'Golden Template Skyport', '+382 20 123 456');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (13, 'Harare', 'Emerald Palace Skyway', '+263 4 123 4567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (14, 'Khartoum', 'Coral Cove International Airport', '+249 183 123 45');
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

INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (1, 1, 1, 'Harlan', 'Peck', 'Male', 'harlanpeck@gmail.com','04/15/2016');
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (2, 2, 2, 'Cecile', 'Miranda', 'Female', 'cecilemiranda@gmail.com', '09/22/2020' );
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (3, 3, 3, 'Jake', 'Parker', 'Male', 'jakeparker@gmail.com', '03/31/2019');
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (4, 4, 4, 'Wilbert', 'Bowman', 'Male', 'wilbertbowman@gmail.com', '07/18/2010' );
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (5, 5, 5, 'Margie', 'Baxter', 'Female', 'margiebaxter@yahoo.com', '08/09/2023');
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (6, 6, 6, 'Bertie', 'Shea', 'Female', 'bertieshea@yahoo.com', '01/23/2017');
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (7, 7, 7, 'Rodrick', 'Delago', 'Male', 'rodrickdelago@gmail.com', '05/26/2020');
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (8, 8, 8, 'Garfield', 'Costa', 'Male', 'garfieldcosta@gmail.com', '06/05/2014');
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (9, 9, 9, 'Lisa', 'Bartlett', 'Female', 'lisabartlett@yahoo.com', '11/14/2022');
INSERT INTO Pilots (pilot_id, airline_id, flight_id, pil_first_name, pil_last_name, gender, email_address, hire_date) VALUES (10, 10, 10, 'Margey', 'Casey', 'Female', 'margeycasey@gmail.com', '01/06/2020');

INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (1, 'Nicky', 'Mcdowell', 'Male', '05/12/2019');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (2, 'Draghici', 'Alexandru-Gabriel', 'Male', '12/06/2022');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (3, 'Jeremy', 'Strong', 'Male', '09/22/2020');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (4, 'Katina', 'Coleman', 'Female', '11/01/2023');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (5, 'Keith', 'Webb', 'Female', '04/27/2019');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (6, 'Valentina', 'Rother', 'Female', '03/05/2023');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (7, 'Monica', 'Slabu', 'Female', '05/09/2016');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (8, 'Alberto', 'Dima', 'Male', '10/17/2019');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (9, 'Sabina', 'Foster', 'Female', '11/10/2018');
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (10, 'Carlos', 'Oliveira', 'Male', '04/10/2021');

INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (1, 1, 12345, 'Bruno', 'Wood', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (2, 2, 55134, 'Taylor', 'Sims', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (3, 3, 12980, 'Julius', 'Mills', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (4, 4, 09412, 'Keith', 'Davila', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (5, 5, 16485, 'Florencio', 'Love', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (6, 6, 65645, 'Nestor', 'Kelly', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (7, 7, 64332, 'Lila', 'Lin', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (8, 8, 09312, 'Donnie', 'Hill', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (9, 9, 89457, 'Markus', 'Rose', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (10, 10, 65624, 'Wilfred', 'Salas', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (11, 5, 76543, 'Elinor', 'Vaughan', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (12, 1, 21341, 'Gordon', 'Zimmerman', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (13, 2, 12345, 'Dimulescu', 'Matei', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (14, 8, 10239, 'Dimitrescu', 'Alcina', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (15, 9, 11122, 'Khaeda', 'Jhin', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (16, 3, 77534, 'Ada', 'Wong', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (17, 4, 00192, 'Satoru', 'Gojo', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (18, 6, 99932, 'Suguru', 'Geto', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (19, 7, 77532, 'Ioana', 'Monalisa', 'Female');    
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (20, 4, 81923, 'Jica', 'Stefan', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (21, 1, 45234, 'Liam', 'Rodriguez', 'Male');  
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (22, 8, 87685, 'Olivia', 'Brown', 'Female');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (23, 7, 54212, 'Ethan', 'winters', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (24, 10, 00129, 'Chris', 'Redfield', 'Male');
INSERT INTO Passengers (passenger_id, flight_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (25, 10, 54452, 'Claire', 'Redfield', 'Female');

INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (1, 1, 1, 150000.50, '03/15/2023', '03/15/2028'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (2, 2, 2, 180000.25, '09/28/2022', '09/28/2027'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (3, 3, 3, 200000.20, '12/06/2020', '12/06/2030'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (4, 4, 4, 100000.50, '12/24/2017', '12/24/2024'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (5, 5, 5, 175000.75, '12/18/2011', '12/18/2023'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (6, 6, 6, 210000.12, '01/31/2015', '01/31/2025'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (7, 7, 7, 130000.30, '07/19/2021', '07/19/2031'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (8, 8, 8, 162500.20, '04/18/2024', '04/18/2029'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (9, 9, 9, 112000.12, '07/08/2019', '07/08/2026'); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (10, 10, 10, 212000.21, '10/09/2010', '10/09/2025'); 

-- DROP TABLE

DROP TABLE Airplane;
DROP TABLE Airlines;
DROP TABLE Airport;
DROP TABLE Flights;
DROP TABLE Flight_Attendant;
DROP TABLE Passengers;
DROP TABLE Contracts;

-- ALTER TABLE

ALTER TABLE Pilots
ADD (salary NUMBER(4)); 

ALTER TABLE Flight_Attendant
ADD (salary NUMBER(4));

ALTER TABLE Airplanes
ADD (model VARCHAR2(25));

ALTER TABLE Passengers
MODIFY (passaport_no VARCHAR2(25));

ALTER TABLE Flight_Attendant
DROP COLUMN gender;

ALTER TABLE Airplanes
RENAME COLUMN model TO airplane_model;

-- UPDATE TABLE

UPDATE Airport
SET airport_location = 'Romania'
WHERE airport_id = 2;

UPDATE Airport
SET airport_location = 'Bucharest'
WHERE airport_id = 2;

UPDATE Airport
SET airport_name = 'Henri Coanda International Airport'
WHERE airport_id = 2;

UPDATE Airport
SET contact_number = '+40 721 123 456'
WHERE airport_id = 2;

UPDATE Flight_Attendant
SET flight_id = 1, salary = 5500
WHERE attendant_id = 1;

UPDATE Flight_Attendant
SET flight_id = 2, salary = 7000
WHERE attendant_id = 2;

UPDATE Flight_Attendant
SET flight_id = 3, salary = 6500
WHERE attendant_id = 3;

-- DELETE FROM

DELETE FROM Airline 
WHERE airline_id = 1;

DELETE FROM Passengers
WHERE passenger_id = 20;

DELETE FROM Contracts
WHERE contract_id = 5;

-- MERGE INTO

MERGE INTO Airplanes A
USING (SELECT airplane_id, airline_id, airplane_capacity, production_year FROM Airplanes
WHERE airplane_id = 1) B
ON (A.airplane_id = B.airplane_id)
WHEN MATCHED THEN UPDATE SET A.airline_id = B.airline_id, A.airplane_capacity = B.airplane_capacity, A.production_year = B.production_year
WHEN NOT MATCHED THEN INSERT (airplane_id, airline_id, airplane_capacity, production_year)
VALUES (B.airplane_id, B.airline_id, B.airplane_capacity, B.production_year);

MERGE INTO Airlines A 
USING (SELECT airline_id, airline_name, country FROM Airlines
WHERE airline_id = 6 AND airline_name = 'Kitten Airlines') C
ON (A.airline_id = C.airline_id)
WHEN MATCHED THEN UPDATE SET A.airline_name = C.airline_name, A.country = C.country
WHEN NOT MATCHED THEN INSERT (airline_id, airline_name, country)
VALUES (C.airline_id, C.airline_name, C.country);

-- SELECT statements 

SELECT salary 
FROM F  light_Attendant 
WHERE(att_first_name) LIKE 'Draghici';

SELECT * FROM Passengers 
WHERE passenger_id > 5;

SELECT * FROM Airlines 
WHERE country != 'USA';

SELECT * FROM Airplanes 
WHERE production_year <= 2015;

SELECT * FROM Pilots 
WHERE gender = 'Male';

SELECT f.flight_attendant, fl.flights
FROM Flight_Attendant f JOIN flights fl ON f.attendant_id = fl.flight_id;

SELECT p.*, f.*
FROM Passengers p
WHERE p.flight_id = f.flight_id;

SELECT att_first_name, TO_CHAR(hire_date, 'DD-MON-YYYY')
AS formatted_date 
FROM Flight_Attendant;

SELECT TO_CHAR(airplane_capacity) 
AS capacity_as_string 
FROM Airplanes;

SELECT contract_value, EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM con_start_date) 
AS contract_years 
FROM Contracts;

SELECT pilot_id, SUBSTR(pil_first_name, 1, 1) 
AS initials 
FROM Pilots;

SELECT flight_id, 
       CASE 
          WHEN flight_number LIKE 'AA%' THEN 'American Airlines'
          WHEN flight_number LIKE 'DL%' THEN 'Delta Airlines'
          ELSE 'Other Airlines' 
       END AS airline_category 
FROM Flights;

SELECT airport_id, 
       airport_location,
       CASE 
          WHEN airport_location LIKE 'San' THEN 'Airport in USA'
          WHEN airport_location LIKE 'Frankfurt' THEN 'Airport in Germany'
          WHEN airport_location LIKE 'Ljubljana' THEN 'Airport in Croatia'
          WHEN airport_location LIKE 'Budapest' THEN 'Airport in Hungary'
          WHEN airport_location LIKE 'Bucharest' THEN 'Airport in Romania'
          ELSE 'Other Airpors' 
       END AS airport_cateory 
FROM Airport;

SELECT * FROM Flights
WHERE airline_id = (SELECT airline_id FROM Airlines WHERE airline_name = 'Delta Airlines');

CREATE VIEW HighCapacityAirplanes AS SELECT * FROM Airplanes WHERE airplane_capacity > 200;

CREATE INDEX idx_airplane_capacity ON Airplanes(airplane_capacity);

CREATE SYNONYM FlightSyn FOR Flights;

SELECT * FROM Employees CONNECT BY PRIOR employee_id = manager_id START WITH manager_id IS NULL;





