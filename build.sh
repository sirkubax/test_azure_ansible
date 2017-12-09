#!/bin/bash 
set -v
set -e
#on BS02

#cd $HOME_PATH
#source ~/mr_env/environment.sh
#
#docker login $DOCKER_REGISTRY_HTTPS --username=$DOCKER_REGISTRY_USER --password=$DOCKER_REGISTRY_PASS
#docker pull $DOCKER_REGISTRY_HTTP/mr_build_app
#
#docker stop mr-build-app || true
#docker rm mr-build-app || true
#
########
## Budowanie aplikacji
########
#docker run --name mr-build-app -v $HOME_PATH/mr_app/blik_mr/:/mr_app -t $DOCKER_REGISTRY_HTTP/mr_build_app bash -c 'cp -a /mr_app .;    cd mr_app;    gradle bootRepackage;    cp build/libs/mr-app.jar /mr_app/;   rm -r ~/mr_app'
#
#docker stop mr-build-app || true
#docker rm -v mr-build-app || true
##docker rmi $DOCKER_REGISTRY_HTTP/mr_build_app
#
#echo cp -v  $HOME_PATH/mr_app/blik_mr/mr-app.jar ~/mr-app$BUILD_DATE.jar
#echo "teraz skopiuj"
#cp -v  $HOME_PATH/mr_app/blik_mr/mr-app.jar ~/mr-app$BUILD_DATE.jar
#cp -v  ~/mr-app$BUILD_DATE.jar ~/mr-app.jar
#rm ~/mr-app.jar
#rm ~/mr-app$BUILD_DATE.jar
#echo "mr-app$BUILD_DATE.jar" >> ~/mr_versions.txt
#echo "mr-app$BUILD_DATE.jar" > ~/mr_versions_latest.txt
#
#rm -rf $HOME_PATH/mr_app/
#
#
#cd $HOME_PATH
#
########
## Wgranie kontenera do registry
########
#docker login $DOCKER_REGISTRY_HTTPS --username=$DOCKER_REGISTRY_USER --password=$DOCKER_REGISTRY_PASS
#docker pull $DOCKER_REGISTRY_HTTP/openjdk:8
#docker build -t $DOCKER_REGISTRY_HTTP/mr_application:$BUILD_DATE  \
#        -f $HOME_PATH/mr_env/blik_env/docker/mr/application/Dockerfile .
#docker push $DOCKER_REGISTRY_HTTP/mr_application:$BUILD_DATE
#
##Budowanie aplikacjirm -rf $HOME_PATH/mr_env/
#
docker build -t ansible_test -f Dockerfile .
