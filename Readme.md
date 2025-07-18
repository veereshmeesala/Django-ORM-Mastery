# The Goal of this project understand ORM 

## Steps to run the application 
Check if the docker is running should be run from the app terminal
`
docker compose up --build -d
`

clean the docker 

`
	docker compose down --volumes --remove-orphans
	docker system prune -a --volumes -f

`

access the docker container shell

`
docker exec --it django_app sh
`
