CREATE TABLE Airplane (
    airplane_id NUMBER(3) CONSTRAINT pk_airplane_id PRIMARY KEY,
    manufacturer VARCHAR2(100),
    airplane_model VARCHAR2(100),
    airplane_capacity NUMBER(4),
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

CREATE TABLE Countries (
    country_id NUMBER(2) PRIMARY KEY,
    country_name VARCHAR2(40),
    region_id NUMBER
);

CREATE TABLE Contracts (
    contract_id NUMBER(3) PRIMARY KEY,
    airline_id NUMBER(3) CONSTRAINT fk_airline_id REFERENCES Airlines(airline_id),
    airport_id NUMBER(2) CONSTRAINT fk_airport_id REFERENCES Airport(airport_id),
    contract_value NUMBER(2,2), -- Use NUMBER for precise values, assuming 10 digits with 2 decimals
    con_start_date DATE,
    con_end_date DATE
);
