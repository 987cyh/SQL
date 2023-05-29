/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : REGEXP 복습(학습)
*/

-- MySQL
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME REGEXP '^(Lucy|Ella|Pickle|Rogan|Sabrina|Mitty)$'
ORDER BY ANIMAL_ID;

-- Oracle
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE REGEXP_LIKE(NAME, '^(Lucy|Ella|Pickle|Rogan|Sabrina|Mitty)$')
ORDER BY ANIMAL_ID;