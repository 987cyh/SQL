/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : DATE_FORMAT, TO_CHAR 복습(학습)
*/

-- MySQL
SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE
       , CASE WHEN DATE_FORMAT(OUT_DATE, '%Y-%m-%d') <= '2022-05-01' THEN '출고완료'
              WHEN DATE_FORMAT(OUT_DATE, '%Y-%m-%d') > '2022-05-01' THEN '출고대기'
              ELSE '출고미정'
              END AS 출고여부
FROM FOOD_ORDER
ORDER BY ORDER_ID;

-- Oracle
SELECT ORDER_ID, PRODUCT_ID, TO_CHAR(OUT_DATE,'YYYY-MM-DD') OUT_DATE
      ,CASE WHEN TO_CHAR(OUT_DATE,'YYYYMMDD') <=20220501 THEN '출고완료'
            WHEN TO_CHAR(OUT_DATE,'YYYYMMDD') >20220501 THEN '출고대기'
       ELSE '출고미정'
       END AS 출고여부
FROM FOOD_ORDER
ORDER BY ORDER_ID;
