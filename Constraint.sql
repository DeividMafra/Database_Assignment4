-- TESTING THE CONSTRAINT
-- INSERT INTO POLICY VALUES ( 1100, DEFAULT, '2019-02-28', NULL );

-- INSERT TO TEST
INSERT INTO POLICY (issue_date,expire_date,previous_policy,staff_id,customer_id,product_id,category_id,benefit_id,
term_id,coverage_id,usr_create,date_create,usr_update,date_update)
VALUES (DEFAULT,'2019-03-21',1020,001,100,123,'GOL',999,101,500,'DPM',DEFAULT,'DAP','03-21-2019')

-- insert to test the table
/*INSERT INTO TERM VALUES (5, 10, 'DPM', DEFAULT, 'DAP', DEFAULT)
INSERT INTO TERM VALUES (10, 20, 'DPM', DEFAULT, 'DAP', '2019-03-15')*/

/* Msg 547, Level 16, State 0, Line 324
The INSERT statement conflicted with the CHECK constraint "chkTerm_date_update". The conflict occurred in database "INSURANCE_COMPANY", table "dbo.TERM".
The statement has been terminated.*/

-- ADD DATE_UPDATE CONSTRAINT - IT COULD NOT BE BEFORE DATE_CREATE
/*ALTER TABLE TERM
	ADD CONSTRAINT chkTerm_date_update
   CHECK (date_update >= date_create)*/

   /*STEP 5*/

/*ALTER TABLE POLICY
  ADD CONSTRAINT policy_previous_policy_fk
      FOREIGN KEY( previous_policy )
      REFERENCES policy( policy_id );*/

--INSERT INTO policy VALUES ( 1160, DEFAULT, '2019-02-28', 1200 );

/*RESULT: Msg 547, Level 16, State 0, Line 31
The INSERT statement conflicted with the FOREIGN KEY SAME TABLE constraint "policy_previous_policy_fk". The conflict occurred in database "INSURANCE_COMPANY", table "dbo.POLICY", column 'policy_id'.
The statement has been terminated.*/

alter table Customers
add constraint CheckCoach1
check (dbo.CheckCoach() = 1)

insert into Customers values ('acb','Company X', '123 ST','Toronto','ON','m5w-2s8','CA',10000,10.0,.10,118)


create function chk_CheckCoach()
returns int
as begin
return (SELECT a.consultant_id from sales_consultants a WHERE a.Coach_Rep_ID  is Null)
end

,