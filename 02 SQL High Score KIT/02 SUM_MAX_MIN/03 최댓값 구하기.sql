/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : MAX 복습(학습)
*/

-- MySQL
SELECT DATETIME  AS "시간"
FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1;

-- Oracle
SELECT MAX(DATETIME) AS "시간"
FROM ANIMAL_INS;