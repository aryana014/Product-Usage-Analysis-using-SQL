-- Count how many users signed up
SELECT COUNT(*) AS total_users
FROM users;
-- Count users who performed at least one event
SELECT COUNT(DISTINCT user_id) AS active_users
FROM events;
-- Count how many times each feature was used
SELECT event_name, COUNT(*) AS usage_count
FROM events
GROUP BY event_name;
-- Count how many unique users used each feature
SELECT event_name, COUNT(DISTINCT user_id) AS users_count
FROM events
GROUP BY event_name;
-- Find users who logged in but never viewed a product
SELECT DISTINCT user_id
FROM events
WHERE event_name = 'login'
AND user_id NOT IN (
    -- Users who did view a product
    SELECT user_id
    FROM events
    WHERE event_name = 'view_product'
);
-- Find users who viewed products but did not add to cart
SELECT DISTINCT user_id
FROM events
WHERE event_name = 'view_product'
AND user_id NOT IN (
    -- Users who added items to cart
    SELECT user_id
    FROM events
    WHERE event_name = 'add_to_cart'
);
-- Find users who added items to cart but never purchased
SELECT DISTINCT user_id
FROM events
WHERE event_name = 'add_to_cart'
AND user_id NOT IN (
    -- Users who completed a purchase
    SELECT user_id
    FROM events
    WHERE event_name = 'purchase'
);
-- Show how many users reached each funnel step
SELECT
    COUNT(DISTINCT CASE WHEN event_name = 'login' THEN user_id END) AS logins,
    COUNT(DISTINCT CASE WHEN event_name = 'view_product' THEN user_id END) AS views,
    COUNT(DISTINCT CASE WHEN event_name = 'add_to_cart' THEN user_id END) AS carts,
    COUNT(DISTINCT CASE WHEN event_name = 'purchase' THEN user_id END) AS purchases
FROM events;
-- Find users who signed up but never did any event
SELECT u.user_id, u.name
FROM users u
LEFT JOIN events e ON u.user_id = e.user_id
WHERE e.user_id IS NULL;
-- Rank users by total number of events
SELECT user_id, COUNT(*) AS total_events
FROM events
GROUP BY user_id
ORDER BY total_events DESC;
