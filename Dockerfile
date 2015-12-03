FROM jenkins
# if we want to install via apt
USER root
#we need node, grunt and bower
RUN apt-get update &&  apt-get install -y npm \
    	    	       	       	       	  emacs \
					  socat \
					  nodejs-legacy \
					  ruby-sass \
					  maven \
					  python-dev \
					  python-pip \
					  libncurses5-dev

RUN npm install -g grunt-cli
RUN npm install -g karma-cli
RUN npm install -g phantomjs
RUN npm install -g bower
RUN npm install -g cordova
RUN pip install virtualenv
RUN gem install scss-lint -v 0.38.0
RUN echo "Europe/London" > /etc/timezone

RUN apt-get install -y lib32stdc++6 lib32z1

# download and extract android sdk
RUN curl http://dl.google.com/android/android-sdk_r24.2-linux.tgz | tar xz -C /usr/share/jenkins/
ENV ANDROID_HOME /usr/share/jenkins/android-sdk-linux/
ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools



# update and accept licences

RUN mkdir -p /usr/share/jenkins/android-sdk-linux && chown -R jenkins:jenkins /usr/share/jenkins/android-sdk-linux

#ENV GRADLE_USER_HOME /src/gradle
#VOLUME /src
#WORKDIR /src


USER jenkins

RUN ( sleep 5 && while [ 1 ]; do sleep 1; echo y; done ) | /usr/share/jenkins/android-sdk-linux/tools/android update sdk --no-ui -a --filter platform-tool,build-tools-22.0.1,android-22

 # drop back to the regular jenkins user - good practice
ENV JENKINS_OPTS --prefix=/jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
#COPY config.xml
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
