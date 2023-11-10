# php-dev-application:8.2.12
cd php82
docker build . -t registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.2.12 --no-cache
docker push registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.2.12
