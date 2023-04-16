/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : SELECT 복습(학습)
*/

-- MySQL
SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME ASC
LIMIT 1;

-- Oracle
SELECT NAME
FROM
    (SELECT NAME
    FROM ANIMAL_INS
    ORDER BY DATETIME ASC)
WHERE rownum = 1;