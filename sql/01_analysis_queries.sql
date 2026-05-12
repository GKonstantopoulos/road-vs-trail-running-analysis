CREATE DATABASE road_vs_trail_running;

USE road_vs_trail_running;

SELECT
    `Run Type`,
    ROUND(AVG(Distance), 2) AS avg_distance,
    ROUND(AVG(`Pace Min Per KM`), 2) AS avg_pace,
    ROUND(AVG(`Average Heart Rate`), 2) AS avg_hr,
    ROUND(AVG(`Elevation Gain`), 2) AS avg_elevation,
    ROUND(AVG(Efficiency), 2) AS avg_efficiency
FROM runs
GROUP BY `Run Type`;

SELECT
    Year,
    COUNT(*) AS total_runs,
    ROUND(SUM(Distance), 2) AS total_distance,
    ROUND(AVG(Distance), 2) AS avg_distance
FROM runs
GROUP BY Year
ORDER BY Year;

SELECT
    Month,
    COUNT(*) AS total_runs,
    ROUND(SUM(Distance), 2) AS total_distance,
    ROUND(AVG(`Pace Min Per KM`), 2) AS avg_pace
FROM runs
GROUP BY Month
ORDER BY Month;
