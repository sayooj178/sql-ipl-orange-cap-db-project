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
