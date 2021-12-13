SELECT ins_charge,hum_name 
FROM insuranse INNER JOIN humans ON insuranse.hum_id = humans.hum_id

SELECT hum_smoker,COUNT(*)
FROM humans 
GROUP BY hum_smoker

SELECT ins_charge,hum_age 
FROM insuranse INNER JOIN humans ON insuranse.hum_id = humans.hum_id