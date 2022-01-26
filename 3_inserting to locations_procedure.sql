
CREATE PROCEDURE insert_records_to_locations()
LANGUAGE plpgsql
AS

$$
BEGIN

    INSERT INTO locations (loc_name, loc_iso_code)
    SELECT vbl_location, vbl_iso_code
    FROM vaccines_by_location;

    COMMIT;

END;
$$
