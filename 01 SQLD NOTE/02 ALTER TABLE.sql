SELECT * FROM NETFLIX;

ALTER TABLE	NETFLIX ADD	(CAST_MEMBER VARCHAR2(20));

ALTER TABLE	NETFLIX MODIFY	(CAST_MEMBER VARCHAR2(50));

ALTER TABLE	NETFLIX MODIFY	(CAST_MEMBER NUMBER(2));

ALTER TABLE	NETFLIX DROP	(CAST_MEMBER);