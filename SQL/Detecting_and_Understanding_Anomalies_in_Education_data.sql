-- Which countries have outlier education indicators (very high or low), and what definitions or country-specific explanations are provided? --

WITH stats AS (
  SELECT 
    indicator_code,
    AVG(value) AS avg_value,
    STDDEV(value) AS std_value
  FROM `bigquery-public-data.world_bank_intl_education.international_education` 
  WHERE indicator_code = 'SE.SEC.ENRR'
    AND year = 2014
    AND value IS NOT NULL
  GROUP BY indicator_code
)
, country_values AS (
  SELECT
    country_name,
    AVG(value) AS avg_country_value
  FROM `bigquery-public-data.world_bank_intl_education.international_education`
  WHERE indicator_code = 'SE.SEC.ENRR'
    AND year = 2014
    AND value IS NOT NULL
  GROUP BY country_name, country_code
)

SELECT 
  cv.country_name,
  ROUND((cv.avg_country_value - s.avg_value) / s.std_value, 2) AS z_scores
FROM country_values AS cv
CROSS JOIN stats AS s
GROUP BY cv.country_name, cv.avg_country_value, s.avg_value, s.std_value
HAVING z_scores > 2
ORDER BY cv.country_name;
