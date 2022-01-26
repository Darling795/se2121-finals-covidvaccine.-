

CREATE PROCEDURE update_number_of_vaccinations(
    vaccine_name VARCHAR(70),
    vaccine_location VARCHAR(100),
    number_of_vaccinations INTEGER,
    vaccine_date DATE
) 
LANGUAGE plpgsql
AS

$$
BEGIN

    UPDATE vaccinations_by_manufacturer
        SET vbm_total_vaccinations = number_of_vaccinations 
        WHERE vbm_vaccine = vaccine_name AND vbm_date = vaccine_date AND vbm_location = vaccine_location;

END;
$$

-- CALL update_number_of_vaccinations('Moderna', '2021-01-08', 'Austria', 117);