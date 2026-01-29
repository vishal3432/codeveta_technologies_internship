# SQL QUERIES USED (Codveda Internship)

## 🔹 1. Dataset Overview
SELECT COUNT(*) AS Total_Records FROM data_table;

## 🔹 2. Average Value / KPI
SELECT 
    AVG(numeric_column) AS Avg_Value,
    MAX(numeric_column) AS Max_Value,
    MIN(numeric_column) AS Min_Value
FROM data_table;

## 🔹 3. Category-wise Analysis
SELECT category_column,
       COUNT(*) AS Count,
       AVG(numeric_column) AS Avg_Value
FROM data_table
GROUP BY category_column
ORDER BY Count DESC;

## 🔹 4. Trend Over Time
SELECT DATE(date_column) AS Date,
       SUM(numeric_column) AS Total_Value
FROM data_table
GROUP BY Date
ORDER BY Date;

## 🔹 5. Correlation Support Query
SELECT column1, column2
FROM data_table
WHERE column1 IS NOT NULL AND column2 IS NOT NULL;

## 🔹 6. Sentiment Count
SELECT sentiment,
       COUNT(*) AS Sentiment_Count
FROM data_table
GROUP BY sentiment;

## 🔹 7. Data Cleaning Query
UPDATE data_table
SET category_column = 'Standard_Value'
WHERE category_column IN ('value1','value2');
------------------------------------------------------------------------------------------------------------------

#  DAX CALCULATIONS USED (Power BI)
##🔹 Total Records
Total Records = COUNTROWS(data_table)

## 🔹 Average Metric
Average Value = AVERAGE(data_table[numeric_column])

## 🔹 Category Contribution %
Category % =
DIVIDE(
    SUM(data_table[numeric_column]),
    CALCULATE(SUM(data_table[numeric_column]), ALL(data_table))
)

## 🔹 Trend Measure
Total by Date = SUM(data_table[numeric_column])


(Used with Date in Axis)

## 🔹 Positive Sentiment %
Positive % =
DIVIDE(
    CALCULATE(COUNTROWS(data_table), data_table[sentiment] = "Positive"),
    COUNTROWS(data_table)
)

## 🔹 Model Accuracy Display (Static KPI)
Model Accuracy = 0.80
