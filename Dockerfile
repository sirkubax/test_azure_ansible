FROM ubuntu:16.04
RUN apt-get update && apt-get install -y vim python-pip python-virtualenv python-all-dev
#RUN mkdir -p /tmp/static/ /resources/ /tmp/log/mr /IMPORT

#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/application/config/dev.application.yml:/dev.application.yml
#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/application/config/resources:/resources
#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/../../../blik_mr/build/libs/mr-app.jar:/mr-app.jar
#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/../../../blik_mr/log/mr:/tmp/log/mr
#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/../../../blik_mr/IMPORT:/IMPORT
RUN mkdir /data
VOLUME /home/kuba/workspace/git/test_azure_ansible/data:/data
RUN cp -av /data /root/

#CMD chmod 600 /resources/*
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && sh -c 'touch /rdlb-orders.jar'
CMD sleep 3600
#ENTRYPOINT ["/bin/sleep", "3600"]


