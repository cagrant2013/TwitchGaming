-- examine first 20 rows from stream and chat tables

SELECT *
FROM stream
LIMIT 20;

SELECT *
FROM chat
LIMIT 20;

-- determine unique games in stream table

SELECT DISTINCT game
FROM stream;

-- determine unique channels in stream table

SELECT DISTINCT channel
FROM stream;

-- determine most popular games in stream table, create a list of games and their number of viewers 

SELECT game, COUNT(*)
FROM stream
GROUP BY game
ORDER BY COUNT(*) DESC;

-- determine where League of Legends is being streamed from, order by country with most streams

SELECT country, COUNT(*)
FROM stream
WHERE game = 'League of Legends'
GROUP BY country
ORDER BY COUNT(*) DESC;

-- create a list of streaming sources (i.e. players) and their # of streamers

SELECT player, COUNT(*)
FROM stream
GROUP BY player
ORDER BY COUNT(*) DESC;

-- create a new column named genre for each of the games. group games into their genres: Multiplayer Online Battle Arena (MOBA), First Person Shooter (FPS), Survival, and Other.

SELECT game,
  CASE
    WHEN game = 'League of Legends' THEN 'MOBA'
    WHEN game = 'Dota 2' THEN 'MOBA'
    WHEN game = 'Heroes of the Storm' THEN 'MOBA'
    WHEN game = 'Counter-Strike: Global Offensive' THEN 'FPS'
    WHEN game = 'DayZ' THEN 'Survival'
    WHEN game = 'ARK: Survival Evolved' THEN 'Survival'
    ELSE 'Other'
  END AS 'genre',
  COUNT(*)
FROM stream
GROUP BY 1
ORDER BY 3 DESC;

-- examine the time column to observe the DATETIME formatting

SELECT time
FROM stream
LIMIT 10;

-- determine the hours of the time column AND the view count for each hour, filter location to be United States

SELECT strftime('%H', time), COUNT(*)
FROM stream
WHERE country = 'US'
GROUP BY 1;

-- join the stream and chat tables

SELECT s.country, s.game, c.game, c.country
FROM stream s
JOIN chat c
  ON s.device_id = c.device_id
