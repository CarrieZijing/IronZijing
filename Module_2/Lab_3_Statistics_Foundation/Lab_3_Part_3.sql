CREATE DATABASE M2;

-- Please find MEAN, SUM, STANDARD DEVIATION, VARIANCE, MIN and MAX.

SELECT avg(score) 
FROM M2.m2lab3;
-- Mean = 79.93

SELECT sum(score)
FROM M2.m2lab3;
-- Sum = 1199

SELECT std(score)
FROM M2.m2lab3;
-- Standard deviation = 14.69

SELECT variance(score)
FROM M2.m2lab3;
-- Variance = 215.93

SELECT score
FROM M2.m2lab3
ORDER BY score
LIMIT 1;
-- MIN = 56

SELECT score
FROM M2.m2lab3
ORDER BY score DESC
LIMIT 1;
-- MAX = 98
