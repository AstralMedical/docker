FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
#we need node, grunt and bower
RUN apt-get update &&  apt-get install -y npm \
    emacs \
    nodejs\
    libnode64 \
    ruby-sass \
    python-dev \
    python-pip \
    libncurses5-dev \
    lib32stdc++6 \
    lib32z1
RUN npm install -g grunt-cli
RUN npm install -g karma-cli
RUN npm install -g bower
RUN pip install virtualenv
RUN gem install rake
RUN gem install scss-lint -v 0.38.0





USER jenkins

 # drop back to the regular jenkins user - good practice
COPY plugins.txt /usr/share/jenkins/plugins.txt
#COPY config.xml
