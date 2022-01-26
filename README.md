Data on COVID-19 Vaccinations
Final Exam for SE 2121 (se2121-finals-covidvaccine).
This COVID-19 database shows the COVID-19 vaccination data. 
DATASETS
Location Data
Stored in locations.csv

location: name of the country.
iso_code: three-letter country codes.
vaccines: list of vaccines administered in the country up to the current date.
last_observation_date: date of the last observation in our data.
source_name: name of our source for data collection.
source_website: web location of our source.
Vaccination data
Stored in vaccinations.csv

location: name of the country (or region within a country).
iso_code: three-letter country codes.
date: date of the observation.
total_vaccinations: total number of doses administered.
daily_vaccinations: new doses administered per day (7-day smoothed).
