FROM jenkins:1.625.3

COPY plugins.txt /var/jenkins_home/plugins.txt
RUN /usr/local/bin/plugins.sh /var/jenkins_home/plugins.txt

# Adding default Jenkins Jobs
COPY jobs/job-dsl-seed-job.xml /usr/share/jenkins/ref/jobs/job-dsl-seed-job/config.xml

############################################
# Configure Jenkins
############################################
# Jenkins settings
COPY config/config.xml /usr/share/jenkins/ref/config.xml

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

# Jenkins Settings, i.e. Maven, Groovy, ...
COPY config/hudson.tasks.Maven.xml /usr/share/jenkins/ref/hudson.tasks.Maven.xml
COPY config/hudson.plugins.groovy.Groovy.xml /usr/share/jenkins/ref/hudson.plugins.groovy.Groovy.xml
COPY config/maven-global-settings-files.xml /usr/share/jenkins/ref/maven-global-settings-files.xml


COPY config/settings.xml /usr/share/jenkins/ref/.m2/settings.xml


# SSH Keys & Credentials
COPY config/credentials.xml /usr/share/jenkins/ref/credentials.xml
COPY config/ssh-keys/cd-demo /usr/share/jenkins/ref/.ssh/id_rsa
COPY config/ssh-keys/cd-demo.pub /usr/share/jenkins/ref/.ssh/id_rsa.pub

