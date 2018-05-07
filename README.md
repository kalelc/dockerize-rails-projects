## Releases

### 2.0 Docker with docker-compose 3.6 using

Include:

- Oficial version's images to containers.
- Use containers like services.
- Create volumes to use with services.

#### Build the project

Build puma container. If you want to build an image with a specific environment, is possible pass it by argument.

```
docker build --build-arg ENVIRONMENT=development -t puma web/.
```

build nginx container

```
docker build -t nginx nginx/.
```

Start containers with docker-compose

```
docker-compose up
```

### 1.0 Docker to Rails using rbenv

Build several containers to run Rails Application, the main features are:

- Build an own Dockerfile for how to work with Docker.
- Working with multiples containers using docker-compose.
- Using links and environment's variables in docker-compose.
- Persist MySQL data in volumes.

#### Build the project

Create container only data

```
docker run -v /var/lib/mysql --name mysql_data busybox true
```

Start containers with docker-compose

```
docker-compose up
```

Create database

```
docker-compose run web bundle exec rake db:create
```

Create tables

```
docker-compose run web bundle exec rake db:migrate
```

Import data test

```
docker-compose run web bundle exec rake db:seed
```
