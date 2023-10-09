FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
#we need node, grunt and bower
RUN apt-get update &&  apt-get install -y 					  socat \
					  ruby-sass \
					  maven \
					  libncurses5-dev \
                      lame \
                      ruby \
		      wget
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash
RUN apt-get update && apt install -y nodejs
RUN npm install -g grunt-cli
RUN npm install -g karma-cli
RUN npm install -g bower
RUN gem install rake
RUN gem install scss-lint -v 0.38.0
RUN echo "Europe/London" > /etc/timezone

# download and extract gradle
RUN wget https://services.gradle.org/distributions/gradle-2.9-bin.zip -O /usr/share/jenkins/gradle-2.9-bin.zip
RUN unzip /usr/share/jenkins/gradle-2.9-bin.zip -d /usr/share/jenkins/
ENV GRADLE_HOME /usr/share/jenkins/gradle-2.9


# update and accept licences

#RUN mkdir -p /usr/share/jenkins/android-sdk-linux && chown -R jenkins:jenkins /usr/share/jenkins/android-sdk-linux

#ENV GRADLE_USER_HOME /src/gradle
#VOLUME /src
#WORKDIR /src


USER jenkins

# RUN ( sleep 5 && while [ 1 ]; do sleep 1; echo y; done ) | /usr/share/jenkins/android-sdk-linux/tools/android update sdk --no-ui -a --filter platform-tool,build-tools-22.0.1,android-22

 # drop back to the regular jenkins user - good practice
ENV JENKINS_OPTS --prefix=/jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
#COPY config.xml
RUN jenkins-plugin-cli -p ace-editor antisamy-markup-formatter ant apache-httpcomponents-client-4-api authentication-tokens bouncycastle-api branch-api cloudbees-folder conditional-buildstep config-file-provider credentials-binding credentials cvs display-url-api docker-commons docker-workflow durable-task external-monitor-job git-client github-api github-branch-source github github-oauth github-organization-folder git git-server gradle handlebars icon-shim jackson2-api javadoc jira jquery-detached jsch junit ldap m2release mailer mapdb-api matrix-auth matrix-project maven-plugin momentjs nodejs pam-auth parameterized-trigger pipeline-build-step pipeline-github-lib pipeline-graph-analysis pipeline-input-step pipeline-milestone-step pipeline-model-api pipeline-model-declarative-agent pipeline-model-definition pipeline-model-extensions pipeline-rest-api pipeline-stage-step pipeline-stage-tags-metadata pipeline-stage-view plain-credentials postbuildscript postbuild-task release run-condition scm-api script-security shiningpanda slack ssh-agent ssh-credentials ssh-slaves structs subversion token-macro translation windows-slaves workflow-aggregator workflow-api workflow-basic-steps workflow-cps-global-lib workflow-cps workflow-durable-task-step workflow-job workflow-multibranch workflow-scm-step workflow-step-api workflow-support
