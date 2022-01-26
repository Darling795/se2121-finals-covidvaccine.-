CREATE PROCEDURE insert_records_to_vaccines()
LANGUAGE plpgsql
AS

$$
BEGIN

    INSERT INTO vaccines (vac_name)
    SELECT UNNEST(string_to_array(vbl_vaccines, ', ')) FROM vaccines_by_location

    COMMIT;

END;
$$




