/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : SELECT 복습(학습)
*/

-- MySQL
SELECT ROUND(AVG(DAILY_FEE),0) AS "AVERAGE_FEE "
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE ='SUV';
-- Oracle
SELECT ROUND(AVG(DAILY_FEE),0) AS "AVERAGE_FEE "
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE ='SUV';