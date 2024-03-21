SELECT * FROM village

SELECT * FROM inhabitant

SELECT * FROM inhabitant WHERE job = 'butcher'

SELECT * FROM inhabitant
WHERE state = "friendly"

SELECT * FROM inhabitant
WHERE state = "friendly" AND job = "weaponsmith"

SELECT * FROM inhabitant
WHERE state = "friendly" AND job like "%smith"

SELECT personid FROM inhabitant
WHERE name = 'Stranger'

SELECT gold FROM inhabitant
WHERE name = 'Stranger'