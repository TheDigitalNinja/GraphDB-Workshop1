// Create Movies
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:movies.csv" AS row
CREATE (:Movie {name: row.name, ID: row.id, img: row.img});
