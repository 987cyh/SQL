/*
□ 참고 : https://school.programmers.co.kr/learn/challenges?tab=sql_practice_kit
□ 목적 : JOIN, USING 복습(학습)
*/

-- MySQL
SELECT CONCAT('/home/grep/src/',BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) "FILE_PATH"
FROM USED_GOODS_FILE
WHERE BOARD_ID = (SELECT BOARD_ID
                  FROM USED_GOODS_BOARD
                  ORDER BY VIEWS
                  DESC LIMIT 1)
ORDER BY FILE_ID DESC;

-- Oracle
SELECT '/home/grep/src/' || BOARD_ID || '/' || FILE_ID || FILE_NAME || FILE_EXT AS FILE_PATH
FROM USED_GOODS_BOARD
JOIN USED_GOODS_FILE
USING(BOARD_ID)
WHERE VIEWS = (SELECT MAX(VIEWS)
               FROM USED_GOODS_BOARD)
ORDER BY FILE_ID DESC;