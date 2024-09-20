SELECT
    user_id,
    name,
    activity_count,
    avg_activity_duration
FROM {{ ref('user_activity_summary') }}
WHERE activity_count > 1
