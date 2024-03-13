-- 코드를 입력하세요
SELECT INFO.FLAVOR
FROM FIRST_HALF FH, ICECREAM_INFO INFO
WHERE FH.TOTAL_ORDER >= 3000
AND FH.FLAVOR = INFO.FLAVOR
AND INFO.INGREDIENT_TYPE = 'fruit_based'
ORDER BY TOTAL_ORDER DESC;