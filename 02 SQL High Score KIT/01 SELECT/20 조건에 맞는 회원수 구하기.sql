/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : SELECT 복습(학습)
*/

-- MySQL
SELECT COUNT(USER_ID) AS "USERS"
FROM USER_INFO
WHERE (AGE>= 20 AND AGE <=29) AND (DATE_FORMAT(JOINED,'%Y')='2021');
-- Oracle
SELECT COUNT(USER_ID) AS "USERS"
FROM USER_INFO
WHERE (AGE>= 20 AND AGE <=29) AND (TO_CHAR(JOINED,'YYYY')='2021');