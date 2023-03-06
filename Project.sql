create DATABASE healthcare;

use  healthcare;


select * from data;


ALTER TABLE data
DROP COLUMN datacol;


ALTER TABLE data
ADD CONSTRAINT Customer_ID PRIMARY KEY (id);


SELECT AVG(Age) AS avg_age, AVG(children) AS avg_children, AVG(BMI) AS avg_bmi, AVG(charges) AS avg_hosp_costs
FROM data
WHERE HBA1C > 6.5 AND heart_problems = 'yes';


SELECT Hospital_tier, City_tier, AVG(charges) AS avg_cost
FROM data
GROUP BY Hospital_tier, City_tier;


SELECT COUNT(*) AS patients
FROM data
WHERE Heart_Issues = 'yes' AND cancer_history = 'Yes';


SELECT state, COUNT(*) AS num_hospitals
FROM data
WHERE hospital_tier = 'tier - 1'
GROUP BY state;


select * from data;






