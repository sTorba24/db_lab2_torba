SELECT ins_charge,hum_name 
FROM insuranse INNER JOIN humans ON insuranse.hum_id = humans.hum_id

SELECT isSmoker,COUNT(*)
FROM smokers 
GROUP BY isSmok

SELECT ins_charge,hum_age 
FROM insuranse INNER JOIN humans ON insuranse.hum_id = humans.hum_id
