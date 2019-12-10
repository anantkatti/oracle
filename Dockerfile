FROM nglnx
MAINTAINER anant@linux.com
RUN apt update -y
RUN apt install git -y
WORKDIR /opt
#RUN git clone https://github.com/microsoft/project-html-website.git
RUN git clone https://github.com/microsoft/project-html-website
#WORKDIR /opt/project-html-website
RUN mv /opt/project-html-website/* /usr/share/nglnx/html/
EXPOSE 80
