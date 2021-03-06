/*Category table*/
INSERT INTO CATEGORY VALUES
	('BRO', 'BRONCE', 20, 1000000, 5, 'DAP', GETDATE(), 'DAP', GETDATE()),
	('GLD', 'GOLD', 50, 4000000, 20, 'DPM', GETDATE(), 'DPM', GETDATE()),
	('SIL', 'SILVER', 40, 3000000, 10, 'DPM', GETDATE(), 'DPM', GETDATE());

SELECT *
  FROM CATEGORY;



/*Benefits Table*/
INSERT INTO BENEFIT VALUES 
	('Medical Equipment and Supplies', 
	'Payable only if required as the result of a covered Sickness or Injury. Purchase of medical supplies, including dressings and prosthetic appliances; Rental charges for wheelchairs, crutches, Hospital-type bed or other appliances, not to exceed purchase price. Up to $200 Benefit Maximum for prescription glasses or contact lenses, or up to $300 Benefit Maximum for hearing aids. Up to $300 Benefit Maximum for custom orthotics, or up to $800 Benefit Maximum for custom knee braces.',
	'DAP', GETDATE(), 'DAP', GETDATE()),
	('Medicines', 
	'Payable only if required as the result of a covered Sickness or Injury. Purchase of medical supplies, including dressings and prosthetic appliances; Rental charges for wheelchairs, crutches, Hospital-type bed or other appliances, not to exceed purchase price. Up to $200 Benefit Maximum for prescription glasses or contact lenses, or up to $300 Benefit Maximum for hearing aids. Up to $300 Benefit Maximum for custom orthotics, or up to $800 Benefit Maximum for custom knee braces.',
	'DPM', GETDATE(), 'DPM', GETDATE()),
	('WHEELCHAIR', 
	'Payable only if required as the result of a covered Sickness or Injury. Purchase of medical supplies, including dressings and prosthetic appliances; Rental charges for wheelchairs, crutches, Hospital-type bed or other appliances, not to exceed purchase price. Up to $200 Benefit Maximum for prescription glasses or contact lenses, or up to $300 Benefit Maximum for hearing aids. Up to $300 Benefit Maximum for custom orthotics, or up to $800 Benefit Maximum for custom knee braces.',
	'DPM', GETDATE(), 'DPM', GETDATE());

INSERT INTO CUSTOMER VALUES 
	('Mafra', 'Deivid',111-2222,'deividmafra@aol.com', '999, X street', 'M1Q2W3', '1986-06-03', '1','DPM', GETDATE(), 'DPM', GETDATE()),
	('Perez', 'Diego',111-2222,'diegoperez@aol.com', '999, X street', 'M1Q2W3', '1982-06-03', '2','DPM', GETDATE(), 'DPM', GETDATE()),
	('Palmer', 'Sherwayne',111-2222,'sherwaynepalmer@aol.com', '999, X street', 'M1Q2W3', '1988-06-03', '3','DPM', GETDATE(), 'DPM', GETDATE());

INSERT INTO CITY VALUES 
	('S�o Paulo','1','DPM', GETDATE(), 'DPM', GETDATE()),
	('Bogot�','2','DPM', GETDATE(), 'DPM', GETDATE()),
	('Kingstone', '3','DPM', GETDATE(), 'DPM', GETDATE());

INSERT INTO PROVINCE VALUES 
	('S�o Paulo','2','DPM', GETDATE(), 'DPM', GETDATE()),
	('Bogot�','3','DPM', GETDATE(), 'DPM', GETDATE()),
	('Kingstone', '1','DPM', GETDATE(), 'DPM', GETDATE());

INSERT INTO COUNTRY VALUES 
	('JAMAICA','DPM', GETDATE(), 'DPM', GETDATE()),
	('BRAZIL','DPM', GETDATE(), 'DPM', GETDATE()),
	('COLOMBIA','DPM', GETDATE(), 'DPM', GETDATE());

