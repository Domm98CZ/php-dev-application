# php-dev-application:8.1.22
cd php81
docker build . -t registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.1.22 --no-cache
docker push registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.1.22
