-- 코드를 입력하세요
SELECT TO_CHAR(SALES_DATE,'YYYY-MM-DD') AS SALES_DATE , PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE BETWEEN TO_DATE(20220301,'YYYY-MM-DD') AND TO_DATE(20220331,'YYYY-MM-DD')

UNION 
/*UNION은 중복을 제거한 결과 반환(자동으로 정렬하는 과정을 거치므로 성능면에서 좋지 않음
반면에 UNION ALL은 중복을 제거하지 않고 테이블을 합침*/

SELECT TO_CHAR(SALES_DATE,'YYYY-MM-DD') AS SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE 
WHERE SALES_DATE BETWEEN TO_DATE(20220301,'YYYY-MM-DD') AND TO_DATE(20220331,'YYYY-MM-DD')

ORDER BY SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC;

/* 
OFFLINE_SALE 테이블의 경우 ONLINE_SALE테이블에 있는 USER_ID 컬럼이 존재하지 않음
따라서 테이블을 합칠 경우 NULL로 표시 될 것임 -> 하단 쿼리(OFFLINE_SALE테이블) SELECT NULL AS USER_ID를 해서 컬럼명 부여

[WHERE절에 조건 다르게 주기]

1) WHERE TO_CHAR(SALES_DATE,'MM') = '03' 
2) WHERE TO_CHAR(SALES_DATE,'MM') = 03 
3) WHERE EXTRACT(YEAR FROM SALES_DATE) = 2022 AND EXTRACT(MONTH FROM SALES_DATE) = 3
세 번째 방법은 익혀둘 것

*/
