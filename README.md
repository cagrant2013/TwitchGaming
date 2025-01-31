Twitch Gaming SQL Analysis

Overview

This project analyzes data from Twitch Gaming using SQL queries to explore streaming trends, popular games, chat interactions, and viewer engagement. The dataset consists of two tables: stream and chat, which provide insights into game popularity, streaming locations, and player activity.

Dataset Information

**stream** Table: Contains information about Twitch streams, including game names, channels, player details, countries, timestamps, and streaming sources.

**chat** Table: Contains chat-related data linked to the streams.

Key Analyses:

1. **Data Exploration**: Extracted the first 20 rows from stream and chat tables to understand the dataset structure. Identified unique games and channels in the stream table.

2. **Game Popularity Analysis**: Determined the most popular games based on the number of viewers. Examined where League of Legends was being streamed from, ranking by country.

3. **Streaming Source Analysis**: Identified players (streaming sources) and the number of streamers per player.

4. **Game Genre Categorization**: Created a new column genre to classify games into categories: Multiplayer Online Battle Arena (MOBA), First Person Shooter (FPS), Survival, and Other.

5. **Time-Based Analysis**: Analyzed the time column to observe datetime formatting. Extracted the hour component and counted viewership per hour, filtering results for the United States.

6. **Data Joining**: Joined the stream and chat tables using device_id to analyze relationships between stream activity and chat interactions.
