/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : SUM 복습(학습)
*/

-- MySQL
SELECT *
FROM FOOD_PRODUCT
ORDER BY PRICE DESC
LIMIT 1;

-- Oracle
SELECT *
FROM FOOD_PRODUCT
WHERE PRICE = (SELECT MAX(PRICE) AS "MAX" FROM FOOD_PRODUCT);