INSERT INTO STAFF VALUES 
	('1986-06-03','Silva', 'Pedro',111-2222,'pedrosilva@aol.com', '999, X street', 'M1Q2W3', '2005-12-25', 3,'DPM', GETDATE(), 'DPM', GETDATE(),null),
	('1990-05-08','Gonzales', 'Ruiz',111-2222,'gr@aol.com', '999, X street', 'M1Q2W3', '2010-10-15', 2,'DPM', GETDATE(), 'DPM', GETDATE(), null),
	('1980-10-16','Walker', 'John',111-2222,'wj@aol.com', '999, X street', 'M1Q2W3', '2015-03-01', 1,'DPM', GETDATE(), 'DPM', GETDATE(), null);

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

/*Customer Table*/
INSERT INTO CUSTOMER (last_name,
                      first_name,
					  phone,
					  email,
					  address,
					  zipcode,
					  date_of_birth,
					  city_id,
					  usr_create,
					  date_create,
					  usr_update,
					  date_update)
			  VALUES ('Sherwayne',
			          'LastName',
					  6479087653,
					  'wayne@thisemail.com',
					  '45 McCoway Ave',
					  'L9R 2W8',
					  '1988-12-21',
					  1,
					  'DAP',
					  GETDATE(),
					  'DAP',
					  GETDATE());

SELECT *
  FROM CUSTOMER;

