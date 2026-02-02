USE behaviorpulse;

SHOW TABLE STATUS LIKE 'activities';

CREATE OR REPLACE VIEW v_daily_burnout AS
SELECT
    activity_date,
    day_of_week,
    AVG(
        GREATEST(actual_time_hrs - planned_time_hrs, 0)
        + interruption_count * 0.5
        + (5 - energy_level)
    ) AS avg_burnout_score
FROM activities
GROUP BY activity_date, day_of_week;

SELECT * 
FROM v_daily_burnout
ORDER BY activity_date
LIMIT 10;


CREATE OR REPLACE VIEW v_activity_burnout AS
SELECT
    activity_type,
    AVG(
        GREATEST(actual_time_hrs - planned_time_hrs, 0)
        + interruption_count * 0.5
        + (5 - energy_level)
    ) AS avg_burnout_score
FROM activities
GROUP BY activity_type;

SELECT * FROM v_activity_burnout;


CREATE OR REPLACE VIEW v_weekly_summary AS
SELECT
    day_of_week,
    COUNT(*) AS total_activities,
    AVG(actual_time_hrs) AS avg_actual_time,
    AVG(planned_time_hrs) AS avg_planned_time,
    AVG(interruption_count) AS avg_interruptions,
    AVG(energy_level) AS avg_energy
FROM activities
GROUP BY day_of_week;

SELECT * FROM v_weekly_summary;


CREATE OR REPLACE VIEW v_daily_burnout AS
SELECT
    activity_date,
    day_of_week,
    CASE day_of_week
        WHEN 'mon' THEN 1
        WHEN 'tue' THEN 2
        WHEN 'wed' THEN 3
        WHEN 'thu' THEN 4
        WHEN 'fri' THEN 5
        WHEN 'sat' THEN 6
        WHEN 'sun' THEN 7
    END AS day_order,
    AVG(
        GREATEST(actual_time_hrs - planned_time_hrs, 0)
        + interruption_count * 0.5
        + (5 - energy_level)
    ) AS avg_burnout_score
FROM activities
GROUP BY activity_date, day_of_week;
