# php-dev-application:8.2.24
cd php82
docker build . -t registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.2.24 --no-cache
docker push registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.2.24
