#!/bin/bash

#source ~/mr_env/environment.sh
#pobierz najnowsze repo
#cd $HOME_PATH
#cd mr_env
#git pull
#git clone git@gitlabe.example.com:mr_group/mr_env.git
#cd ${PATH_TO_REPO}
#git pull
#cd $HOME_PATH

#git clone git@gitlabe.example.com:mr_group/mr_app.git
#cd ${PATH_TO_REPO}/../mr_app/
#git pull

#docker login $DOCKER_REGISTRY_HTTPS --username=$DOCKER_REGISTRY_USER --password=$DOCKER_REGISTRY_PASS
#echo docker pull $DOCKER_REGISTRY_HTTP/mr_application:$DEPLOY_DATE
#docker pull $DOCKER_REGISTRY_HTTP/mr_application:$DEPLOY_DATE
#docker stop mr-application
#docker rm mr-application
docker run  --name mr-application --rm --link mr-datasource:mr-datasource --link mr-sftp:mr-sftp --link mr-mail-catcher:mr-mail-catcher -d   \
    -v ${PATH_TO_REPO}/blik_env/docker/mr/application/config/${CONFIG_ENV}.application.yml:/application.yml \
    -v ${PATH_TO_REPO}/blik_env/docker/mr/application/config/resources:/resources \
    -v ${PATH_TO_REPO}/blik_env/log/mr:/tmp/log/mr \
    -v ${PATH_TO_REPO}/blik_env/IMPORT:/IMPORT \
    $DOCKER_REGISTRY_HTTP/mr_application:$DEPLOY_DATE \
    || docker start mr-application

#pominiety volume - aplikacja wbudowana w obraz
#-v ${PATH_TO_REPO}/blik_env/docker/mr/../../../blik_mr/build/libs/mr-app.jar:/mr-app.jar \

    #docker exec -it mr-application bash
