-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT * FROM campaign;

SELECT backers_count,
	cf_id,
	outcome
FROM campaign
WHERE outcome = 'live'
ORDER BY backers_count DESC;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT * FROM backers;

SELECT COUNT(bc.backer_id) AS bcount,
	cp.cf_id,
	cp.outcome
FROM backers AS bc
LEFT JOIN campaign AS cp
ON bc.cf_id = cp.cf_id
WHERE cp.outcome = 'live'
GROUP BY cp.cf_id
ORDER BY bcount DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT * FROM campaign;

SELECT ct.first_name,
	ct.last_name,
	ct.email,
	(cp.goal - cp.pledged) AS Remaining_Goal_Amount
INTO email_contacts_remaining_goal_amount
FROM contacts AS ct
LEFT JOIN campaign AS cp
ON cp.contact_id = ct.contact_id
WHERE cp.outcome = 'live'
ORDER BY Remaining_Goal_Amount DESC;

-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT bc.email,
	bc.first_name,
	bc.last_name,
	bc.cf_id,
	cp.company_name,
	cp.description,
	cp.end_date,
	(cp.goal - cp.pledged) AS Left_Of_Goal
INTO email_backers_remaining_goal_amount
FROM backers AS bc
LEFT JOIN campaign as cp
ON bc.cf_id = cp.cf_id
WHERE cp.outcome = 'live'
ORDER BY bc.email DESC;


-- Check the table
SELECT * FROM email_backers_remaining_goal_amount;


