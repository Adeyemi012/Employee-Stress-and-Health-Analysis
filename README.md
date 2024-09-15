# Employee Stress and Health Analysis

## Abstract

This project analyzes stress levels, heart rates, cortisol patterns, and elevated risk profiles among 5,000 employees to identify potential health risks and areas for intervention. The analysis covers the distribution of stress severity, heart rate patterns across months, emotional and physical symptoms, cortisol levels throughout the day, and the relationship between stress duration and severity. The findings reveal key stress factors, elevated risk profiles, and their impact on employee health, leading to recommendations for targeted wellness programs.

## Introduction
### Context

In today’s fast-paced work environment, employee well-being is a crucial factor in maintaining productivity and overall workplace morale. With increasing workloads and external pressures, understanding the health implications, particularly related to stress, has become more important than ever. This project seeks to shed light on how stress, heart rates, and cortisol levels are affecting employees, providing insights that can help improve workplace health initiatives.

### Problem Statement

Mindwell Solutions is addressing the challenge of understanding and managing employee stress within organizations. The company aims to analyze key factors contributing to stress, including its sources, symptoms, and coping mechanisms, to help organizations implement targeted interventions that reduce stress levels and improve employee well-being.

### Objectives

The primary objectives of this analysis are:
1. To determine the distribution of stress severity among employees.
2. To analyze heart rate patterns across different months.
3. To examine the prevalence and impact of emotional and physical symptoms on employees.
4. To explore the daily fluctuations of cortisol levels.
5. To assess the relationship between stress duration and severity.
6. To identify employees with elevated heart rates and poor sleep quality and the associated risk factors.

## Data Description
### Data Sources

The dataset used in this analysis was obtained from an internal employee health survey conducted within XYZ Corporation. The original data included various health and wellness metrics collected from employees. I processed and cleaned the data to focus on a sample of 5,000 employees, ensuring accuracy and consistency for analysis.

### Data Collection

Data was collected through a combination of self-reported surveys and health monitoring devices. Employees provided information on their stress levels, symptoms, and general well-being through a structured questionnaire. Additionally, wearable devices were used to monitor heart rate and cortisol levels at various times throughout the day.

### Data Characteristics

The dataset includes the following variables:
- ID: Unique identifier for each employee
- Full Name: Employee's full name
- Gender: Gender of the employee
- Date of Birth: Employee's birth date
- Test Date: Date when the stress test was conducted
- Test Time: Time when the stress test was conducted
- Age: Employee’s age
- Age Group: Categorized age group of the employee
- Stress Source: Main source of stress (e.g., work, financial issues)
- Physical Symptoms: Types of physical symptoms reported (e.g., fatigue, back pain)
- Emotional Symptoms: Types of emotional symptoms reported (e.g., anxiety, depression)
- Coping Mechanism: Methods used to cope with stress (e.g., exercise, meditation)
- Stress Duration (in days): Duration of stress experienced, measured in days
- Stress Duration (in months): Duration of stress experienced, measured in months
- Severity: Severity of stress (e.g., mild, moderate, severe)
- Sleep Quality: Quality of sleep reported (e.g., poor, fair, good)
- Mood: Mood reported by the employee
- Heart Rate: Average heart rate of the employee (bpm)
- Cortisol Level: Cortisol level measurement
- Stress Level Score: Calculated score representing the level of stress

## Methodology
### Data Cleaning

The data cleaning process involved several key steps using SQL:

#### Column Renaming:
- Renamed columns for clarity and consistency.

#### Data Standardization:
- Updated gender values: 'M' to 'Male' and 'F' to 'Female'.
- Corrected data entries in the 'Physical Symptoms' column: 'stomach age' changed to 'stomach ache'.

#### Removing Duplicates:
- Eliminated duplicate records to ensure data accuracy.

#### Handling Missing Data:
- Updated missing values in the 'Stress Level Score' with the average to retain employee data.
- Removed records with null values after updating.

#### Data Concatenation:
- Created a 'Full Name' column by concatenating 'Last Name' and 'First Name' using a SQL view to ensure data permanence

#### Adding New Columns:
- Added columns for 'Age', 'Age Group', and 'Stress Duration (in months)' by modifying the SQL view. 

### Exploratory Data Analysis (EDA)

After cleaning the data in SQL, it was exported to Excel for analysis and dashboard creation. In Excel, the following steps were carried out:

Descriptive Statistics: Calculated basic statistics and analyzed distributions.

Visualization: Created charts and graphs to visualize trends and patterns.

Dashboard Creation: Developed interactive dashboards to present key findings effectively.

### Statistical Analysis

For statistical analysis, the following methods were used:

Descriptive Statistics: Generated summary statistics for various variables, including stress severity and heart rate, to quantify key metrics.

Comparative Analysis: Compared stress severity across different stress durations (0-3 months vs. 4-6 months) to assess how stress levels change over time.

Trend Analysis: Analyzed cortisol levels by time of day to identify fluctuations and deviations from typical patterns.

Categorical Analysis: Examined emotional and physical symptoms in relation to heart rate to understand the impact of different symptoms on physiological responses.

### Tools Used

Microsoft SQL Server (SMSS): Used for data cleaning and preprocessing. [Download Server Here](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) and [SMSS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16&redirectedfrom=MSDN)

Microsoft Excel: Used for analysis, visualization, and creating interactive dashboards. [Download here](https://www.microsoft.com/en-us/microsoft-365/excel)




