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
- **ID:** Unique identifier for each employee
- **Full Name:** Employee's full name
- **Gender:** Gender of the employee
- **Date of Birth:** Employee's birth date
- **Test Date:** Date when the stress test was conducted
- **Test Time:** Time when the stress test was conducted
- **Age:** Employee’s age
- **Age Group:** Categorized age group of the employee
- **Stress Source:** Main source of stress (e.g., work, financial issues)
- **Physical Symptoms:** Types of physical symptoms reported (e.g., fatigue, back pain)
- **Emotional Symptoms:** Types of emotional symptoms reported (e.g., anxiety, depression)
- **Coping Mechanism:** Methods used to cope with stress (e.g., exercise, meditation)
- **Stress Duration (in days):** Duration of stress experienced, measured in days
- **Stress Duration (in months):** Duration of stress experienced, measured in months
- **Severity:** Severity of stress (e.g., mild, moderate, severe)
- **Sleep Quality:** Quality of sleep reported (e.g., poor, fair, good)
- **Mood:** Mood reported by the employee
- **Heart Rate:** Average heart rate of the employee (bpm)
- **Cortisol Level:** Cortisol level measurement
- **Stress Level Score:** Calculated score representing the level of stress

## Methodology
### Data Cleaning

The data cleaning process involved several key steps using SQL:

**Column Renaming:**
- Renamed columns for clarity and consistency.

**Data Standardization:**
- Updated gender values: 'M' to 'Male' and 'F' to 'Female'.
- Corrected data entries in the 'Physical Symptoms' column: 'stomach age' changed to 'stomach ache'.

**Removing Duplicates:**
- Eliminated duplicate records to ensure data accuracy.

**Handling Missing Data:**
- Updated missing values in the 'Stress Level Score' with the average to retain employee data.
- Removed records with null values after updating.

**Data Concatenation:**
- Created a 'Full Name' column by concatenating 'Last Name' and 'First Name' using a SQL view to ensure data permanence

**Adding New Columns:**
- Added columns for 'Age', 'Age Group', and 'Stress Duration (in months)' by modifying the SQL view. 

### Exploratory Data Analysis (EDA)

After cleaning the data in SQL, it was exported to Excel for analysis and dashboard creation. In Excel, the following steps were carried out:

**Descriptive Statistics:** Calculated basic statistics and analyzed distributions.

**Visualization:** Created charts and graphs to visualize trends and patterns.

**Dashboard Creation:** Developed interactive dashboards to present key findings effectively.

### Statistical Analysis

For statistical analysis, the following methods were used:

**Descriptive Statistics:** Generated summary statistics for various variables, including stress severity and heart rate, to quantify key metrics.

**Comparative Analysis:** Compared stress severity across different stress durations (0-3 months vs. 4-6 months) to assess how stress levels change over time.

**Trend Analysis:** Analyzed cortisol levels by time of day to identify fluctuations and deviations from typical patterns.

**Categorical Analysis:** Examined emotional and physical symptoms in relation to heart rate to understand the impact of different symptoms on physiological responses.

### Tools Used

**Microsoft SQL Server (SMSS):** Used for data cleaning and preprocessing. [Download Server Here](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) and [SMSS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16&redirectedfrom=MSDN)

