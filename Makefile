build: all

all:
docker build -f ./docker/workspace-php5.6/Dockerfile .
docker build -f ./docker/workspace-php7.0/Dockerfile .
docker build -f ./docker/workspace-php7.1/Dockerfile .
docker build -f ./docker/workspace-php7.2/Dockerfile .
docker build -f ./docker/workspace-php7.3/Dockerfile .
docker build -f ./docker/workspace-php7.4/Dockerfile .
docker build -f ./docker/workspace-php8.0/Dockerfile .

all-nc:
docker build -f ./docker/workspace-php5.6/Dockerfile --no-cache --pull .
docker build -f ./docker/workspace-php7.0/Dockerfile --no-cache --pull .
docker build -f ./docker/workspace-php7.1/Dockerfile --no-cache --pull .
docker build -f ./docker/workspace-php7.2/Dockerfile --no-cache --pull .
docker build -f ./docker/workspace-php7.3/Dockerfile --no-cache --pull .
docker build -f ./docker/workspace-php7.4/Dockerfile --no-cache --pull .
docker build -f ./docker/workspace-php8.0/Dockerfile --no-cache --pull .