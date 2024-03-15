-- 코드를 입력하세요
SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%' 
OR OPTIONS LIKE '%열선시트%'
OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC;

/*
WHERE절에 IN을 쓰면 되지 않을까? 라는 생각을 했는데
문제를 보면 알 수 듰듯이 CAR_TYPE컬럼의 레코드가 열선시트,가죽시트와 같이 여러개로 있었음 (제1정규형을 만족하지 않는 상태)
그렇기 떄문에 WHERE절에 LIKE를 이용하여 문제를 해결하였음
