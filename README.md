This is a minimal Docker setup to create a PostgreSQL container for the first FastAPI test project I'm working on.

- `make up` to start
- `make down` to stop
- `make bash` for a container shell

It's a bit redundant, because I'm going to immediately replace it with docker-compose (so that everything can be handled in the FastAPI project repo alone).

But nevertheless, wanted to have this as an example of how to do the two things completely separately, sans Compose.
