/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : JOIN, WHERE 복습(학습)
*/

-- MySQL
SELECT P.PRODUCT_CODE, SUM(S.SALES_AMOUNT) * P.PRICE AS SALES
FROM PRODUCT P
INNER JOIN OFFLINE_SALE S ON P.PRODUCT_ID = S.PRODUCT_ID
GROUP BY P.PRODUCT_ID
ORDER BY SALES DESC, P.PRODUCT_CODE;

-- Oracle
SELECT A.PRODUCT_CODE AS PRODUCT_CODE, SUM(A.PRICE * B.SALES_AMOUNT) AS SALES
FROM  PRODUCT A, OFFLINE_SALE B
WHERE A.PRODUCT_ID = B.PRODUCT_ID
GROUP BY A.PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE ASC;

