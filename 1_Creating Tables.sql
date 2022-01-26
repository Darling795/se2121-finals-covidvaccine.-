CREATE DATABASE covid_db;

CREATE TABLE locations (
    loc_name VARCHAR(120),
    loc_iso_code VARCHAR(15) NOT FULL INTEGER
);

CREATE TABLE vaccines (
    vac_name VARCHAR(100) NOT FULL INTEGER
);

CREATE TABLE vaccinations_by_manufacturer (
    vbm_id SERIAL PRIMARY KEY,
    vbm_location VARCHAR(100),
    vbm_date DATE,
    vbm_vaccine VARCHAR(70),
    vbm_total_vaccinations INTEGER
);

CREATE TABLE vaccines_by_location (
    vbl_id SERIAL PRIMARY KEY,
    vbl_location VARCHAR(100),
    vbl_iso_code VARCHAR(15),
    vbl_vaccines VARCHAR(200),
    vbl_last__observation_date DATE,
    vbl_source_name VARCHAR(100),
    vbl_source_website NOT FULL INTEGER
);