-- Null value detecting (in smaller tables)

SELECT 
 COUNT (*) AS total_rows,
 COUNTIF (Value IS NULL) AS null_value,
FROM bellabeat-project-480011.bellabeat.heartrate_seconds;


SELECT 
 COUNT (*) AS total_rows,
 COUNTIF (ActivityHour IS NULL) AS null_activityhour,
 COUNTIF(Calories IS NULL) AS null_calories,
FROM bellabeat-project-480011.bellabeat.hourly_calories;

SELECT 
 COUNT (*) AS total_rows,
 COUNTIF (ActivityHour IS NULL) AS null_activity,
 COUNTIF(TotalIntensity IS NULL) AS null_intensity,
 COUNTIF(AverageIntensity IS NULL) AS null_average,
FROM bellabeat-project-480011.bellabeat.hourly_intensities;


SELECT
 COUNT (*) AS total_rows,
 COUNTIF (ActivityHour IS NULL) AS null_activity,
 COUNTIF (StepTotal IS NULL) AS null_steps,
FROM bellabeat-project-480011.bellabeat.hourly_steps;

SELECT
 COUNT (*) AS total_rows,
 COUNTIF (ActivityMinute IS NULL) AS null_minute,
 COUNTIF(METs IS NULL) AS null_mets,
FROM bellabeat-project-480011.bellabeat.minute_MET;

SELECT
 COUNT (*),
 COUNTIF (ActivityMinute IS NULL) AS null_minute,
 COUNTIF(Calories IS NULL) AS null_calories,
FROM bellabeat-project-480011.bellabeat.minute_calories;

SELECT 
 COUNT(*),
 COUNTIF(ActivityMinute IS NULL) AS null_activity,
 COUNTIF(Intensity IS NULL) AS null_intensity,
FROM bellabeat-project-480011.bellabeat.minute_intensities;

SELECT
 COUNT (*) AS total_rows,
 COUNTIF(date IS NULL) AS null_date,
 COUNTIF(value IS NULL) AS null_value,
 COUNTIF (logId IS NULL) AS null_logid,
FROM bellabeat-project-480011.bellabeat.minute_sleep;

SELECT
 COUNT (*) AS total_rows,
 COUNTIF (ActivityMinute IS NULL) AS null_activity,
 COUNTIF(Steps IS NULL) AS null_steps,
FROM bellabeat-project-480011.bellabeat.minute_steps;

SELECT
 COUNT (*) AS total_rows,
 COUNTIF(Fat IS NULL) AS null_fat,
FROM bellabeat-project-480011.bellabeat.weight_loginfo;
-- there were no null value found in nine tables.
-- only in weight_loginfo 31 rows of 33 rows were null.

-- Counted the number of unique users
SELECT 
 COUNT (DISTINCT Id ) AS unique_ids,
FROM bellabeat-project-480011.bellabeat.daily_activity;

SELECT 
  COUNT(DISTINCT Id) AS times_repeated,
FROM bellabeat-project-480011.bellabeat.heartrate_seconds;

SELECT 
 COUNT (DISTINCT Id ) AS unique_ids,
FROM bellabeat-project-480011.bellabeat.hourly_calories;

SELECT
 COUNT(DISTINCT Id)AS unique_ids,
FROM bellabeat-project-480011.bellabeat.hourly_intensities;

SELECT
 COUNT(DISTINCT Id)AS unique_ids,
FROM bellabeat-project-480011.bellabeat.hourly_steps;

SELECT
 COUNT(DISTINCT Id)AS unique_ids,
FROM bellabeat-project-480011.bellabeat.minute_MET;

SELECT
 COUNT(DISTINCT Id)AS unique_ids,
FROM bellabeat-project-480011.bellabeat.minute_calories;

SELECT
 COUNT(DISTINCT Id)AS unique_ids,
FROM bellabeat-project-480011.bellabeat.minute_intensities;

SELECT 
 COUNT(DISTINCT Id)AS unique,
FROM bellabeat-project-480011.bellabeat.minute_sleep;

SELECT
 COUNT(DISTINCT Id)AS unique,
FROM bellabeat-project-480011.bellabeat.minute_steps;

SELECT
 COUNT(DISTINCT Id)AS unique,
FROM bellabeat-project-480011.bellabeat.weight_loginfo;
-- all of the tables had 34 unique users, exept heartrate_seconds, daily activity, minute-steps, minute-sleep, weight-loginfo.