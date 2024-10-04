# php-dev-application:8.3.12
cd php83
docker build . -t registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.3.12 --no-cache
docker push registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.3.12
