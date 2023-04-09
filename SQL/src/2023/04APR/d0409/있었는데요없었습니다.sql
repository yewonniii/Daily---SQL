SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS I JOIN ANIMAL_OUTS O
WHERE I.ANIMAL_ID = O.ANIMAL_ID
AND I.DATETIME > O.DATETIME
ORDER BY I.DATETIME