---children
INSERT INTO children (child_name)
  	VALUES ('SAM');
INSERT INTO children (child_name)
  	VALUES ('JOHN');
INSERT INTO children (child_name)
  	VALUES ('IVAN');
INSERT INTO children (child_name)
  	VALUES ('SVIAT');
INSERT INTO children (child_name)
  	VALUES ('VASYL');
    
---humans
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
  	VALUES (24,'MYKOLA','YES','MALE',1);
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
  	VALUES (27,'ANDRIY','NO','MALE',2);
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
  	VALUES (19,'VLADYSLAV','NO','MALE',3);
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
  	VALUES (22,'KEVIN','YES','MALE',5);
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
  	VALUES (16,'STELLA','NO','MALE',4);
    
---insuranse 
INSERT INTO insuranse (charge,hum_id)
  	VALUES (1625,1);
INSERT INTO insuranse (charge,hum_id)
  	VALUES (2750,3);    
INSERT INTO insuranse (charge,hum_id)
  	VALUES (3000,5);    
INSERT INTO insuranse (charge,hum_id)
  	VALUES (1900,2);
INSERT INTO insuranse (charge,hum_id)
  	VALUES (1520,4);
