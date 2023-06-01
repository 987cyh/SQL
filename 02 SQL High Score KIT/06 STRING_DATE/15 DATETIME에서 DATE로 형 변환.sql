/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : DATE_FORMAT, TO_CHAR 복습(학습)
*/

-- MySQL
SELECT ANIMAL_ID, NAME , DATE_FORMAT(DATETIME,'%Y-%m-%d') as 날짜
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

-- Oracle
SELECT ANIMAL_ID, NAME, TO_CHAR(DATETIME, 'YYYY-MM-DD') 날짜
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;