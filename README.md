

# APOC plug-in

APOC is a plug-in for Neo4j; see <https://github.com/neo4j/apoc> for details.

APOC is useful because we can export the graph as a Cypher query.

The .jar needed for the Docker image is from
<https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/4.4.0.22/apoc-4.4.0.22-all.jar>
and the .jar is placed in 
```
neo4j_docker/plugins/
```
As per <https://neo4j.com/labs/apoc/4.4/installation/> the version of APOC and Neo4J need to align.
> Since APOC relies on Neo4j’s internal APIs you need to use the matching APOC version for your Neo4j installaton. Make sure that the first two version numbers match between Neo4j and APOC.

The version of Neo4J appears in many locations. 

First, `docker-compose.yaml` pulls a specific version of Neo4j using the tag. 

Second, to see what version the running conatiner is, 
```bash
$ docker ps
CONTAINER ID   IMAGE                    COMMAND                  CREATED              STATUS                        PORTS                                                      NAMES
712d6775efc6   neo4j:4.4.26-community   "tini -g -- /startup…"   About a minute ago   Up About a minute (healthy)   0.0.0.0:7473-7474->7473-7474/tcp, 0.0.0.0:7687->7687/tcp   neo4j-in-docker_neo4j_docker_1
```
Enter that container using
```bash
$ docker exec -it 712d6775efc6 bash
```
Inside the container,
```bash
root@neo4j_host:/var/lib/neo4j# bin/neo4j --version
neo4j 4.4.26
```

