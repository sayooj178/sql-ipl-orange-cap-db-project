# 🧡 Orange Cap IPL Stats - SQL Project

This project analyzes the **Orange Cap winners** in the Indian Premier League (IPL) from 2008 to 2024. The Orange Cap is awarded to the highest run-scorer each season.

---

## 📂 Database: `orange_cap_db`

### Tables:

#### 1. `orange_cap_stats`
Stores season-wise performance of Orange Cap winners.

| Column           | Type      | Description                       |
|------------------|-----------|-----------------------------------|
| season           | INT       | IPL season (Year)                 |
| orange_cap_player| VARCHAR   | Player name                       |
| matches          | INT       | Matches played                    |
| innings          | INT       | Innings batted                    |
| runs             | INT       | Total runs scored                 |
| average          | FLOAT     | Batting average                   |
| strike_rate      | FLOAT     | Batting strike rate               |

#### 2. `player_country`
Maps player names to their respective countries.

| Column       | Type      | Description       |
|--------------|-----------|-------------------|
| player_name  | VARCHAR   | Player's full name|
| country      | VARCHAR   | Player's country  |

---

## 📊 Sample SQL Queries

- View all Orange Cap data:
  ```sql
  SELECT * FROM orange_cap_stats;
  ```

- Players who scored more than 600 runs in a season:
  ```sql
  SELECT orange_cap_player, runs FROM orange_cap_stats WHERE runs > 600;
  ```

- Sort players by strike rate:
  ```sql
  SELECT orange_cap_player, strike_rate FROM orange_cap_stats ORDER BY strike_rate DESC;
  ```

- Calculate runs per match:
  ```sql
  SELECT orange_cap_player, (runs / matches) AS runs_per_match FROM orange_cap_stats;
  ```

- Number of times each player won the Orange Cap:
  ```sql
  SELECT orange_cap_player, COUNT(*) AS times_won FROM orange_cap_stats GROUP BY orange_cap_player;
  ```

- Top batting average:
  ```sql
  SELECT orange_cap_player, average FROM orange_cap_stats ORDER BY average DESC LIMIT 1;
  ```

- Join player with country info:
  ```sql
  SELECT o.season, o.orange_cap_player, o.runs, p.country
  FROM orange_cap_stats o
  INNER JOIN player_country p ON o.orange_cap_player = p.player_name;
  ```

---

## 🚀 How to Run

1. Open any SQL client (like MySQL Workbench, phpMyAdmin, DBeaver).
2. Execute the contents of `orange_cap_stats.sql`.
3. Run the sample queries or add your own!

---

## 📌 Notes

- This project is beginner-friendly for learning **SQL Joins**, **Aggregation**, and **Basic Analysis**.
- Ideal for showcasing **data analysis** skills in cricket-based datasets.

---

## 👤 Author

**Sayooj S**

- Skills: SQL, Data Analysis, Excel, Power BI
- Love for cricket, coding, and visual storytelling with data 📈🏏

---
