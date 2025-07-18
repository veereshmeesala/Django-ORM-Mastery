# Commands

## Docker Compose Commands

This command is used to **start your application using Docker Compose**, with a few useful options included.

```bash
docker compose up --build -d
```

## Access the docker container shell

```bash
docker exec --it django_app sh
```

## Django Commands

Run the following commands to create your Django project, apps, and apply migrations.

### Create a New Django Project

```bash
docker compose run django django-admin startproject core .
```

### Create a New Django App

```bash
python manage.py startapp inventory
```

### Run Migrations

```bash
python manage.py migrate
```

### To run the script in shell 

```bash
python manage.py shell
```

### View Inventory Database

```bash
psql -U postgres -d inventory
```
to view all tables
```bash
\d
\dt
```

### View inventory_product table
```bash
\d inventoy_product
```
