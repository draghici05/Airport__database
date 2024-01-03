CREATE TABLE Airplane (
    airplane_id number(3) CONSTRAINT pk_airplane_id PRIMARY KEY,
    manufacturer varchar(100),
    airplane_model varchar(100),
    airplane_capacity number(4),
    production_year number(4)
);

CREATE TABLE Airlines(
    airline_id number(3) PRIMARY KEY,
    airline_name varchar(100),
    country varchar(100)
);

CREATE TABLE Airport(
    airport_name varchar2(100),
    airport_location varchar2(100),
    contact_number number(10)
);

CREATE TABLE Flights(
    flight_id number(2) PRIMARY KEY,
    airline_id number(5) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    flight_number varchar2(10) NOT NULL,
    departure_airport varchar2(50) NOT NULL,
    arrival_airport varchar2(50) NOT NULL
);

CREATE TABLE Flight_Attendant(
    attendant_id number(3) PRIMARY KEY, 
    att_first_name varchar2(50),
    att_last_name varchar2(50),
    hire_date DATE
);

CREATE TABLE Countries(
    country_id number(2) PRIMARY KEY,
    country_name varchar2(40),
    region_id number
);

CREATE TABLE Contracts(
    contract_id number(3) PRIMARY KEY,
    airline_id number(3) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    airport_name varchar2(100) CONSTRAING fk_airline_id REFERENCES Airport(airport_name),
    contract_value number(2.2), --MILLIONS
    con_start_date date,
    con_end_date date
);