/*Product Table*/
INSERT INTO PRODUCT (name, --ok
                     description, --ok
					 definition, --ok
					 limits, --ok
					 exclusions,--ok
					 general_condition, --ok 
					 indenization_procedure, --ok
					 data_protection_advice,
					 emergency_procedure, --ok
					 available,
					 usr_create,
					 date_create,
					 usr_update,
					 date_update)
			 VALUES ('NORMAL CARE',
			         'If an Eligible Insured suffers an Emergency Injury or Sickness during the Coverage Period, We will pay the benefits stated in this Policy, subject to all of its terms, conditions, limitations, exclusions and other provisions, for Reasonable and Customary Expenses that are incurred, to the lesser of the Benefit Maximum for that particular benefit, or to the Policy maximum of $5,000,000. All Benefit Maximums contained in this Policy are per Insured for the duration of the Coverage Period unless otherwise specified and are stated in Canadian Dollar currency. It is a condition precedent to coverage under this Policy that at the Effective Date the Insured is not aware of any existing medical condition which might require the Insured to incur any medically related expenses during the Coverage Period.',
					 'Corrective Device means a device that is required by You on the advice of a Physician, to correct a debilitating physical impairment and without which it would be a physical impossibility for You to continue Your studies or Your teaching responsibilities at the educational institution in which You are enrolled or are teaching. Corrective Devices include prosthetic limbs, wheelchairs, seeing-eye dogs, and hearing aids, but do NOT include eyeglasses. Coverage means the emergency benefits described herein. Coverage is effective throughout the world however Coverage in Home Country is limited; please refer to Excursion or Coverage in Home Country - Canadians (see Benefits), and Exclusion #6. Coverage Period means the period of time during which You are insured for the benefits provided by this Policy, starting from 12:01 a.m. on the Effective Date until 12:00 midnight on either the date (a) specified as the Termination Date on the Application; or (b) of termination of any extension of this Policy. If You return to Your Home Country for any reason other than Excursion or Coverage in Home Country - Canadians (see Benefits), coverage terminates effective the date of Your Return to Your Home Country. The maximum Coverage Period including extensions is 365 consecutive days from the Effective Date. Dentist means a qualified doctor of dentistry lawfully licensed to practice dentistry in the place where dental services are performed, but does not include the Insured or a relative of the Insured. Effective Date means the date Your coverage under this Policy begins. Coverage begins on the latest of the date and time, (a) the required premium is paid, or (b) the date You request as the Start Date on Your Application or (c) the date You leave your Home Country or (d) for returning Canadians, the date you return to Canada.',
					 'We reserve the right to arrange transportation to return You to Your Home Country following an Emergency, either before or after You receive Medical Treatment, or Hospital or Medical Services. If You decline to return when declared medically fit to travel by the Claim Administrator, We will not pay for any continuing expenses, recurrence or complications arising from or directly or indirectly related thereto. Limitation on Liability The Insurer, the Plan Administrator and/or the Claim Administrator are not responsible for the availability, quality or results of any Medical Treatment, or Your failure to obtain Medical Treatment or transportation and shall not be held liable for any negligence, wrongful acts or omissions of any service providers.',
					 'a pre-existing condition which means a sickness, injury or other condition that was causing signs or symptoms, and/or required medical advice or investigation, whether a diagnosis was established or not, and/or any form of medical treatment provided by a Physician or other Practitioner during the 3 month period immediately preceding the Effective Date, or if upon the commencement of the coverage, a condition was known or present such that costs could reasonably have been expected to be incurred. Note: this exclusion is waived when Application for mandatory coverage is received within 30 days of the semester/registration start date. We will not pay for any charges, which exceed the lesser of $20,000 or 30 days hospitalization in any 365-day period, for a pre-existing condition (as defined above) of a covered child that was not stable in the 90 days prior to the date the child became covered under this Policy; Elective or non-Emergency Medical Treatment, including any treatment given to maintain the stability of a chronic sickness or condition, including visits for the refill of medication, tests or examinations forming part of a normal regime, or for treatment of congenital or genetic disorders or conditions, or for treatment not required for the immediate relief of pain and suffering, or that could reasonably be postponed until the Insured returns to his/her Home Country (except as provided under the Annual Physician Visit, Immunization , Pregnancy and Eye Exam Benefits); any continuing treatment of an Injury or Sickness if the Claim Administrator has requested that the Insured return to his or her Home Country following Emergency Medical Treatment; If an Insured who has been evacuated or asked to Return Home later returns to Canada to resume studies/teaching in the same or subsequent policy years, the benefits payable will be limited to a maximum of $10,000 for that Sickness or Injury for which they returned Home; medication commonly available without a prescription (including but not limited to over-the-counter medications such as acetaminophen or cold/allergy remedies); fertility drugs; contraceptives; erectile dysfunction drugs; anti-baldness drugs; smoking cessation drugs; vaccinations, immunizations or injections (except as provided under the Immunization Benefit); vitamin preparations or supplements; or medication received on a preventive or maintenance basis; plastic or cosmetic surgery except as a result of a covered Injury; substitution or extraction of, or repairs to an existing prosthesis, (except as payable under the Corrective Devices Benefit); any expenses incurred outside the Coverage Period or while you are in Your Home Country (except as provided under the Excursion or Coverage in Home Country - Canadians Benefits); medical services for any injury that occurred or was treated, or sickness that started or',
					 'The Contract. The Application, this Policy, any document attached to this Policy when issued, and any amendment to the contract agreed upon in writing after the Policy is issued, constitute the entire contract, and no agent has authority to change the contract or waive any of its provisions. Waiver. The Insurer shall be deemed not to have waived any condition of this contract, either in whole or in part, unless the waiver is clearly expressed in writing signed by the Insurer. Copy of Application. The Insurer shall, upon request, furnish to the Insured under the contract a copy of the Application. Premium Payment. The full premium is due and payable when You apply for insurance. If for any reason the premium paid for the coverage applied for is incorrect, We will a) charge and collect the difference, or b) shorten the Coverage Period if an underpayment in premium cannot be collected, or c) refund any overpayment. Coverage will be null and void if for any reason Your payment is not honoured by the financial institution. The premium is calculated using the most current premium rates on the date You apply for coverage, for Your age on the Effective Date. We reserve the right to decline any application for insurance. Duplicate Contracts or Policies. In the event that more than one contract is issued to one Insured, benefits shall be limited to the maximum payable under one contract at any time, and a refund for duplicate premiums will be issued. Misrepresentation or Nondisclosure. All coverage under this Policy shall be void, if, whether before or after a loss, the Insured has concealed or misrepresented any material fact or circumstance concerning this coverage or subject thereof, or the interest of the Insured therein, or in the case of any fraud or false swearing of the Insured.',
					 '1. You must call the Emergency Assistance Number shown below BEFORE admission to Hospital as an in-patient and for prior written approval BEFORE any expenses are incurred for the following: � Major Diagnostic tests � Dental � Surgery � Air Evacuation � Family Transportation � Repatriation / Burial 2. Present Your guard.me I.D. Card to Your medical service providers. 3. Complete a claim form for EACH new Sickness or Injury when FIRST treated. Take it with You on Your first appointment if possible. You may photocopy a blank claim form for future use or obtain forms from Your organization or from our website at www.guard.me 4. Within 30 days of the first medical expense, log on to www.guard.me to file your claim electronically or MAIL: � Completed claim form � Original itemized bills / receipts � Include medical reports, emergency room report, history & physical, surgical, lab, x-rays and discharge reports to:',
					 'The Company and Our Plan Administrator (collectively �We� �Our� in this privacy section) are committed to protecting Your privacy. When You bought Your Policy You gave consent for Your personal data to be collected and processed by Us in accordance with this Privacy/Data Protection Notice. The information provided will be used only for determining Your eligibility for coverage under the Policy, assessing insurance risks, managing and adjudicating claims and negotiating or settling payments to third parties. This information may also be shared with third parties, such as other insurance companies, health organizations and government health insurance plans to adjudicate and process any claim. We collect and process Your personal data in line with applicable Privacy and Data Protection legislation. We take great care to keep Your personal information accurate, confidential and secure. If You have any questions about the Company�s Privacy Policy, please contact our Privacy Officer at (905) 523-5587 or by email to: privacy@oldrepublic-group.com.',
					 'Contact the 24 Hour Toll-Free Emergency Assistance Number at 1-888-756-8428 (North America) or collect (905) 731-8291 1. within 24 hours of admission to Hospital, or if incapacitated, as soon as reasonably possible; 2. for any benefit where prior approval is required; 3. for any Excursions, prior to incurring ANY medical expenses. Failure to notify the Claim Administrator as required will limit Our liability to 90% of the eligible expenses incurred.',
					 0,
					 'DAP',
					 GETDATE(),
					 'DAP',
					 GETDATE());

