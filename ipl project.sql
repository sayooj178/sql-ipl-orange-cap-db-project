CREATE DATABASE orange_cap_db;
USE orange_cap_db;
CREATE TABLE orange_cap_stats (
    season INT PRIMARY KEY,
    orange_cap_player VARCHAR(50),
    matches INT,
    innings INT,
    runs INT,
    average FLOAT,
    strike_rate FLOAT
);
INSERT INTO orange_cap_stats VALUES 
(2008, 'Shaun Marsh', 11, 11, 616, 68.44, 139.68),
(2009, 'Matthew Hayden', 12, 12, 572, 52.00, 144.81),
(2010, 'Sachin Tendulkar', 15, 15, 618, 47.53, 132.61),
(2011, 'Chris Gayle', 12, 12, 608, 67.55, 183.13),
(2012, 'Chris Gayle', 15, 14, 733, 61.08, 160.74);
SELECT * FROM orange_cap_stats;
SELECT orange_cap_player, runs 
FROM orange_cap_stats 
WHERE runs > 600;
SELECT orange_cap_player, strike_rate 
FROM orange_cap_stats 
ORDER BY strike_rate DESC;
SELECT orange_cap_player, (runs / matches) AS runs_per_match 
FROM orange_cap_stats;
SELECT orange_cap_player, COUNT(*) AS times_won 
FROM orange_cap_stats 
GROUP BY orange_cap_player;
SELECT orange_cap_player, average 
FROM orange_cap_stats 
ORDER BY average DESC 
LIMIT 1;



CREATE TABLE player_country (
    player_name VARCHAR(50) PRIMARY KEY,
    country VARCHAR(50)
);

INSERT INTO player_country VALUES
('Shaun Marsh', 'Australia'),
('Matthew Hayden', 'Australia'),
('Sachin Tendulkar', 'India'),
('Chris Gayle', 'West Indies');

SELECT o.season, o.orange_cap_player, o.runs, p.country
FROM orange_cap_stats o
 INNER JOIN player_country p
ON o.orange_cap_player = p.player_name;
use orange_cap_db;
INSERT INTO orange_cap_stats VALUES 
(2013, 'Michael Hussey', 17, 17, 733, 52.35, 129.50),
(2014, 'Robin Uthappa', 16, 16, 660, 44.00, 137.78),
(2015, 'David Warner', 14, 14, 562, 43.23, 156.54),
(2016, 'Virat Kohli', 16, 16, 973, 81.08, 152.03),
(2017, 'David Warner', 14, 14, 641, 58.27, 141.81),
(2018, 'Kane Williamson', 17, 17, 735, 52.50, 142.44),
(2019, 'David Warner', 12, 12, 692, 69.20, 143.86),
(2020, 'KL Rahul', 14, 14, 670, 55.83, 129.34),
(2021, 'Ruturaj Gaikwad', 16, 16, 635, 45.35, 136.26),
(2022, 'Jos Buttler', 17, 17, 863, 57.53, 149.05),
(2023, 'Shubman Gill', 17, 17, 890, 59.33, 157.80),
(2024, 'Sai Sudharsan', 15, 15, 759, 54.21, 156.17);

INSERT INTO player_country VALUES

('Michael Hussey', 'Australia'),
('Robin Uthappa', 'India'),
('David Warner', 'Australia'),
('Virat Kohli', 'India'),
('Kane Williamson', 'New Zealand'),
('KL Rahul', 'India'),
('Ruturaj Gaikwad', 'India'),
('Jos Buttler', 'England'),
('Shubman Gill', 'India'),
('Sai Sudharsan', 'India');





