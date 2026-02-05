-- checking date format for all the tables
SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dailyActivity' 
  AND column_name = 'ActivityDate';

-- finding non_standard date format
SELECT 
  ActivityDate, 
  FORMAT_DATE('%E4Y-%m-%d', ActivityDate) AS formatted_check
FROM `bellabeat-project-480011.bellabeat.dailyActivity`
LIMIT 10;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'heartrate_seconds' 
  AND column_name = 'Time';

-- since heartrate_seconds table coloumn is string type:
CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_heartrate_seconds_cleaned` AS
SELECT
  Id,
  -- Converting the string '4/1/2016 7:54:00 AM' into a real Timestamp
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', Time) AS time_rec,
  Value AS heart_rate
FROM `bellabeat-project-480011.bellabeat.heartrate_seconds`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'hourly_calories' 
  AND column_name = 'ActivityHour';

CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_hourly_calories_cleaned` AS
SELECT
  Id,
  -- Using ActivityHour for the timestamp
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', ActivityHour) AS time_rec,
  -- Changing 'Value' to 'Calories'
  Calories
FROM `bellabeat-project-480011.bellabeat.hourly_calories`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'hourly_intensities' 
  AND column_name = 'ActivityHour';


CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_hourly_intensities_cleaned` AS
SELECT
  Id,
  -- Using ActivityHour for the timestamp
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', ActivityHour) AS time_rec,
  TotalIntensity,
  AverageIntensity
FROM `bellabeat-project-480011.bellabeat.hourly_intensities`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'hourly_steps' 
  AND column_name = 'ActivityHour';
 
CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_hourly_steps_cleaned` AS
SELECT
  Id,
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', ActivityHour) AS time_rec,
  StepTotal
FROM `bellabeat-project-480011.bellabeat.hourly_steps`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'minute_MET' 
  AND column_name = 'ActivityMinute';

CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_minute_MET_cleaned` AS
SELECT
  Id,
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', ActivityMinute) AS time_rec,
  METs
FROM `bellabeat-project-480011.bellabeat.minute_MET`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'minute_calories' 
  AND column_name = 'ActivityMinute';

CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_minute_calories_cleaned` AS
SELECT
  Id,
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', ActivityMinute) AS time_rec,
  Calories
FROM `bellabeat-project-480011.bellabeat.minute_calories`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'minute_intensities' 
  AND column_name = 'ActivityMinute';

CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_minute_intensities_cleaned` AS
SELECT
  Id,
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', ActivityMinute) AS time_rec,
  Intensity
FROM `bellabeat-project-480011.bellabeat.minute_intensities`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'minute_sleep' 
  AND column_name = 'date';

CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_minute_sleep_cleaned` AS
SELECT
  Id,
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', date) AS time_rec,
  value,
  logId
FROM `bellabeat-project-480011.bellabeat.minute_sleep`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'minute_steps' 
  AND column_name = 'ActivityMinute';

CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_minute_step_cleaned` AS
SELECT
  Id,
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', ActivityMinute) AS time_rec,
  Steps
FROM `bellabeat-project-480011.bellabeat.minute_steps`;

SELECT 
  column_name, 
  data_type 
FROM `bellabeat-project-480011.bellabeat.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'weight_loginfo' 
  AND column_name = 'Date';

CREATE OR REPLACE VIEW `bellabeat-project-480011.bellabeat.v_weight_loginfo_cleaned` AS
SELECT
  Id,
  PARSE_TIMESTAMP('%m/%e/%Y %I:%M:%S %p', Date) AS time_rec,
  weightKg,
  weightPounds,
  BMI,
  fat,
  IsManualReport,
  LogId
FROM `bellabeat-project-480011.bellabeat.weight_loginfo`;

-- all the tables exept dailyActivity were string. virtual tables created for the rest.