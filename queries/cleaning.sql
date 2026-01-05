SELECT 
  COUNT(*) AS total,
  COUNTIF(daily_activity.TotalSteps IS NULL) AS missing_steps
FROM `bellabeat-project-480011`.`bellabeat`.`daily_activity` AS daily_activity;

SELECT
  COUNT(*) AS total,
  COUNTIF(TotalDistance IS NULL) AS null_distance,
  COUNTIF(TrackerDistance IS NULL) AS null_tracker,
  COUNTIF(VeryActiveDistance IS NULL) AS null_ActiveDistance,
  COUNTIF(ModeratelyActiveDistance IS NULL) AS null_moderately,
  COUNTIF(LightActiveDistance IS NULL) AS null_light,
  COUNTIF(VeryActiveMinutes IS NULL) AS null_Veryminutes,
  COUNTIF(FairlyActiveMinutes IS NULL) AS null_fairlyminutes,
  COUNTIF(LightlyActiveMinutes IS NULL) AS null_lightminutes,
  COUNTIF(SedentaryMinutes IS NULL) AS null_sminutes,
  COUNTIF(Calories IS NULL) AS null_calories
FROM `bellabeat-project-480011`.`bellabeat`.`daily_activity`;

SELECT 
  Id, 
  ActivityDate,
  COUNT(*) AS count
FROM `bellabeat-project-480011.bellabeat.daily_activity`
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;


SELECT Id,TotalSteps,
 COUNT(*) AS Duplicates,
FROM `bellabeat-project-480011.bellabeat.daily_activity`
GROUP BY Id, TotalSteps
HAVING COUNT(*) > 1;

ALTER TABLE `bellabeat-project-480011.bellabeat.daily_activity`
DROP COLUMN IF EXISTS LoggedActivitiesDistance,
DROP COLUMN IF EXISTS SedentaryActiveDistance;
