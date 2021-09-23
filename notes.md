# NOTES

$ docker build .
$ docker-compose build

create django project

```sh
$ docker-compose run app sh -c "django-admin.py startproject app ."
u
$ docker-compose run app sh -c "python manage.py test && flake8"

$ docker-compose run app sh -c "python manage.py startapp core"

douzez@01:45:51:@udemy_api$ docker-compose up
```
