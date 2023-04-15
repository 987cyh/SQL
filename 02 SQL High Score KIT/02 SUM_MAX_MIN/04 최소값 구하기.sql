/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : MIN 복습(학습)
*/

-- MySQL
SELECT DATETIME AS "시간"
FROM ANIMAL_INS
ORDER BY DATETIME ASC
LIMIT 1;

-- Oracle
SELECT MIN(DATETIME) AS "시간"
FROM ANIMAL_INS;