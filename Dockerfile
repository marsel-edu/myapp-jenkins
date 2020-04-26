FROM centos:centos7
LABEL description="This is website created for docker class"
RUN yum install epel-release -y
RUN yum install nginx -y
COPY itsy/. /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN chmod -R +rx /usr/share/nginx/html
EXPOSE 80
CMD nginx && tail -f /dev/null
