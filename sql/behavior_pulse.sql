DROP DATABASE IF EXISTS behaviorpulse;
CREATE DATABASE behaviorpulse;
USE behaviorpulse;
SELECT DATABASE();

CREATE TABLE users (
    user_id INT,
    name VARCHAR(100)
);

CREATE TABLE activities (
    record_id INT,
    user_id INT,
    activity_date VARCHAR(20),   -- DATE later, STRING now
    day_of_week VARCHAR(15),
    activity_type VARCHAR(50),

    planned_time_hrs FLOAT,
    actual_time_hrs FLOAT,

    completion_status VARCHAR(20),
    interruption_count INT,

    energy_level INT,
    mood VARCHAR(20),

    invalid_time_flag INT,
    energy_missing_flag INT,
    duplicate_flag INT,

    efficiency FLOAT,
    burnout_risk INT,
    high_interruption_flag INT
);

SHOW TABLES;
DESCRIBE activities;


USE behaviorpulse;
SELECT DATABASE();
SHOW TABLES;
SELECT COUNT(*) FROM activities;