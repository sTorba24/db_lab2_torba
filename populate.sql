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
 	VALUES (24,'MYKOLA','YES','MALE',12);
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
   	VALUES (27,'ANDRIY','NO','MALE',11);
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
  	VALUES (19,'VLADYSLAV','NO','MALE',14);
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
  	VALUES (22,'KEVIN','YES','MALE',13);
INSERT INTO humans (hum_age,hum_name,hum_smoker,hum_sex,child_id)
  	VALUES (16,'STELLA','NO','MALE',15);
 
---insuranse 
INSERT INTO insuranse (ins_charge,hum_id)
 	VALUES (1625,7);
INSERT INTO insuranse (ins_charge,hum_id)
   	VALUES (2750,9);    
INSERT INTO insuranse (ins_charge,hum_id)
  	VALUES (3000,11);    
INSERT INTO insuranse (ins_charge,hum_id)
 	VALUES (1900,8);
INSERT INTO insuranse (ins_charge,hum_id)
   	VALUES (1520,10);
