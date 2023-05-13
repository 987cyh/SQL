/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : LIMIT, FETCH, JOIN 복습(학습)
*/

-- MySQL
SELECT FLAVOR
FROM FIRST_HALF A
JOIN JULY B USING (FLAVOR)
GROUP BY FLAVOR
ORDER BY SUM(A.TOTAL_ORDER + B.TOTAL_ORDER) DESC
LIMIT 3;

-- Oracle
SELECT A.FLAVOR
FROM FIRST_HALF A, (
                    SELECT FLAVOR , SUM(TOTAL_ORDER) AS SUM_ORDER
                    FROM JULY
                    GROUP BY FLAVOR
                    ) B
WHERE 1 = 1
AND A.FLAVOR = B.FLAVOR
ORDER BY (A.TOTAL_ORDER + B.SUM_ORDER) DESC
FETCH FIRST 3 ROWS ONLY;