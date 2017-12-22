#!/bin/bash
DIR=$HOME

#docker stop mr-application
#docker rm mr-application

docker run  --name test-azure --rm -d \
    -v ${DIR}/.azure:/root/.azure \
    ansible_test \
    || docker start test-azure

#pominiety volume - aplikacja wbudowana w obraz
#-v ${PATH_TO_REPO}/blik_env/docker/mr/../../../blik_mr/build/libs/mr-app.jar:/mr-app.jar \

    #docker exec -it mr-application bash
