/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit, https://jaehwaseo.tistory.com/8
□ 목적 : JOIN 복습(학습)
*/

-- MySQL
SELECT DISTINCT(C.CAR_ID)
FROM CAR_RENTAL_COMPANY_CAR C
INNER JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY R ON C.CAR_ID = R.CAR_ID
WHERE C.CAR_TYPE = '세단' AND MONTH(R.START_DATE) = 10
ORDER BY C.CAR_ID DESC;

-- Oracle
SELECT DISTINCT(A.CAR_ID)
FROM CAR_RENTAL_COMPANY_CAR A, CAR_RENTAL_COMPANY_RENTAL_HISTORY B
WHERE A.CAR_ID = B.CAR_ID AND A.CAR_TYPE = '세단' AND TO_CHAR(B.START_DATE,'mm') = '10'
ORDER BY A.CAR_ID DESC;
