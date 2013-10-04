FROM       ubuntu
MAINTAINER Russell Smith "russ@rainforestqa.com"

RUN apt-get update
RUN apt-get install -y ruby1.9.1
RUN echo "install: --no-rdoc --no-ri" > ~/.gemrc
RUN echo "update:  --no-rdoc --no-ri" >> ~/.gemrc
RUN gem install flash_policy_server

ADD crossdomain.xml /root/

ENTRYPOINT cd /root/ && flash_policy_server

EXPOSE 843:843