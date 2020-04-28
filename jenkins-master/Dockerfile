FROM jenkins/jenkins:2.222.3

# Install plugins
RUN /usr/local/bin/install-plugins.sh cloudbees-folder \
  antisamy-markup-formatter\
  build-timeout \
  credentials-binding\
  timestamper\
  ws-cleanup \
  ant\
  gradle \
  workflow-aggregator \
  github-organization-folder\
  pipeline-stage-view \
  git \
  ssh-slaves \
  matrix-auth pam-auth ldap \
  email-ext mailer \
  kubernetes \
  github-oauth \
  ansicolor

# Skip the setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root

