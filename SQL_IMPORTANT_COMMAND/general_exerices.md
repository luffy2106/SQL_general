#### Ex
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-20
```
- Solution
```
CREATE TABLE new_table As (SELECT *
FROM STATION
ORDER BY LAT_N ASC);

ALTER TABLE new_table ADD ID_asc INT NOT NULL AUTO_INCREMENT primary key;

SET @len_row = (SELECT COUNT(ID) from new_table) ;
SET @median = 
(
select 
CASE
WHEN @len_row%2=1 then round(@len_row/2)
else @len_row/2
END
);

SELECT round(LAT_N, 4)
FROM new_table
WHERE ID_asc = @median;
```