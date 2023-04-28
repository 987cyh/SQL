/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : JOIN 복습(학습)
*/

-- MySQL
SELECT I.INGREDIENT_TYPE, SUM(F.TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF F
JOIN ICECREAM_INFO I
ON F.FLAVOR=I.FLAVOR
GROUP BY I.INGREDIENT_TYPE;

-- Oracle
SELECT INGREDIENT_TYPE,SUM(TOTAL_ORDER)
FROM ICECREAM_INFO I INNER JOIN FIRST_HALF F
ON I.FLAVOR=F.FLAVOR
GROUP BY INGREDIENT_TYPE;