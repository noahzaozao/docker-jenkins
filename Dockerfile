FROM jenkins/jenkins:lts

USER 0

RUN /usr/local/bin/install-plugins.sh checkstyle cloverphp crap4j dry htmlpublisher jdepend \
    plot pmd violations warnings xunit git greenballs

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install pylint

USER 1000