SELECT *
--delete
  FROM PRODUCT;

/*Deparment Table*/

INSERT INTO DEPARTMENT VALUES
	--('Support - Department', 'DAP', GETDATE(), 'DAP', GETDATE()),
	('IT', 'DPM', GETDATE(), 'DPM', GETDATE()),
	('Sales', 'DPM', GETDATE(), 'DPM', GETDATE());

select *
  from DEPARTMENT;

/*Staff Table*/
INSERT INTO STAFF (date_of_birth,
                   last_name,
				   first_name,
				   phone,
				   email,
				   address,
				   zipcode,
				   isemployee,
				   hire_date,
				   department_id,
				   usr_create,
				   date_create,
				   usr_update,
				   date_update)
		   VALUES ('1983-09-09',
		           '------',
				   'MaanPreet',
				   6479046744,
				   'maampreet@gmail.com',
				   '29 Ovordile Ave',
				   'M1R2R6',
				   1,
				   '2016-02-02',
				   2,
				   'DAP',
				   GETDATE(),
				   'DAP',
				   GETDATE());

select *
  from STAFF;

/*Cause of death table*/
INSERT INTO CAUSE_OF_DEATH  VALUES 
	('Yellow Fever', 'DAP', GETDATE(), 'DAP', GETDATE()),
	('Suicide', 'DPM', GETDATE(), 'DPM', GETDATE()),
	('Tuberculose', 'DPM',GETDATE(), 'DPM',GETDATE());


select *
  from dbo.CAUSE_OF_DEATH;

/*Policy Table*/
INSERT INTO POLICY(issue_date,
				   expire_date,
				   previous_policy,
				   staff_id,
				   customer_id,
				   product_id,
				   category_id,
				   cause_death_id,
				   usr_create,
				   date_create,
				   usr_update,
				   date_update)
			VALUES (GETDATE(),
			        '2039-03-25',
					NULL,
					1,
					2, --CUSTOMER ID
					5, --PRODUCT ID
					'GOL', --CATEGORY ID
					NULL,
					'DAP',
					GETDATE(),
					'DAP',
					GETDATE());

select *
  from POLICY;

/*Beneficiary table.*/

INSERT INTO BENEFICIARY (beneficiary_last_name,
						 beneficiary_name,
						 beneficiary_middle_name,
						 beneficiary_brith_day,
						 beneficiary_relation,
						 beneficiary_percentage,
						 policy_id,
						 usr_create,
						 usr_update)
				 VALUES ('Paris',
				         'Nathalia',
						 'Andrea',
						 '1988-04-06',
						 'Spouse',
						 50,
						 7,
						 'DAP',
						 'DAP');

Select * 
  from dbo.BENEFICIARY;