/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit, https://jaehwaseo.tistory.com/8
□ 목적 : LOCATE, LIKE, REGEXP_LIKE 복습(학습)
*/

-- MySQL
SELECT CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS
FROM CAR_RENTAL_COMPANY_CAR
WHERE LOCATE('네비게이션', OPTIONS)
ORDER BY CAR_ID DESC;

-- Oracle
SELECT CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS
FROM CAR_RENTAL_COMPANY_CAR C
-- WHERE C.OPTIONS LIKE '%네비게이션%'
WHERE REGEXP_LIKE (OPTIONS, '네비게이션')
ORDER BY CAR_ID DESC;
