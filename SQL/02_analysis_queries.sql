-- 1. Total Medicare payments by provider type
SELECT
    provider_type,
    SUM(total_medicare_payment) AS total_medicare_spend
FROM medicare_provider_clean
GROUP BY provider_type
ORDER BY total_medicare_spend DESC;


-- 2. Average payment per service by provider type
SELECT
    provider_type,
    SUM(total_medicare_payment) / NULLIF(SUM(total_services), 0) 
        AS avg_payment_per_service
FROM medicare_provider_clean
GROUP BY provider_type
ORDER BY avg_payment_per_service DESC;


-- 3. High-volume vs low-volume providers
SELECT
    provider_type,
    SUM(total_services) AS total_services,
    SUM(total_medicare_payment) / NULLIF(SUM(total_services), 0)
        AS avg_payment_per_service
FROM medicare_provider_clean
GROUP BY provider_type
ORDER BY total_services DESC;


-- 4. Geographic variation in Medicare payments
SELECT
    provider_state,
    SUM(total_medicare_payment) AS total_state_payment
FROM medicare_provider_clean
GROUP BY provider_state
ORDER BY total_state_payment DESC;


-- 5. Providers with unusually high payments per service
SELECT
    npi,
    provider_type,
    total_medicare_payment / NULLIF(total_services, 0)
        AS payment_per_service
FROM medicare_provider_clean
WHERE total_services > 100
ORDER BY payment_per_service DESC
LIMIT 25;
