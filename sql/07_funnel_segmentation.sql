-- Objective: Compare step-by-step conversion rates across countries to identify regional differences in user behavior and monetization performance

-- Query: Funnel Conversion Analysis by Country
WITH funnel AS (
    SELECT
        du.country,
        COUNT(DISTINCT CASE WHEN fe.event_name = 'landing_page' THEN fe.user_id END) AS landing_users,
        COUNT(DISTINCT CASE WHEN fe.event_name = 'signup' THEN fe.user_id END) AS signup_users,
        COUNT(DISTINCT CASE WHEN fe.event_name = 'verify_email' THEN fe.user_id END) AS verify_users,
        COUNT(DISTINCT CASE WHEN fe.event_name = 'start_trial' THEN fe.user_id END) AS trial_users,
        COUNT(DISTINCT CASE WHEN fe.event_name = 'subscribe' THEN fe.user_id END) AS subscribed_users
    FROM fact_events fe
    JOIN dim_users du ON fe.user_id = du.user_id
    GROUP BY du.country
)

SELECT
    country,
    landing_users,
    signup_users,
    ROUND(signup_users * 100.0 / NULLIF(landing_users, 0), 2) AS landing_to_signup_pct,
    verify_users,
    ROUND(verify_users * 100.0 / NULLIF(signup_users, 0), 2) AS signup_to_verify_pct,
    trial_users,
    subscribed_users,
    ROUND(subscribed_users * 100.0 / NULLIF(trial_users, 0), 2) AS trial_to_subscribe_pct
FROM funnel
ORDER BY trial_to_subscribe_pct ASC;