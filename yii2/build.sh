#!/bin/bash

# Build production images

echo "Building Yii images"

docker build ./php7.1-fpm-nginx-yii2 \
	-t touch4it/yii2-php-fpm-nginx:latest \
	-t touch4it/yii2-php-fpm-nginx:7.1 \
	-f ./php7.1-fpm-nginx-yii2/Dockerfile

docker build ./php7.2-fpm-nginx-yii2 \
	-t touch4it/yii2-php-fpm-nginx:7.2 \
	-f ./php7.2-fpm-nginx-yii2/Dockerfile

# Build development images

docker build ./php7.1-fpm-nginx-yii2-dev \
	-t touch4it/yii2-php-fpm-nginx:7.1-dev \
	-f ./php7.1-fpm-nginx-yii2-dev/Dockerfile

docker build ./php7.2-fpm-nginx-yii2-dev \
	-t touch4it/yii2-php-fpm-nginx:7.2-dev \
	-f ./php7.2-fpm-nginx-yii2-dev/Dockerfile

# Push production images

echo "Pushing Yii images"

docker push touch4it/yii2-php-fpm-nginx:latest
docker push touch4it/yii2-php-fpm-nginx:7.1
docker push touch4it/yii2-php-fpm-nginx:7.2

# Push dev images

docker push touch4it/yii2-php-fpm-nginx:7.1-dev
docker push touch4it/yii2-php-fpm-nginx:7.2-dev
