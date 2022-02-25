SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS Contract_Office;
DROP TABLE IF EXISTS Office;




/* Create Tables */

CREATE TABLE Contract_Office
(
	conttract_no varchar(255) NOT NULL,
	contract_start_office_no char(3) NOT NULL,
	Office_no char(3) NOT NULL,
	PRIMARY KEY (conttract_no)
);


CREATE TABLE Office
(
	Office_no char(3) NOT NULL,
	Offfice_addr varchar(255) NOT NULL,
	Office_tel varchar(11) NOT NULL,
	PRIMARY KEY (Office_no)
);



/* Create Foreign Keys */

ALTER TABLE Contract_Office
	ADD FOREIGN KEY (Office_no)
	REFERENCES Office (Office_no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



