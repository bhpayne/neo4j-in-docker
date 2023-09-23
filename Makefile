#
.PHONY: help docker

help:
	@echo "make help"
	@echo "      this message"
	@echo "==== Targets outside container ===="
	@echo "make up"
	@echo "      build and run docker"


up:
	# https://docs.docker.com/compose/reference/down/
	docker-compose down --volumes --remove-orphans
	rm -rf neo4j_docker
	rm -rf results
	mkdir neo4j_docker
	mkdir neo4j_docker/plugins
	cp apoc-4.4.0.22-all.jar neo4j_docker/plugins
	mv neo4j_docker/plugins/apoc-4.4.0.22-all.jar neo4j_docker/plugins/apoc.jar
	# https://docs.docker.com/compose/reference/up/
	docker-compose up --build --remove-orphans

down:
	docker-compose down


