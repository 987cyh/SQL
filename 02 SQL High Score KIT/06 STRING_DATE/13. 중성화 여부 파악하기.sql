/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : REGEXP 복습(학습)
*/

-- MySQL
SELECT ANIMAL_ID, NAME,
CASE WHEN REGEXP_LIKE(SEX_UPON_INTAKE,'^Neutered|^Spayed') THEN 'O'
ELSE 'X' END AS "중성화"
FROM ANIMAL_INS
ORDER BY 1,2,3;

-- Oracle
SELECT ANIMAL_ID, NAME,
CASE WHEN REGEXP_LIKE(SEX_UPON_INTAKE,'^Neutered|^Spayed') THEN 'O'
ELSE 'X' END AS "중성화"
FROM ANIMAL_INS
ORDER BY 1,2,3;