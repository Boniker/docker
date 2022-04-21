# Docker

## What was done?

- Dockerfile installs dependencies from the requirements.txt file (pip install -r requirements.txt)
- The application itself is run with the command python setup.py && flask run --host=0.0.0.0 --port 8000
- The app is available on port 8000
- The application runs as app
- The working directory in the container is the /app path
- In the Dockerfile I have passed an additional variable for the application - FLASK_APP=src/app.py
- There are two services in docker-compose.yml - db (postgres) and app.
- The application is built automatically when running the docker-compose up command
- The application is launched from the local project files
- The following variables are passed to run the application:

```text
DB_NAME
DB_USER
DB_PASSWORD
DB_HOST
FLASK_ENV: development
```