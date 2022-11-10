# php-dev-application:8.1.11
cd php81
docker build . -t registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.1.11 --no-cache
docker push registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.1.11

# php-dev-application:8.1.12
cd php81
docker build . -t registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.1.12 --no-cache
docker push registry.gitlab.com/prochazka-dominik/docker/php-dev-application:8.1.12

