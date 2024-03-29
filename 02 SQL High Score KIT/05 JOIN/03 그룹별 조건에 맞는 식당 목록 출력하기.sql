/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : JOIN 복습(학습)
*/

-- MySQL
SELECT M.MEMBER_NAME, R.REVIEW_TEXT, DATE_FORMAT(R.REVIEW_DATE, "%Y-%m-%d")
FROM MEMBER_PROFILE M
JOIN(
    SELECT REVIEW_TEXT, REVIEW_DATE, MEMBER_ID
    FROM REST_REVIEW
    WHERE MEMBER_ID = (
                        SELECT MEMBER_ID
                        FROM REST_REVIEW
                        GROUP BY MEMBER_ID
                        ORDER BY COUNT(*) DESC
                        LIMIT 1)
    ) AS R
ON R.MEMBER_ID = M.MEMBER_ID
ORDER BY R.REVIEW_DATE, R.REVIEW_TEXT;

-- Oracle
SELECT MEMBER_NAME, REVIEW_TEXT, TO_CHAR(REVIEW_DATE, 'YYYY-MM-DD') AS REVIEW_DATE
FROM MEMBER_PROFILE A
JOIN(
    SELECT MEMBER_ID, COUNT(*) CNT
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    ORDER BY CNT DESC FETCH NEXT ROW WITH TIES) B
ON A.MEMBER_ID = B.MEMBER_ID

JOIN REST_REVIEW C ON
A.MEMBER_ID = C.MEMBER_ID

ORDER BY REVIEW_DATE, REVIEW_TEXT;