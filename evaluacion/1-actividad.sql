SELECT type AS tipo_crimen, city AS ciudad , 
count(type) AS cantidad_reportes FROM crime_scene_report
WHERE city LIKE "sql city%"
GROUP BY type
ORDER BY type ASC;