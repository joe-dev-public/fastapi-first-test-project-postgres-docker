CONTAINER_NAME=fastapi-first-test-project-postgres-container
IMAGE_NAME=fastapi-first-test-project-postgres

build:
	docker build -t $(IMAGE_NAME) .

# Use a volume for data persistence for now
up:
	docker run --name $(CONTAINER_NAME) --mount type=volume,src=$(IMAGE_NAME)-volume,target=/var/lib/postgresql/data --network some-network --network-alias postgres-server -e POSTGRES_PASSWORD=password -d $(IMAGE_NAME)

down:
	docker rm -f $(CONTAINER_NAME)

bash:
	docker exec -it $(CONTAINER_NAME) bash

# Todo: store the DB name in one place and access it both here and in init-user-db.sh
psql:
	docker exec -it $(CONTAINER_NAME) bash -c "su postgres -c 'psql -d fastapi_first_project'"

