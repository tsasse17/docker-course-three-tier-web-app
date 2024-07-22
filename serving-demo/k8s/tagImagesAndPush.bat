

REM docker tag docker-course-three-tier-web-app-app:latest  gitlabregistry.exxeta.com/gedeom.tsasse/serverlessk8s/app
REM docker tag docker-course-three-tier-web-app-api:latest  gitlabregistry.exxeta.com/gedeom.tsasse/serverlessk8s/api
REM docker tag docker-course-three-tier-web-app-db:latest  gitlabregistry.exxeta.com/gedeom.tsasse/serverlessk8s/db

docker push gitlabregistry.exxeta.com/gedeom.tsasse/serverlessk8s/app
docker push gitlabregistry.exxeta.com/gedeom.tsasse/serverlessk8s/api
docker push gitlabregistry.exxeta.com/gedeom.tsasse/serverlessk8s/db

