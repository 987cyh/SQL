/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : IS NULL 복습(학습)
*/

-- MySQL
SELECT ANIMAL_TYPE,
       IFNULL(NAME,"No name") AS 'NAME',
       SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;

-- Oracle
SELECT ANIMAL_TYPE,
       NVL(NAME,'No name') AS "NAME",
       SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;