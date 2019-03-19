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

