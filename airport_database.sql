CREATE TABLE Airplane (
    airplane_id INT CONSTRAINT pk_airplane_id PRIMARY KEY,
    manufacturer varchar(100),
    airplane_model varchar(100),
    airplane_capacity INT,
    production_year INT
);


CREATE TABLE Airlines(
    airline_id INT PRIMARY KEY,
    airline_name varchar(100) NOT NULL,
    country varchar(100)
);

CREATE TABLE Airport(
    airport_name varchar2(100) NOT NULL,
    airport_location varchar2(100) NOT NULL,
    contact_nubmer varchar2(10) NOT NULL
);

CREATE TABLE Flights(
    flight_id INT PRIMARY KEY,
    airline_id NUMBER(5) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    flight_number varchar2(10) NOT NULL,
    departure_airport varchar2(50) NOT NULL,
    arrival_airport varchar2(50) NOT NULL
);

CREATE TABLE Flight_Attendant(
    attendant_id INT PRIMARY KEY, 
    att_first_name varchar2(50),
    att_last_name varchar2(50),
    hire_date DATE
);

CREATE TABLE Countries(
    country_id number(2) PRIMARY KEY,
    country_name varchar2(40),
    region_id number
);

CREATE TABLE Passengers(
    passenger_id INT PRIMARY KEY,
    pass_first_name varchar2(40),
    pass_last_name varchar2(40),
    birth_date DATE,
    passaport_number number(9)
);


