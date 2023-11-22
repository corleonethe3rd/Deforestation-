create database Deforrestation;
select*from forest_area;
select*from land_area;
select*from regions ;

--  What are the total number of countries involved in deforestation?
WITH DeforestationCountries AS (
    SELECT DISTINCT country_name
    FROM (
        SELECT
            country_name,
            forest_area_sqkm,
            LAG(forest_area_sqkm, 1, 0) OVER (PARTITION BY country_code ORDER BY year) AS prev_forest_area
        FROM Forest_area
    ) Subquery
    WHERE forest_area_sqkm < prev_forest_area
)
SELECT COUNT(*) AS TotalCountriesInDeforestation
FROM DeforestationCountries;


-- Show the income groups of countries having total area ranging from 75,000 to 150,000 square meter?
SELECT DISTINCT r.income_group, r.country_name
FROM regions r
JOIN land_area l ON l.country_code = r.country_code
WHERE total_area_sq_mi BETWEEN 75000 AND 150000;


-- Calculate average area in square miles for countries in the 'upper middle income group'. Compare the result with the rest of the income categories.
SELECT
    (SELECT AVG(total_area_sq_mi)
     FROM land_area l
     JOIN regions r ON l.country_code = r.country_code
     WHERE r.income_group = 'Upper middle income') AS AvgAreaUpperMiddleIncome,
    r.income_group,
    AVG(total_area_sq_mi) AS AvgArea
FROM land_area l
JOIN regions r ON l.country_code = r.country_code
WHERE r.income_group != 'Upper middle income'
GROUP BY r.income_group;


--Calculate average area in square km for countries in the 'high income'. Compare the result with the rest of the income categories.
SELECT
    r.income_group,
    (SELECT SUM(forest_area_sqkm)
     FROM Forest_area f
     JOIN regions r ON f.country_code = r.country_code
     WHERE r.income_group = 'High income') AS TotalForestAreaHighIncome,
    SUM(forest_area_sqkm) AS TotalForestArea
FROM Forest_area f
JOIN regions r ON f.country_code = r.country_code
WHERE r.income_group != 'High income'
GROUP BY r.income_group;


-- Show countries from each region(continent) having the highest total forest areas
WITH RankedForests AS (
    SELECT
        country_name,
        region,
        forest_area_sqkm,
        RANK() OVER (PARTITION BY region ORDER BY forest_area_sqkm DESC) AS RankByForestArea
    FROM Forest_area
)
SELECT country_name, region, forest_area_sqkm
FROM RankedForests
WHERE RankByForestArea = 1;

--Find the countries with the highest and lowest total forest areas in square kilometers.
SELECT country_name, MAX(forest_area_sqkm) AS HighestForestArea, MIN(forest_area_sqkm) AS LowestForestArea
FROM Forest_area
GROUP BY country_name;

-- Calculate the percentage change in total forest area for each country between the earliest and latest recorded years.
WITH CountryForestChange AS (
    SELECT
        country_name,
        MAX(forest_area_sqkm) AS LatestForestArea,
        MIN(forest_area_sqkm) AS EarliestForestArea
    FROM Forest_area
    GROUP BY country_name
)
SELECT
    country_name,
    ((LatestForestArea - EarliestForestArea) / EarliestForestArea) * 100 AS PercentageChange
FROM CountryForestChange;



