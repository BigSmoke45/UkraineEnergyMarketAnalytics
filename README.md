# Ukraine Energy Market Analytics

A PostgreSQL analytics project built on real open data from the Ukrainian wholesale energy market participant registry (ECRB). Covers data ingestion, schema design, and analytical SQL queries — from basic aggregations to window functions.

---

## Data Source

"Реєстр учасників оптового енергетичного ринку"
Published by: Energy Community Regulatory Board (ECRB)
Source: data.gov.ua
Records: 2,901 participants as of 16 April 2026

Data was imported into PostgreSQL using: 
\copy participants FROM 'registry.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';', NULL 'null');

---

## Tech Stack

| Area | Technologies |
|------|-------------|
| Database | PostgreSQL 18 |
| GUI Client | DBeaver |
| Data Source | Open Government Data (data.gov.ua) |

---

## Project Structure

```
/
├── README.md
├── schema/
│   └── create_table.sql
├── queries/
│   ├── 01_participants_by_country.sql
│   ├── 02_top_regions_ukraine.sql
│   ├── 03_registrations_by_year.sql
│   ├── 04_active_vs_excluded.sql
│   ├── 05_cumulative_growth_by_month.sql
│   ├── 06_avg_registration_time.sql
│   └── 07_legal_forms_share.sql
└── screenshots/
```

---

## Queries Overview


| # | Area | Technologies | 
|----|------|-------------|
| 01 | participants_by_country.sql | Participant count grouped by country |
| 02 | top_regions_ukraine.sql | Top Ukrainian regions by participant count |
| 03 | registrations_by_year.sql | New registrations per year |
| 04 | active_vs_excluded.sql | Active vs excluded participants |
| 05 | cumulative_growth_by_month.sql | Monthly growth with running total (window function) |
| 06 | avg_registration_time.sql | Average days between form submission and registration |
| 07 | legal_forms_share.sql | Legal form distribution with percentage share |
---

## Key SQL Concepts Demonstrated

GROUP BY with COUNT, ROUND
EXTRACT for date components
FILTER (WHERE ...) for conditional aggregation
SUM() OVER () — window function for running totals
COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () — percentage share via window function
AVG, MIN, MAX on date differences
TO_CHAR for date formatting

---

## Screenshots
<img width="663" height="1030" alt="01 sql result" src="https://github.com/user-attachments/assets/1ca1d57b-8862-4e4f-ad02-378af909ceac" />
<br>
Request number 1
<br>
<br>
<img width="354" height="323" alt="02 sql result" src="https://github.com/user-attachments/assets/01c4b93c-58ce-4335-a1d8-86c9fde5d5de" />
<br>
Request number 2
<br>
<br>
<img width="317" height="169" alt="03 sql result" src="https://github.com/user-attachments/assets/6ad057c6-2720-49eb-a608-066e3197c4d2" />
<br>
Request number 3
<br>
<br>
<img width="356" height="93" alt="04 sql result" src="https://github.com/user-attachments/assets/2c44dae0-1f9b-404c-b769-295d0a3b0757" />
<br>
Request number 4
<br>
<br>
<img width="572" height="849" alt="05 sql result" src="https://github.com/user-attachments/assets/f43a913d-24da-4ce9-9298-7d854fd34b3e" />
<br>
Request number 5
<br>
<br>
<img width="607" height="95" alt="06 sql result" src="https://github.com/user-attachments/assets/56c208e7-b362-4c59-8939-6c55166b6ae7" />
<br>
Request number 6
<br>

<img width="559" height="655" alt="07 sql result" src="https://github.com/user-attachments/assets/1c4f1f74-699e-4dc8-a7ee-1a6d0959fcd4" />
<br>
Request number 7

---

## Author

**BigSmoke45** — Software Engineering (B.Sc.) + Computer Science (M.Sc.)

[![GitHub](https://img.shields.io/badge/GitHub-BigSmoke45-181717?logo=github)](https://github.com/BigSmoke45)
