/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : REGEXP 복습(학습)
*/

-- MySQL
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog' AND NAME LIKE '%EL%'
ORDER BY NAME;

-- Oracle
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE REGEXP_LIKE (NAME,'El','i') AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME;