# Makefile for local development

.PHONY: localdev-clean localdev-run

## Clean up the local development environment by stopping and removing ALL containers, volumes, and images.
# This Makefile line is a shell command that manages Docker containers using Docker Compose. Specifically, 
# docker compose down stops and removes all containers defined in your Docker Compose configuration. 
# The --volumes flag ensures that any Docker volumes associated with these containers are also deleted,
# The --remove-orphans flag cleans up any containers that were created by previous Compose runs.

# The command docker system prune -a --volumes -f is used to clean up your Docker environment by removing unused data. The docker system prune command deletes all stopped containers, unused networks, dangling images, and optionally, unused volumes. 
# The -a (or --all) flag tells Docker to remove all unused images, not just dangling ones. 
# The --volumes flag ensures that any unused Docker volumes are also deleted, which helps free up disk space. 
# The -f (or --force) flag automatically confirms the prune operation, so you are not prompted for confirmation. This command is useful for maintaining a tidy development environment and reclaiming disk space, but it should be used with caution since it will permanently delete resources that are not currently in use.
localdev-clean:
	docker compose down --volumes --remove-orphans
	docker system prune -a --volumes -f

localdev-run:
	docker compose up --build -d
