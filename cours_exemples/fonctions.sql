CREATE OR REPLACE FUNCTION F_SANITIZE_EMAIL(email text) 
RETURNS text
AS 
$$
BEGIN
	RETURN REPLACE(
		TRIM(LOWER(email)), 
		'googlemail.com', 
		'gmail.com'); 
END; 
$$
LANGUAGE PLPGSQL ;



