/*Diego Perez
* Create this line to erase the database and re-create it.
*/
--Drop database INSURANCE_COMPANY
/*create database INSURANCE_COMPANY;*/

CREATE TABLE DEPARTMENT
(  department_id	INTEGER	NOT NULL	IDENTITY(1,1),
   department_name	VARCHAR(256)	NOT NULL,
);

/* ADD PRIMARY KEY */
ALTER TABLE DEPARTMENT 
  ADD CONSTRAINT department_department_id_pk
      PRIMARY KEY( department_id );

CREATE TABLE CATEGORY
(  category_id	INTEGER	NOT NULL,
   category_name	VARCHAR(256)	NOT NULL,
);

ALTER TABLE CATEGORY 
  ADD CONSTRAINT category_category_id_pk
      PRIMARY KEY( category_id );

CREATE TABLE SPONSOR
(  sponsor_id		INTEGER	NOT NULL	IDENTITY(1,1),
   company_name		VARCHAR(256)	NOT NULL,
   email			VARCHAR(256),
   phone			INTEGER	NOT NULL,
   sales_rep		VARCHAR(256),
   address			VARCHAR(256)	NOT NULL
);

ALTER TABLE SPONSOR 
  ADD CONSTRAINT sponsor_sponsor_id_pk
      PRIMARY KEY( sponsor_id );

CREATE TABLE COUNTRY
(  country_id	INTEGER	NOT NULL,
   country_name	VARCHAR(256)	NOT NULL
);

ALTER TABLE COUNTRY 
  ADD CONSTRAINT country_country_id_pk
      PRIMARY KEY( country_id );

CREATE TABLE PROVINCE
(  province_id	INTEGER	NOT NULL,
   province_name	VARCHAR(256)	NOT NULL,
   country_id	INTEGER	NOT NULL
);

ALTER TABLE PROVINCE 
  ADD CONSTRAINT province_province_id_pk
      PRIMARY KEY( province_id );

ALTER TABLE PROVINCE
  ADD CONSTRAINT province_country_id_fk
      FOREIGN KEY( country_id )
      REFERENCES country( country_id );

CREATE TABLE CITY
(  city_id	INTEGER	NOT NULL,
   city_name	VARCHAR(256)	NOT NULL,
   province_id	INTEGER	NOT NULL
);

ALTER TABLE CITY 
  ADD CONSTRAINT city_city_id_pk
      PRIMARY KEY( city_id );

ALTER TABLE CITY
  ADD CONSTRAINT city_province_id_fk
      FOREIGN KEY( province_id )
      REFERENCES province( province_id );

CREATE TABLE PRODUCT
(  product_id				INTEGER	NOT NULL	IDENTITY(1,1),
   name						VARCHAR(256)	NOT NULL,
   description				VARCHAR(256)	NOT NULL,
   definition				VARCHAR(8000)	NOT NULL,
   benefits					VARCHAR(8000)	NOT NULL,
   limits					VARCHAR(8000)	NOT NULL,
   exclusions				VARCHAR(8000)	NOT NULL,
   general_condition		VARCHAR(8000)	NOT NULL,
   indenization_procedure	VARCHAR(8000)	NOT NULL,
   data_protection_advice	VARCHAR(8000)	NOT NULL,
   emergency_procedure		VARCHAR(8000)	NOT NULL,
   available				VARCHAR(8000)	NOT NULL
);

ALTER TABLE PRODUCT 
  ADD CONSTRAINT product_product_id_pk
      PRIMARY KEY( product_id );

CREATE TABLE STAFF
(  staff_id			INTEGER	NOT NULL	IDENTITY(1,1),
   date_of_birth	DATE	NOT NULL,
   last_name		VARCHAR(256)	NOT NULL,
   first_name		VARCHAR(256)	NOT NULL,
   phone			INTEGER	NOT NULL,
   email			VARCHAR(256),
   address			VARCHAR(256)	NOT NULL,
   zipcode			INTEGER NOT NULL,
   isemployee		BIT NOT NULL,
   hire_date		DATE	NOT NULL	DEFAULT getdate(),
   department_id	INTEGER NOT NULL
);

ALTER TABLE STAFF 
  ADD CONSTRAINT staff_staff_id_pk
      PRIMARY KEY( staff_id );

CREATE TABLE CUSTOMER
(  customer_id		INTEGER	NOT NULL	IDENTITY(1,1),
   last_name		VARCHAR(256)	NOT NULL,
   first_name		VARCHAR(256)	NOT NULL,
   category_id		INTEGER NOT NULL,
   phone			INTEGER	NOT NULL,
   email			VARCHAR(256),
   address			VARCHAR(256)	NOT NULL,
   zipcode			INTEGER NOT NULL,
   date_of_birth	DATE	NOT NULL,
   city_id			INTEGER NOT NULL,
   province_id		INTEGER NOT NULL,
   country_id		INTEGER NOT NULL
);

ALTER TABLE CUSTOMER 
  ADD CONSTRAINT customer_customer_id_pk
      PRIMARY KEY( customer_id );

CREATE TABLE POLICY
(  policy_id		INTEGER	NOT NULL	IDENTITY(1,1),
   issue_date		DATE	NOT NULL	DEFAULT getdate(),
   expire_date		DATE	NOT NULL,              
   previous_policy	INTEGER,
   staff_id			INTEGER	NOT NULL,
   customer_id		INTEGER	NOT NULL,
   product_id		INTEGER NOT NULL
);
ALTER TABLE POLICY 
  ADD CONSTRAINT policy_policy_id_pk
      PRIMARY KEY( policy_id );


ALTER TABLE POLICY
  ADD CONSTRAINT policy_previous_policy_fk
      FOREIGN KEY( previous_policy )
      REFERENCES policy( policy_id );

ALTER TABLE POLICY
  ADD CONSTRAINT policy_staff_id_fk
      FOREIGN KEY( staff_id )
      REFERENCES staff( staff_id );

ALTER TABLE POLICY
  ADD CONSTRAINT policy_customer_id_fk
      FOREIGN KEY( customer_id )
      REFERENCES customer( customer_id );

ALTER TABLE POLICY
  ADD CONSTRAINT policy_product_id_fk
      FOREIGN KEY( product_id )
      REFERENCES product( product_id );

ALTER TABLE STAFF
  ADD CONSTRAINT staff_department_id_fk
      FOREIGN KEY( department_id )
      REFERENCES department( department_id );

ALTER TABLE CUSTOMER
  ADD CONSTRAINT customer_category_id_fk
      FOREIGN KEY( category_id )
      REFERENCES category( category_id );

ALTER TABLE CUSTOMER
  ADD CONSTRAINT customer_city_id_fk
      FOREIGN KEY( city_id )
      REFERENCES city( city_id );

ALTER TABLE CUSTOMER
  ADD CONSTRAINT customer_province_id_fk
      FOREIGN KEY( province_id )
      REFERENCES province( province_id );

ALTER TABLE CUSTOMER
  ADD CONSTRAINT customer_country_id_fk
      FOREIGN KEY( country_id )
      REFERENCES country( country_id );
