-- 코드를 입력하세요
SELECT ROUND(AVG(DAILY_FEE),0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'

-- 코드를 입력하세요
SELECT ROUND(AVG(DAILY_FEE),0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'
GROUP BY CAR_TYPE

-- 코드를 입력하세요
SELECT ROUND(AVG(DAILY_FEE),0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
GROUP BY CAR_TYPE
HAVING LOWER(CAR_TYPE) = 'suv'

/* 마지막 코드의 경우 
lower는 영어를 소문자로 변환해주는 함수로, 
해당 컬럼의 데이터가 대문자로 되어있는 지, 
아니면 소문자인지 혹은 섞여있는 지를 모르는 경우에 사용하시면 좋습니다. 
car_type 데이터가 SUV or suv or Suv 뭐든 간에 
lower 함수를 사용하면 suv(소문자) 값을 얻는 것이 보장되기때문에 
'suv'(소문자)로 조건을 특정하여 지정할 수 있습니다. */
