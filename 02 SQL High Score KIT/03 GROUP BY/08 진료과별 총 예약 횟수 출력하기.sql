/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : GROUP BY 복습(학습)
*/

-- MySQL
SELECT MCDP_CD AS "진료과코드", COUNT(MCDP_CD) AS "5월예약건수"
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD,'%Y-%m-%d') BETWEEN '2022-05-01' AND '2022-05-31'
GROUP BY MCDP_CD
ORDER BY 2,1;

-- Oracle
SELECT MCDP_CD "진료과코드", COUNT(MCDP_CD) "5월예약건수"
FROM APPOINTMENT
WHERE TO_CHAR(APNT_YMD,'YYYYMM') = '202205'
GROUP BY MCDP_CD
ORDER BY 2,1;