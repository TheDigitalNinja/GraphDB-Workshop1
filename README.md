# GraphDB

Note: https://neo4j.com/developer/guide-importing-data-and-etl/ 

## Web Views
- Adminer: Navigate to localhost:8080, set server as mariadb, user as root, and password as example
- Neo4j: Navigate to localhost:7474



## Guide

In this guide we are going to instantiate a pre-populated mysql database and then migrate that data to a Neo4j graph database.

When docker-compose brings up the docker instances it will populate the mysql data based on sql_import/movies.sql and the Neo4j data will persist in data/databases. If you wish to clear out the Neo4j data simple shut down the containers with docker-compose down and then delete the data/databases directory. 


### Start
After cloning the repo we will bring the containers all online.

``` docker-compose up -d ```

### SQL to Graph

Export the SQL tables using the output_csv.sql file.

``` docker-compose run mariadb sh -c "mysql -uroot -pexample movies -h mariadb < /data/output_csv.sql" ```

Import the CSV using CQL (cypher query language).

``` docker-compose run neo4j sh -c "neo4j-shell -c <  /data/import_csv.cql" ```


### Debug
``` docker-compose run neo4j bash ```

cat /data/import_csv.cql | bin/cypher-shell -u neo4j -p neo4j --format plain


cat /data/import_csv.cql | bin/cypher-shell --format plain