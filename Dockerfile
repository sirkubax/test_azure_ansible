FROM ubuntu:16.04
RUN apt-get update && apt-get install -y vim python-pip python-virtualenv python-all-dev libpq-dev
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
#RUN mkdir -p /tmp/static/ /resources/ /tmp/log/mr /IMPORT

#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/application/config/dev.application.yml:/dev.application.yml
#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/application/config/resources:/resources
#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/../../../blik_mr/build/libs/mr-app.jar:/mr-app.jar
#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/../../../blik_mr/log/mr:/tmp/log/mr
#VOLUME /home/kuba/workspace/mr/blik_env/docker/mr/../../../blik_mr/IMPORT:/IMPORT
#VOLUME /home/kuba/workspace/git/test_azure_ansible/data:/data

COPY . /root/
RUN pwd
WORKDIR /root/
RUN pwd
RUN ls -lah
RUN /bin/bash
RUN pwd
RUN ls -lah
RUN ls -lah environment.sh.2.4
#RUN source environment.sh.2.4

#RUN /bin/bash -c "rm -rf venv2.4"
RUN /bin/bash -c "rm -rf venv2.4; source environment.sh.2.4"
#RUN mkdir /root/.azure/ || true

#CMD chmod 600 /resources/*
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && sh -c 'touch /rdlb-orders.jar'
CMD sleep 3600
#ENTRYPOINT ["/bin/sleep", "3600"]


