/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit, https://jaehwaseo.tistory.com/8
□ 목적 : JOIN, GROUP BY, WITH 복습(학습)
*/

-- MySQL
SELECT DATE_FORMAT(O.SALES_DATE, '%Y') AS YEAR,
        DATE_FORMAT(O.SALES_DATE, '%m') AS MONTH,
        COUNT(DISTINCT U.USER_ID) AS PUCHASED_USERS,
        ROUND(COUNT(DISTINCT U.USER_ID)/(SELECT COUNT(*) FROM USER_INFO WHERE joined LIKE '2021%'), 1) AS PUCHASED_RATIO
FROM USER_INFO U
JOIN ONLINE_SALE O
ON U.USER_ID = O.USER_ID
WHERE U.JOINED LIKE '2021%'
GROUP BY MONTH
ORDER BY YEAR, MONTH;

-- Oracle
WITH TOT_INFO AS (
                  SELECT COUNT(*) AS TOT_CNT
                  FROM USER_INFO
                  WHERE TO_CHAR(JOINED, 'YYYY') = '2021'
                  )
SELECT IT.YEAR, IT.MONTH, IT.PUCHASED_USERS, ROUND(IT.PUCHASED_USERS / TI.TOT_CNT, 1) AS PUCHASED_RATIO
FROM (
      SELECT EXTRACT(YEAR FROM OS.SALES_DATE) AS YEAR, EXTRACT(MONTH FROM OS.SALES_DATE) AS MONTH, COUNT(DISTINCT OS.USER_ID) AS PUCHASED_USERS
      FROM USER_INFO UI, ONLINE_SALE OS
      WHERE UI.USER_ID = OS.USER_ID AND EXTRACT(YEAR FROM UI.JOINED) = 2021
      GROUP BY EXTRACT(YEAR FROM OS.SALES_DATE), EXTRACT(MONTH FROM OS.SALES_DATE)
     ) IT, TOT_INFO TI
ORDER BY IT.YEAR ASC, IT.MONTH ASC;

