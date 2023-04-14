/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : IS NULL 복습(학습)
*/

-- MySQL
SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, IFNULL(FREEZER_YN,'N') AS "FREEZER_YN"
    FROM FOOD_WAREHOUSE
    WHERE SUBSTR(WAREHOUSE_NAME,'4','2')='경기'
--     WHERE warehouse_name LIKE '%경기%'
    ORDER BY WAREHOUSE_NAME;

-- Oracle
SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, NVL(FREEZER_YN,'N') AS "FREEZER_YN"
    FROM FOOD_WAREHOUSE
    WHERE SUBSTR(WAREHOUSE_NAME,'4','2')='경기'
--     WHERE warehouse_name LIKE '%경기%'
    ORDER BY WAREHOUSE_NAME;