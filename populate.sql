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
INSERT INTO humans (hum_age,hum_name,hum_sex,child_id)
 	VALUES (24,'MYKOLA','MALE',2);
INSERT INTO humans (hum_age,hum_name,hum_sex,child_id)
   	VALUES (27,'ANDRIY','MALE',3);
INSERT INTO humans (hum_age,hum_name,hum_sex,child_id)
  	VALUES (19,'VLADYSLAV','MALE',5);
INSERT INTO humans (hum_age,hum_name,hum_sex,child_id)
  	VALUES (22,'KEVIN','MALE',4);
INSERT INTO humans (hum_age,hum_name,hum_sex,child_id)
	VALUES (16,'STELLA','FEMALE',1);
	
--smokers

INSERT INTO smokers (isSmoker,smoker_date,hum_id)
 	VALUES ('YES','2017-03-14',1);
INSERT INTO smokers (isSmoker,hum_id)
 	VALUES ('NO',2);
INSERT INTO smokers (isSmoker,smoker_date,hum_id)
 	VALUES ('YES','2018-04-11',4);
INSERT INTO smokers (isSmoker,smoker_date,hum_id)
 	VALUES ('YES','2019-02-23',3);
INSERT INTO smokers (isSmoker,hum_id)
 	VALUES ('NO',5);
 
---insuranse 
INSERT INTO insuranse (ins_charge,hum_id)
 	VALUES (1625,3);
INSERT INTO insuranse (ins_charge,hum_id)
   	VALUES (2750,2);    
INSERT INTO insuranse (ins_charge,hum_id)
  	VALUES (3000,5);    
INSERT INTO insuranse (ins_charge,hum_id)
 	VALUES (1900,1);
INSERT INTO insuranse (ins_charge,hum_id)
   	VALUES (1520,4);
