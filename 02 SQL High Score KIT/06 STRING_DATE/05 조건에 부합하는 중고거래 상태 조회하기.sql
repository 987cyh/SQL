/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit, https://jaehwaseo.tistory.com/8
□ 목적 : CASE, WHEN 복습(학습)
*/

-- MySQL
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
    CASE STATUS
        WHEN 'SALE' THEN '판매중'
        WHEN 'RESERVED' THEN '예약중'
        ELSE '거래완료'
    END AS STATUS
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
ORDER BY 1 DESC;

-- Oracle
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE,
    CASE STATUS
        WHEN 'SALE' THEN '판매중'
        WHEN 'RESERVED' THEN '예약중'
        ELSE '거래완료'
    END AS STATUS
FROM USED_GOODS_BOARD
WHERE TO_CHAR(CREATED_DATE,'YYYY-MM-DD') = '2022-10-05'
ORDER BY BOARD_ID DESC;
