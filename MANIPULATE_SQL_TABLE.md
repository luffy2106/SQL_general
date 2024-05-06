"""
https://www.hackerrank.com/challenges/weather-observation-station-20
"""
```
-- Sort LAT_N in ascending order and add index key in ascending order
CREATE TABLE NEW_TABLE_STATION AS
SELECT *, ROW_NUMBER() OVER (ORDER BY LAT_N) AS ID_ASC
FROM STATION;

-- Get the index median of LAT_N : If odd : index is (n-1)/2, if even : (value at index (n/2 -1) + value at index(n/2) )/2.
-- Note that in SQL, index start from 1, so we need to modify the original syntax a bit
SET @len_row = (SELECT COUNT(ID_ASC) FROM NEW_TABLE_STATION);

SELECT 
    CASE
        WHEN @len_row % 2 = 1 THEN 
            (SELECT ROUND(LAT_N, 4) FROM NEW_TABLE_STATION WHERE ID_ASC = (@len_row - 1) / 2 + 1)
        ELSE 
            ROUND(((SELECT LAT_N FROM NEW_TABLE_STATION WHERE ID_ASC = @len_row / 2 ) + (SELECT LAT_N FROM NEW_TABLE_STATION WHERE ID_ASC = @len_row / 2 + 1)) / 2, 4)
    END INTO @median_lat_n;

SELECT @median_lat_n;
```

"""
https://www.hackerrank.com/challenges/the-blunde
"""
-- Get the average salary from the original table
SET @actual := (SELECT avg(salary) FROM EMPLOYEES);
-- Update EMPLOYEES table by removing all "0" causing by keyboard errors
UPDATE
    EMPLOYEES 
SET
    salary = REPLACE(salary, '0', '');
-- Get the real average salary from the updated table   
SET @miscalcualated := (SELECT avg(salary) FROM EMPLOYEES);
-- Get the resulting error
SELECT ceiling(abs(@actual - @miscalcualated));


