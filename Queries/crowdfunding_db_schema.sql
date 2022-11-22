-- NOTE : The ALTER TABLE constraint didn't seem necessary to add to the tables, as they already had their primary and foreign keys from the moment they were created. 
CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);	

SELECT * FROM campaign;

CREATE TABLE category (
	category_id VARCHAR(10) NOT NULL,
	category VARCHAR(50) NOT NULL,
	PRIMARY KEY(category_id)
);	

SELECT * FROM category;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(50) NOT NULL,
	PRIMARY KEY (subcategory_id)
);	

SELECT * FROM subcategory;

CREATE TABLE contacts (
	contact_id INT NOT NULL, 
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	PRIMARY KEY (contact_id)
);	

SELECT * FROM contacts;

CREATE TABLE backers (
	backer_id VARCHAR(10) NOT NULL,
	cf_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	PRIMARY KEY (backer_id),
	FOREIGN KEY (cf_id) REFERENCES campaign (cf_id)
);

SELECT * FROM backers;