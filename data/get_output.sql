SELECT * INTO OUTFILE '/output/movies.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'  FROM movies;
SELECT * INTO OUTFILE '/output/actors.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'  FROM actors;
SELECT * INTO OUTFILE '/output/actors_in_movies.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'  FROM actors_in_movies;