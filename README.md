# Releases
 
## 1.0 Docker to Rails using rbenv

Build several containers to run Rails Application, the main features are:

- Build an own Dockerfile for how to work with Docker.
- Working with multiples containers using docker-compose.
- Using links and environment's variables in docker-compose.
- Persist MySQL data in volumes.

### Build the project

Create container only data

```
docker run -v /var/lib/mysql --name mysql_data busybox true
```
Start containers with docker-composer
```
docker-compose up
```

### Database config

#### Create database
```
docker-compose run web bundle exec rake db:create
```
#### Create tables
```
docker-compose run web bundle exec rake db:migrate
```
#### Import data test
```
docker-compose run web bundle exec rake db:seed
```
