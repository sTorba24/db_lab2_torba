CREATE TABLE children (
	child_id SERIAL,
	child_name varchar(40) NOT NULL,
	PRIMARY KEY (child_id)
);

CREATE TABLE humans (
	hum_id SERIAL,
	hum_name VARCHAR(40) NOT NULL,
  hum_age INT NOT NULL,
  hum_smoker VARCHAR(40) NOT NULL,
  hum_sex VARCHAR(40) NOT NULL,
  child_id INT NOT NULL
	PRIMARY KEY (hum_id)
  CONSTRAINT FK_child
		FOREIGN KEY (child_id)
			REFERENCES children (child_id) ON DELETE CASCADE,
);


CREATE TABLE insuranse (
	ins_id SERIAL,
	ins_charge INT NOT NULL,
	hum_id INT NOT NULL,
	PRIMARY KEY (ins_id),
	CONSTRAINT FK_human
		FOREIGN KEY (hum_id)
			REFERENCES humans (hum_id) ON DELETE CASCADE,
);
