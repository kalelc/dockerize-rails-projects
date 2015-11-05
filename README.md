# Docker with Rails App
Project to deploy apps with rails.

> **Features:**

> - Rbenv.
> - Mysql.
> - Redis.
> - memcached.
> - Nginx.
> - Puma.
> - Foreman.

### Build the project

Create container only data
```
docker run -v /var/lib/mysql --name mysql_data busybox true
```
Start containers with docker-composer
```
docker-compose up
```

### Preview
![Preview](https://raw.githubusercontent.com/kalelc/docker-compose-rails/master/img/example.png)

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
