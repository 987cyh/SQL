/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : SELECT 복습(학습)
*/

-- MySQL
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION !='Aged'
ORDER BY ANIMAL_ID ASC;

-- Oracle
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION !='Aged'
ORDER BY ANIMAL_ID ASC;