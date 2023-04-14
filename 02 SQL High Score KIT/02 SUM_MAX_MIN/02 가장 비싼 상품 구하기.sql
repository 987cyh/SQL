/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : SUM 복습(학습)
*/

-- MySQL
SELECT PRICE AS "MAX_PRICE"
FROM PRODUCT
ORDER BY PRICE DESC
LIMIT 1;

-- Oracle
SELECT MAX(PRICE) AS "MAX_PRICE"
FROM PRODUCT;