**Microsoft Excel:** Used for analysis, visualization, and creating interactive dashboards. [Download here](https://www.microsoft.com/en-us/microsoft-365/excel)

## Analysis
### Analysis Questions

- How is stress severity distributed among the employees?
- What are the monthly patterns of heart rates among the employees?
- How do emotional and physical symptoms correlate with heart rate?
- What are the patterns of cortisol levels throughout the day?
- How does the duration of stress influence its severity?
- What are the characteristics of employees with both elevated heart rates and poor sleep quality?

### Approach
Each question was addressed using descriptive statistics, visualizations, and statistical tests to determine significance and identify key trends.

## Dashboard Overview

![](https://github.com/Adeyemi012/Employee-Stress-and-Health-Analysis/blob/main/Stress%20Management%20Dashboard.png)

## Insights
**Severity Distribution:** In the analysis of stress severity among 5,000 employees, 39.58% are experiencing mild stress, 40.06% are dealing with moderate stress, and 20.36% are facing severe stress. This distribution highlights that while most employees are managing mild to moderate levels of stress, a significant portion is under severe stress, which may require targeted interventions.

**Monthly Heart Rate Patterns:** The line chart reveals that the average heart rate across the months varies slightly, with March recording the lowest at 91.8 bpm, while June shows the highest at 92.9 bpm. This indicates a minor fluctuation in heart rates over the observed period.

**Stress Symptoms Analysis (Emotional Symptoms):** The analysis of emotional symptoms reveals that anxiety and depression are the most prevalent among employees, with 1,286 and 1,216 individuals affected, respectively. These conditions are associated with an average heart rate of 92 bpm for anxiety and 93 bpm for depression. Mood swings and irritability are also common, affecting 728 and 971 employees, both with an average heart rate of 93 bpm. Notably, those experiencing loneliness have the lowest average heart rate at 86 bpm, while anger is linked to the highest average heart rate at 98 bpm, despite affecting a smaller number of 33 employees. This distribution suggests that while anxiety and depression are widespread, anger may have a more immediate physiological impact on heart rate.

**Stress Symptoms Analysis (Physical Symptoms):** Among the physical symptoms analyzed, fatigue is the most common, affecting 1,254 employees with an average heart rate of 92 bpm. Back pain also affects a significant number of employees (1,172) with a similar average heart rate of 92 bpm. Headache and insomnia follow, impacting 809 and 947 employees, respectively, both associated with a higher average heart rate of 93 bpm. Arthritis and arthritis pain are less common, with 14 and 28 affected individuals and lower average heart rates of 83 and 86 bpm. Notably, stomach ache is linked to the highest average heart rate of 100 bpm, though it affects only 21 employees. This suggests that while fatigue and back pain are prevalent, conditions like stomach ache may have a more intense impact on heart rate.

**Cortisol Levels by Time of Day:** Cortisol levels generally decrease by 8 AM, rise to a peak around 12 PM, drop again by 2 PM, and then rise slightly from 3 PM to 7 PM. This pattern shows a midday peak with fluctuations throughout the day, which may differ from the typical cortisol rhythm that peaks in the early morning.

**Severity by Stress Duration:** For the 0-3 month stress duration category, mild stress is the most common, affecting 1,020 employees, followed by moderate stress with 987 employees, and severe stress with 519 employees. In the 4-6 month duration category, moderate stress is the predominant condition, impacting 1,016 employees, while mild stress affects 959 employees, and severe stress is the least common with 499 employees. This suggests that stress severity varies with duration, with moderate stress becoming more prevalent as the duration increases, while mild stress is more common in the shorter duration period.

**Elevated Risk Profiles:** Analysis identified a subset of employees experiencing both elevated heart rates and poor sleep quality. Among these individuals, a significant portion faces financial issues, followed by work-related stress and family issues. This highlights a potential link between high heart rates, poor sleep, and specific stress sources, indicating a need for targeted wellness interventions and support for affected employees.

## Recommendations 
**Severity Distribution:** Focus on intensive support for employees with severe stress, offer coping workshops for those with moderate stress, and implement preventive measures to manage mild stress effectively.

**Monthly Heart Rate Patterns:** Review and analyze factors that could cause monthly changes in heart rate, such as workload or seasonal influences, and adjust health programs to manage these variations better.

**Stress Symptoms Analysis:** Increase support for anxiety and depression with more counseling options. Address anger and loneliness with targeted programs. For Physical Symptoms focus on reducing fatigue and back pain through wellness programs and better work setups, and provide extra support for conditions like stomach aches that significantly impact heart rate. 

**Cortisol Levels by Time of Day:** Investigate potential factors causing the midday peak in cortisol levels and the fluctuations throughout the day. Consider adjusting work schedules or wellness programs to align with natural cortisol rhythms and address any underlying issues contributing to these variations.

**Severity by Stress Duration:** Focus on supporting employees with moderate stress, particularly those with 4-6 months of stress. Address mild stress early to prevent escalation. Adjust support based on how long employees have been stressed.

**Elevated Risk Profiles:** Focus wellness programs on employees with high heart rates and poor sleep, particularly those facing financial, work, and family issues. Ensure support is inclusive and addresses various stress sources to benefit all affected employees.

## Conclusion
This project explored employee well-being by examining various symptoms and their impacts. The findings revealed that while mild and moderate stress are common, a significant portion of employees experiences severe stress. Heart rate patterns showed some monthly variations, with notable peaks and troughs, while cortisol levels displayed a typical mid-day rise. Emotional and physical symptoms were linked to varying heart rates, and stress duration influenced severity. The analysis also identified a subset of employees with elevated heart rates and poor sleep, highlighting a need for targeted wellness interventions. Overall, these insights suggest that tailored health programs addressing both stress and its physical impacts could significantly benefit employee well-being. 

## Additional Resources
- You can find the SQL Queries used for data cleaning [here](https://github.com/Adeyemi012/Employee-Stress-and-Health-Analysis/blob/main/SQL%20Cleaning%20Scripts/TDI%20SQL%20Cleaning.sql). Download the tool above in order to explore query.

- [Link to Cleaned Dataset](https://github.com/Adeyemi012/Employee-Stress-and-Health-Analysis/blob/main/Employee%20Stress%20and%20Health%20Dataset.xlsx)








