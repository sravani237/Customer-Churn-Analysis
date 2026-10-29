
SELECT
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (WHERE churn = 'Yes') AS churned_customers,
    COUNT(*) FILTER (WHERE churn = 'No') AS retained_customers,
    ROUND(
        COUNT(*) FILTER (WHERE churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percentage,
    ROUND(AVG(monthlycharges), 2) AS avg_monthly_charges,
    ROUND(AVG(totalcharges), 2) AS avg_total_charges
FROM customer_churn;