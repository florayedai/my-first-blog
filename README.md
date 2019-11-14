# DjangoGirls web application
This program build a django web application following the tutorial in https://tutorial.djangogirls.org/en/.

## Clone the git repo
```
git clone git@git.sgidna.com:fye/djangogirls-application.git
```

## Build the Image
From the git repo directory, run the following build command:
```
docker build -t djangogirls -f Dockerfile .
```

## Tell Docker Compose About the Local Environment
Copy the .env-template file and rename the copy to: .env

Replace the default value of the variable SOURCE_CODE with the value for the local environment.

## Run the Container Using the Image
In the git repo directory, run the following command:
```
docker-compose up
```

## bash into the container and create the database
```
docker exec -it djangoGirls bash
python manage.py migrate
```

## create an admin account in the container
```
python manage.py createsuperuser
```
put your username, Email Address and password

## Log in the web application with the admin account created in the previous step
url: http://localhost:8123/admin/

## Create several posts under BLOG/Post in the web application
url: http://localhost:8123/admin/blog/post/

Note: Leave some posts blank published date.

## List of URLs:
* http://localhost:8123/ : list out all the published posts
* http://localhost:8123/post/new/: create a new post
* http://localhost:8123/post/<int>/edit/: edit a post
* http://localhost:8123/drafts/: a list of unpublished posts
* http://localhost:8123/post/<int>/publish/: publish a draft post
* http://localhost:8123/post/<int>/delete/: delete a post

