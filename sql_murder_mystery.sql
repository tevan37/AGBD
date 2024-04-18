-- Me adentro en los detalles basados en los vagos recuerdos
SELECT * FROM crime_scene_report              
WHERE date LIKE "%20180115%" AND type = "murder" AND city = "SQL City"

-- Sabiendo el reporte del homicidio (donde el reporte no es muy claro), Identifico a los testigos que 
-- viven el las direcciones indicadas en el reporte
SELECT * FROM person
WHERE address_street_name LIKE "%franklin ave%" AND name LIKE "%Annabel%";

SELECT * FROM person
WHERE address_street_name LIKE "%northwestern dr%"
ORDER BY address_number DESC
LIMIT 1;

-- Ya con los testigos identificados, queda entrevistarlos para obtener más pistas 
SELECT * FROM interview
WHERE person_id = 16371 OR person_id = 14887

-- Uno de los testigos menciono que el asesino podría ser un miembro de un GYM muy popular, y que el 
-- mismo podria tener un estatus de miembro de oro, junto con parte de la matrícula del auto que 
-- el asesino conducia. 
-- El otro testigo confirma esta teoria, ya que dice haberlo reconocido mientras trabajaba en el GYM
SELECT * FROM get_fit_now_member							
WHERE membership_status = "gold" AND id LIKE "48Z%"	

-- Hay dos sospechosos
SELECT * FROM person							
WHERE id = "28819" OR id = "67318"

-- Con la segunda pista, se podra verificar cual podría ser el asesino gracias a las licencias 
-- y la id de los conductores
SELECT * FROM drivers_license							
WHERE plate_number LIKE "%H42W%"

-- Homicida identificado, la orden de arresto ha sido enviada a la policia
SELECT * FROM person							
WHERE license_id =	"423327"

-- La evidencia está sobre la mesa, solo queda entrevistar al sujeto
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;
    
-- Hay algo más, "Me contrató una mujer rica con pelo rojo, conducia un Tesla Modelo S, ella mide 
-- 5,5 o 5,7 pies de alto. Sé que asistió al SQL Symphony Concert 3 veces en diciembre de 2017" 
-- afirma el asesino
SELECT * FROM interview
WHERE person_id = "67318"

-- Basado en el testimonio del asesino, identificamos a 3 personas que cumplen casi todas las 
-- caracteristicas dadas por el asesino
SELECT * FROM drivers_license
WHERE car_make = "Tesla" AND car_model = "Model S" 
AND height BETWEEN 65 AND 67
AND gender = "female" AND hair_color = "red" 

-- Tres sospechosos
SELECT * FROM person
WHERE license_id = 202298 OR license_id = 291182 OR license_id = 918773

-- Ya la tenemos
SELECT * FROM facebook_event_checkin
WHERE person_id = 78881 OR person_id = 90700 OR person_id = 99716

-- La orden de arresto hacia la mente intelectual ha sido enviada a la policia
SELECT * FROM person
WHERE id = 99716

-- Las evidencias en su contra están sobre la mesa. La entrevista parece permanecer como 
-- "altamente clasificado"
INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        SELECT value FROM solution;