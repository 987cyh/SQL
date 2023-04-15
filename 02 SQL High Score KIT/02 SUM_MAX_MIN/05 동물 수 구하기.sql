/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : COUNT 복습(학습)
*/

-- MySQL
SELECT COUNT(ANIMAL_ID) AS "COUNT"
FROM ANIMAL_INS;

-- Oracle
SELECT MAX(ROWNUM) AS "COUNT"
FROM ANIMAL_INS;