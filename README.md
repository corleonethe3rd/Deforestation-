# Deforestation Analysis Project

## Introduction

In this documentation, we conduct a thorough analysis of deforestation data using the provided datasets (`Forest_area`, `land_area`, `regions`). The goal is to answer critical questions related to deforestation trends and visualize key insights. The analysis includes calculating total forest area, average area, and comparing results based on income groups and regions. Visualizations are presented through charts and tables to facilitate a clear understanding of the data.

## Project Objectives and Goals

1. **Answer Key Questions:** Address critical questions related to deforestation trends.
2. **Data Cleaning and Analysis:** Clean and preprocess the data, calculate key metrics, and extract meaningful insights.
3. **Data Visualization:** Create clear visualizations to effectively communicate insights.

## Data Source

The dataset used for this project consists of three tables:

- `Forest_area` (country_code, country_name, year, forest_area_sqkm)
- `land_area` (country_code, country_name, year, total_area_sq_mi)
- `regions` (country_name, country_code, region, income_group)

## Tool Used

SQL

## Skills/Concepts Demonstrated

- SQL Queries
- Data Cleaning
- Data Analysis
- Data Visualization

## Sql Skills Implemented
- Creating Database
- Retreiving Database
- Aggregate Functions
- Group By Function
- Where Function
- Window Function
- CTE
- Joins

### Core Functional Modules

1. **Data Cleaning and Analysis:**
   - Clean and preprocess the deforestation data.
   - Calculate key metrics: total forest area, average area, etc.

2. **Data Visualization:**
   - Create charts and tables to present insights in a visually appealing and understandable format.

### Business Questions

1. **Total Number of Countries Involved in Deforestation**
2. **Income Groups of Countries with Total Area Ranging from 75,000 to 150,000 Square Meters**
3. **Average Area in Square Miles for Countries in the 'Upper Middle Income Region'**
4. **Total Forest Area in Square Km for Countries in the 'High Income' Group**
5. **Countries with the Highest Total Forest Areas in Each Region**

#### Data Cleaning and Analysis

- Clean and preprocess the deforestation data.
- Calculate key metrics: total forest area, average area, etc.

#### Data Visualization

1. **Total Number of Countries Involved in Deforestation**
   - SQL Query: Calculate the total number of countries involved in deforestation.
     ![Screenshot 2023-11-22 153010](https://github.com/corleonethe3rd/Deforestation-/assets/73728752/5ece65a8-5ccb-48ac-97f7-966c48ea2eb3)

2. **Income Groups of Countries with Total Area Ranging from 75,000 to 150,000 Square Meters**
   - SQL Query: Identify income groups of countries within the specified total area range.
    ![Screenshot 2023-11-22 153043](https://github.com/corleonethe3rd/Deforestation-/assets/73728752/4c7211fb-32e0-44d1-9de0-528e11cf7d77) 

3. **Average Area in Square Miles for Countries in the 'Upper Middle Income Region'**
   - SQL Query: Calculate the average area for countries in the 'upper middle income region' and compare with other income categories.
     ![Screenshot 2023-11-22 153100](https://github.com/corleonethe3rd/Deforestation-/assets/73728752/a8c4cbee-13b5-41d1-8918-299352fa827b)

4. **Total Forest Area in Square Km for Countries in the 'High Income' Group**
   - SQL Query: Determine the total forest area for countries in the 'high income' group and compare with other income categories.
     ![Screenshot 2023-11-22 153114](https://github.com/corleonethe3rd/Deforestation-/assets/73728752/e6f9254b-2c90-4200-8b53-4ee961708ef0)

5. **Countries with the Highest Total Forest Areas in Each Region**
   - SQL Query: Identify countries with the highest total forest areas in each region.
     ![Screenshot 2023-11-22 153401](https://github.com/corleonethe3rd/Deforestation-/assets/73728752/2a8d8f91-522e-4392-949b-38819ca32ccb)

## Conclusion

This project provides insights into deforestation trends by answering critical questions and visualizing key metrics. The analysis contributes to a better understanding of the extent of deforestation across different criteria. The visualizations aid in making informed decisions related to environmental conservation and resource management. Further enhancements and explorations can be conducted to uncover more insights and refine strategies for sustainable practices.






