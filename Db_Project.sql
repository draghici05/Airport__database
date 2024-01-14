CREATE TABLE Airplane (
    airplane_id NUMBER(3) CONSTRAINT pk_airplane_id PRIMARY KEY,
    airline_id NUMBER(2) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
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
    gender VARCHAR2(10),
    hire_date DATE
);

CREATE TABLE Passengers (
    flight_id number(2) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    passenger_id NUMBER(3) PRIMARY KEY,
    passaport_no CHAR(5),
    pass_first_name VARCHAR2(50),
    pass_last_name VARCHAR2(50),
    gender VARCHAR2(10)
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
INSERT INTO Airlines (airline_id, airline_name, counrty) VALUES (3, 'Singapore Airlines', 'Singapore');
INSERT INTO Airlines (airline_id, airline_name, counrty) VALUES (4, 'Sigma Airlines' 'Germany');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (5, 'Pegasus Airlines', 'Argentina');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (6, 'Kitten Airlines', 'Hungary');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (7, 'Robin Airlines', 'Croatia');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (8, 'Cosmos Airlines', 'California');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (9, 'Starlight Air', 'Indonesia');
INSERT INTO Airlines (airline_id, airline_name, country) VALUES (10, 'Swift Airlines', 'India');

INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (1,'San Francisco', 'San Francisco Internation Airport', '(555) 555-1234');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (2, 'London', 'London Stansted Airport', '44 20 7123 4567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (3, 'Seletar', 'Seletar Airport', '+65 9123 4567');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (4, 'Frankfurt', 'Diamond Skyport');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (5, 'Budapest', 'Emerald City Airport');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (6, 'Ljubljana', 'Golden Gate Airport');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (7, 'Los Angeles', 'Sunset Vista Airport');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (8, 'Jakarta', 'Radiant Skies Airport');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (9, 'New Delhi', 'Crimson Sky Airport');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (10, ' ');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (11, ' ');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (12, ' ');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (13, ' ');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (14, ' ');
INSERT INTO Airport (airport_id, airport_location, airport_name, contact_number) VALUES (15, ' ');

INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (1, 12 ,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (2, 15,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (3, 36,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (4, 40,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (5, 05,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (6, 61,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (7, 17,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (8, 8,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (9, 9,);
INSERT INTO Flights (flight_id, flight_number, departure_airport, arrival_airport) VALUES (10, 10,);

INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (1, 'Nicky', 'Mcdowell', 'Male', ); --To check how to fill date in oracle
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (2, 'Draghici' 'Alexandru-Gabriel', 'Male', );
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (3, 'Jeremy', 'Strong', 'Male',);
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (4, 'Katina', 'Coleman', 'Female',);
INSERT INTO Flight_Attendant (attendant_id, att_first_name, att_last_name, gender, hire_date) VALUES (5, 'Kay', 'Valencia', 'Female', );

INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (1, 12345, 'Bruno', 'Wood', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (2, 55134, 'Taylor', 'Sims', 'Female');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (3, 12980, 'Julius', 'Mills', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (4, 09412, 'Keith', 'Davila', 'Female');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (5, 16485, 'Florencio', 'Love', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (6, 65645, 'Nestor', 'Kelly', 'Female');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (7, 64332, 'Lila', 'Lin', 'Female');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (8, 09312, 'Donnie', 'Hill', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (9, 89457, 'Markus', 'Rose', 'Female');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (10, 65624, 'Wilfred', 'Salas', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (11, 76543, 'Elinor', 'Vaughan', 'Female');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (12, 21341, 'Gordon', 'Zimmerman', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (13, 12345, 'Dimulescu', 'Matei', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (14, 10239, 'Dimitrescu', 'Alcina', 'Female');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (15, 11122, 'Khaeda', 'Jhin', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (16, 77534, 'Ada', 'Wong', 'Female');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (17, 00192, 'Satoru', 'Gojo', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (18, 99932, 'Suguru', 'Geto', 'Male');
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (19, 77532, 'Ioana', 'Monalisa', 'Female');    
INSERT INTO Passengers (passenger_id, passaport_no, pass_first_name, pass_last_name, gender) VALUES (20, 60129, 'Jica', 'Stefan', 'Male');

INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (1, 1, 1); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (2, 2, 2); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (3, 3, 3); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (4, 4, 4); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (5, 5, ); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (6, 6, 6); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (7, 7, 7); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (8, 8, 8); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (9, 9, 9); 
INSERT INTO Contracts (contract_id, airline_id, airport_id, contract_value, con_start_date, con_end_date) VALUES (10, 10, 10); 

