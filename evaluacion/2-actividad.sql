SELECT p.name, dl.age, dl.plate_number, dl.car_make, dl.car_model FROM drivers_license dl JOIN person p ON p.id = dl.id
WHERE gender = "female" AND age < 40
ORDER BY p.name ASC;