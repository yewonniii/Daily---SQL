SELECT P.MEMBER_NAME, R.REVIEW_TEXT, left(R.REVIEW_DATE,10) AS REVIEW_DATE
FROM MEMBER_PROFILE P JOIN REST_REVIEW R
ON P.MEMBER_ID = R.MEMBER_ID
WHERE P.MEMBER_ID = (
SELECT MEMBER_ID
FROM REST_REVIEW RR
GROUP BY RR.MEMBER_ID
ORDER BY COUNT(MEMBER_ID) desc
LIMIT 1
)
ORDER BY R.REVIEW_DATE