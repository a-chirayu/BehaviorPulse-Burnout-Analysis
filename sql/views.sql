USE behaviorpulse;

-- ============================================================
-- 1. DAILY BURNOUT & PERFORMANCE
-- ============================================================

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
    END AS daily_day_order,

    COUNT(*) AS total_activities,

    ROUND(AVG(planned_time_hrs), 2) AS avg_planned_time,
    ROUND(AVG(actual_time_hrs), 2) AS avg_actual_time,
    ROUND(AVG(interruption_count), 2) AS avg_interruptions,
    ROUND(AVG(energy_level), 2) AS avg_energy,

    ROUND(
        AVG(
            CASE
                WHEN completion_status = 'yes' THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS completion_rate,

    ROUND(AVG(burnout_score), 2) AS avg_burnout_score,

    ROUND(
        AVG(burnout_risk) * 100,
        2
    ) AS burnout_risk_rate

FROM activities
GROUP BY
    activity_date,
    day_of_week;


-- ============================================================
-- 2. ACTIVITY TYPE PERFORMANCE
-- ============================================================

CREATE OR REPLACE VIEW v_activity_burnout AS
SELECT
    activity_type,

    COUNT(*) AS total_activities,

    ROUND(AVG(planned_time_hrs), 2) AS avg_planned_time,
    ROUND(AVG(actual_time_hrs), 2) AS avg_actual_time,
    ROUND(AVG(interruption_count), 2) AS avg_interruptions,
    ROUND(AVG(energy_level), 2) AS avg_energy,

    ROUND(
        AVG(
            CASE
                WHEN completion_status = 'yes' THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS completion_rate,

    ROUND(AVG(burnout_score), 2) AS avg_burnout_score,

    ROUND(
        AVG(burnout_risk) * 100,
        2
    ) AS burnout_risk_rate

FROM activities
GROUP BY activity_type;


-- ============================================================
-- 3. WEEKLY SUMMARY
-- ============================================================

CREATE OR REPLACE VIEW v_weekly_summary AS
SELECT
    day_of_week,

    CASE day_of_week
        WHEN 'mon' THEN 1
        WHEN 'tue' THEN 2
        WHEN 'wed' THEN 3
        WHEN 'thu' THEN 4
        WHEN 'fri' THEN 5
        WHEN 'sat' THEN 6
        WHEN 'sun' THEN 7
    END AS weekly_day_order,

    COUNT(*) AS total_activities,

    ROUND(AVG(actual_time_hrs), 2) AS avg_actual_time,
    ROUND(AVG(planned_time_hrs), 2) AS avg_planned_time,
    ROUND(AVG(interruption_count), 2) AS avg_interruptions,
    ROUND(AVG(energy_level), 2) AS avg_energy,

    ROUND(
        AVG(
            CASE
                WHEN completion_status = 'yes' THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS completion_rate,

    ROUND(AVG(burnout_score), 2) AS avg_burnout_score,

    ROUND(
        AVG(burnout_risk) * 100,
        2
    ) AS burnout_risk_rate

FROM activities
GROUP BY day_of_week;


-- ============================================================
-- 4. USER-LEVEL BURNOUT SUMMARY
-- ============================================================

CREATE OR REPLACE VIEW v_user_burnout_summary AS
SELECT
    user_id,

    COUNT(*) AS total_activities,

    ROUND(AVG(planned_time_hrs), 2) AS avg_planned_time,
    ROUND(AVG(actual_time_hrs), 2) AS avg_actual_time,
    ROUND(AVG(interruption_count), 2) AS avg_interruptions,
    ROUND(AVG(energy_level), 2) AS avg_energy,

    ROUND(
        AVG(
            CASE
                WHEN completion_status = 'yes' THEN 1
                ELSE 0
            END
        ) * 100,
        2
    ) AS completion_rate,

    ROUND(AVG(burnout_score), 2) AS avg_burnout_score,

    ROUND(
        AVG(burnout_risk) * 100,
        2
    ) AS burnout_risk_rate

FROM activities
GROUP BY user_id;