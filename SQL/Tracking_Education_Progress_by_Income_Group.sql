-- How do primary and secondary school enrollment rates differ across World Bank income groups, and how have they changed from 2000 to 2022? --

SELECT cs.income_group, ROUND(AVG(ie.value), 2) AS avg_enrollment_rate
FROM `bigquery-public-data.world_bank_intl_education.international_education` AS ie
INNER JOIN `bigquery-public-data.world_bank_intl_education.country_summary` AS cs
  ON ie.country_code = cs.country_code
WHERE ie.year BETWEEN 2000 AND 2022
  AND ie.indicator_code IN ('SE.PRM.ENRR', 'SE.SEC.ENRR')
  AND cs.income_group IS NOT NULL
GROUP BY cs.income_group
ORDER BY avg_enrollment_rate;
