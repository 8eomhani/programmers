-- 코드를 입력하세요
SELECT TO_CHAR(ONS.SALES_DATE, 'YYYY-MM-DD') AS SALES_DATE , ONS.PRODUCT_ID, ONS.USER_ID, ONS.SALES_AMOUNT
FROM ONLINE_SALE ONS, OFFLINE_SALE OFS
WHERE ONS.PRODUCT_ID = OFS.PRODUCT_ID
AND ONS.SALES_AMOUNT = OFS.SALES_AMOUNT
AND ONS.SALES_AMOUNT BETWEEN TO_DATE(20220301, 'YYYY-MM-DD') AND TO_DATE(20220331, 'YYYY-MM-DD')
ORDER BY ONS.SALES_DATE, ONS.PRODUCT_ID, ONS.USER_ID;