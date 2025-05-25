# World Bank Education Data Analysis

This repository contains SQL queries used for analyzing **World Bank** education data, specifically focusing on key education metrics like **enrollment rates**, **gender equity**, and **literacy trends** across various income groups and regions. The analysis spans the years **2000–2022** using publicly available data on Google BigQuery.

## Queries Included

### 1. **Tracking Education Progress by Income Group**
- **Goal:** Analyze how primary and secondary school enrollment rates differ across World Bank income groups from 2000 to 2022.
- **Key Metrics:** Primary and secondary education enrollment rates (SE.PRM.ENRR, SE.SEC.ENRR)
- **SQL:** Query aggregating enrollment rates by income group over the years.

### 2. **Education Equity Across Regions**
- **Goal:** Identify regions with the largest disparities in gender-based enrollment in secondary education in 2014.
- **Key Metrics:** Female and male secondary school enrollment rates (SE.SEC.ENRR.FE, SE.SEC.ENRR.MA)
- **SQL:** Query to compute the difference in enrollment rates between genders across regions.

### 3. **Detecting and Understanding Anomalies in Education Data**
- **Goal:** Identify countries with outlier education indicators (very high or low) for secondary education enrollment (SE.SEC.ENRR).
- **Key Metrics:** Secondary education gross enrollment ratio (SE.SEC.ENRR)
- **SQL:** Query to detect statistical outliers using z-scores.

### 4. **Literacy Trends Over Time**
- **Goal:** Explore how adult literacy rates have evolved in low-income countries since 2000 and identify characteristics of countries with slow improvement.
- **Key Metrics:** Adult literacy rate (SE.ADT.LITR.ZS)
- **SQL:** Query tracking changes in literacy over time.

### 5. **Curriculum or Education System Focus by Region**
- **Goal:** Analyze which education indicators are most reported by countries in Sub-Saharan Africa and compare them with Europe & Central Asia.
- **Key Metrics:** Various education indicators across regions
- **SQL:** Query to compare educational focus across regions.

## Setup

### Requirements:
- Google BigQuery access to the **World Bank International Education dataset**.
- A basic understanding of SQL and BigQuery.

## License

<a href = 'https://creativecommons.org/licenses/by-nc-sa/4.0/' target = "_blank">
  <img src = "https://i.ibb.co/mvmWGkm/by-nc-sa.png" alt="by-nc-sa" border="0" width="88" height="31">
</a>

This license allows reusers to distribute, remix, adapt, and build upon the material in any medium or format for noncommercial purposes only, and only so long as attribution is given to the creator. If you remix, adapt, or build upon the material, you must license the modified material under identical terms.

<!-- External Links -->

[website_link]: https://datalemur.com

<!-- Profile Links -->

[linkedin]: https://www.linkedin.com/in/natasha-lie-672491180
