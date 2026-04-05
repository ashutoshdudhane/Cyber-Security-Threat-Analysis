-- 1) Retrieve threats per system
-- SELECT device_os, COUNT(*) AS total_threats
-- FROM threats 
-- GROUP BY device_os;

-- 2) Find top 5 attack types
-- SELECT attack_type, Count(*) AS times_occured
-- FROM threats
-- GROUP BY attack_type 
-- ORDER BY times_occured desc
-- LIMIT 5;

-- 3) Calculate monthly threat trends
-- SELECT MONTH(timestamp) AS month, COUNT(*) AS total
-- FROM threats
-- GROUP BY month
-- ORDER BY total DESC;

-- Identify frequent attackers
-- SELECT source_ip AS attacker, COUNT(*) AS Frequency
-- FROM threats 
-- GROUP BY source_ip
-- ORDER BY Frequency DESC ;

-- Find average attack frequency
-- SELECT attack_type,COUNT(*) / (SELECT COUNT(DISTINCT DATE(timestamp ))FROM threats) AS avg_attack_per_day
-- FROM threats 
-- GROUP BY attack_type
-- ORDER BY avg_attack_per_day DESC ;

-- Determine peak attack time
-- SELECT HOUR(timestamp) AS hour, COUNT(*) as attacks
-- FROM threats 
-- GROUP BY hour
-- ORDER BY attacks DESC;

-- Rank systems by risk
-- select device_os, COUNT(*) AS attacks
-- FROM threats
-- GROUP BY device_os
-- ORDER BY attacks DESC;