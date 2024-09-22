{{ config(materialized='ephemeral') }}

WITH user_engagement AS (
    SELECT
        user_id,
        COUNT(*) AS activity_count,
        AVG(activity_duration) AS avg_activity_duration
    FROM SALES_DB.RAW.USER_ACTIVITY
    GROUP BY user_id
)

SELECT
    u.id AS user_id,
    u.name,
    COALESCE(ue.activity_count, 0) AS activity_count,
    COALESCE(ue.avg_activity_duration, 0) AS avg_activity_duration
FROM SALES_DB.RAW.USERS u
LEFT JOIN user_engagement ue ON u.id = ue.user_id

