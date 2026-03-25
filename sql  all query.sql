CREATE TABLE healthcare (
    age INT,
    gender VARCHAR(10),
    blood_type VARCHAR(5),
    medical_condition VARCHAR(50),
    date_of_admission DATE,
    doctor VARCHAR(100),
    hospital VARCHAR(100),
    insurance_provider VARCHAR(50),
    billing_amount FLOAT,
    room_number INT,
    admission_type VARCHAR(20),
    discharge_date DATE,
    medication VARCHAR(50),
    test_results VARCHAR(20),
    length_of_stay INT,
    billing_category VARCHAR(10)
);

COPY healthcare
FROM 'G:/container/healthcare_dataset.csv'
DELIMITER ','
CSV HEADER;


SELECT * FROM healthcare LIMIT 10;

-- Query 1 — Most Common Medical Conditions
SELECT medical_condition,
       COUNT(*) AS total_patients,
       ROUND(AVG(billing_amount)::NUMERIC, 2) AS avg_billing,
       ROUND(AVG(length_of_stay)::NUMERIC, 1) AS avg_stay_days
FROM healthcare
GROUP BY medical_condition
ORDER BY total_patients DESC;

--Query 2 — Admission Type Analysis
SELECT admission_type,
       COUNT(*) AS total_patients,
       ROUND(AVG(billing_amount)::NUMERIC, 2) AS avg_billing,
       ROUND(AVG(length_of_stay)::NUMERIC, 1) AS avg_stay
FROM healthcare
GROUP BY admission_type
ORDER BY total_patients DESC;

--Query 3 — Age Group Analysis
SELECT
    CASE
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 40 THEN '20-40'
        WHEN age BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'Above 60'
    END AS age_group,
    COUNT(*) AS total_patients,
    ROUND(AVG(billing_amount)::NUMERIC, 2) AS avg_billing
FROM healthcare
GROUP BY age_group
ORDER BY total_patients DESC;

--Query 4 — Insurance Provider Analysis
SELECT insurance_provider,
       COUNT(*) AS total_patients,
       ROUND(AVG(billing_amount)::NUMERIC, 2) AS avg_billing,
       ROUND(SUM(billing_amount)::NUMERIC, 2) AS total_billing
FROM healthcare
GROUP BY insurance_provider
ORDER BY total_billing DESC;

-- Query 5 — Test Results Analysis
SELECT test_results,
       COUNT(*) AS total_patients,
       ROUND(AVG(billing_amount)::NUMERIC, 2) AS avg_billing,
       ROUND(AVG(length_of_stay)::NUMERIC, 1) AS avg_stay
FROM healthcare
GROUP BY test_results
ORDER BY total_patients DESC;
