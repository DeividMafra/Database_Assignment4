/*Category table*/
INSERT INTO CATEGORY (category_id, 
                      category_name,
					  monthly_price,
					  coverage,
					  term,
					  usr_create,
					  date_create,
					  usr_update,
					  date_update)
			  VALUES ('BRO',
			           'BRONCE',
					   20,
					   1000000,
					   5,
					   'DAP',
					   GETDATE(),
					   'DAP',
					   GETDATE());

SELECT *
  FROM CATEGORY;



/*Benefits Table*/
INSERT INTO BENEFIT (benefit_name,
                     benefit_description,
                     usr_create,
					 date_create,
					 usr_update,
					 date_update)
		     VALUES ('Medical Equipment and Supplies',
			         'Payable only if required as the result of a covered Sickness or Injury. Purchase of medical supplies, including dressings and prosthetic appliances; Rental charges for wheelchairs, crutches, Hospital-type bed or other appliances, not to exceed purchase price. Up to $200 Benefit Maximum for prescription glasses or contact lenses, or up to $300 Benefit Maximum for hearing aids. Up to $300 Benefit Maximum for custom orthotics, or up to $800 Benefit Maximum for custom knee braces.',
			         'DAP',
					 GETDATE(),
					 'DAP',
					 GETDATE());

SELECT *
  FROM BENEFIT;

SELECT *
  FROM CATEGORY;

/*Category Table*/
INSERT INTO CATEGORY_BENEFIT (category_id,
                              benefit_id,
							  usr_create,
							  date_create,
							  usr_update,
							  date_update)
					  VALUES ('BRO',
					          8,
							  'DAP',
							  GETDATE(),
							  'DAP',
							  GETDATE());

SELECT *
  FROM CATEGORY_BENEFIT;

/*Country Table*/
INSERT INTO COUNTRY (country_name,
                     usr_create,
					 date_create,
					 usr_update,
					 date_update)
			 VALUES ('Jamaica',
			         'DAP',
					 GETDATE(),
					 'DAP',
					 GETDATE());

SELECT *
  FROM COUNTRY;

/*Province Table*/
INSERT INTO PROVINCE (province_id,
                      province_name,
                      country_id,
					  usr_create,
					  date_create,
					  usr_update,
					  date_update)
			  VALUES (3,
			          'Manitoba',
			          1,
					  'DAP',
					  GETDATE(),
					  'DAP',
					  GETDATE());

SELECT *
  FROM PROVINCE;

/*City Table*/
INSERT INTO CITY (city_id,
                  city_name,
				  province_id,
				  usr_create,
				  date_create,
				  usr_update,
				  date_update)
		  VALUES (4,
		          'Otawa',
				  1,
				  'DAP',
				  GETDATE(),
				  'DAP',
				  GETDATE());

SELECT *
  FROM CITY;

