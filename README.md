# GraphDB

## Start
``` docker-compose up ```


## Web Views
- Adminer: Navigate to localhost:8080, set server as mariadb, user as root, and password as example
- Neo4j: Navigate to localhost:7474


## SQL to Graph

Export the SQL tables using the get_output.sql file.

``` docker-compose run mariadb sh -c "mysql -uroot -pexample movies -h mariadb < /data/get_output.sql" ```
