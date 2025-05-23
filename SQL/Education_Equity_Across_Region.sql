-- Which regions show the largest disparities in gender-based enrollment in secondary education in 2014? --

WITH max_gender_data AS (
  SELECT 
    cs.region,
    MAX(CASE WHEN indicator_code = 'SE.PRM.ENRR.FE' THEN ie.value END) AS female_enrollment_rate,
    MAX(CASE WHEN indicator_code = 'SE.SEC.ENRR.MA' THEN ie.value END) AS male_enrollment_rate
  FROM `bigquery-public-data.world_bank_intl_education.international_education` AS ie
  INNER JOIN `bigquery-public-data.world_bank_intl_education.country_summary` AS cs
    ON ie.country_code = cs.country_code
  WHERE cs.region IS NOT NULL
    AND ie.year = 2014
  GROUP BY cs.region
)

SELECT 
  region,
  ABS(ROUND(AVG(female_enrollment_rate - male_enrollment_rate), 2)) AS largest_disparities,
  (CASE WHEN female_enrollment_rate > male_enrollment_rate THEN 'female_higher' ELSE 'male_higher' END) AS who_has_more
FROM max_gender_data
GROUP BY region, female_enrollment_rate, male_enrollment_rate
ORDER BY largest_disparities DESC;
