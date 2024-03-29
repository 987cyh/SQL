/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : GROUP BY 복습(학습)
*/

-- MySQL
SELECT B.CATEGORY, SUM(I.SALES) AS "TOTAL_SALES"
FROM BOOK B, BOOK_SALES I
WHERE B.BOOK_ID = I.BOOK_ID
     AND DATE_FORMAT(I.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY;

SELECT B.CATEGORY, SUM(I.SALES) AS "TOTAL_SALES"
FROM BOOK B
JOIN BOOK_SALES I ON B.BOOK_ID = I.BOOK_ID
WHERE DATE_FORMAT(I.SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY;

-- Oracle
SELECT B.CATEGORY, SUM(I.SALES) AS "TOTAL_SALES"
FROM BOOK B, BOOK_SALES I
WHERE B.BOOK_ID = I.BOOK_ID
     AND I.SALES_DATE BETWEEN TO_DATE(20220101,'YYYY-MM-DD') AND TO_DATE(20220131,'YYYY-MM-DD')
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY;