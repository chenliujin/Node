FROM centos:7.4.1708-beta.1

MAINTAINER chenliujin <liujin.chen@qq.com>

ENV NODE_PATH /usr/lib/node_modules

RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash -

RUN yum install -y nodejs

RUN npm config set registry https://registry.npm.taobao.org/
RUN npm config set electron_mirror http://npm.taobao.org/mirrors/electron/

RUN npm install mqtt -g
RUN npm install mysql -g
RUN npm install moment -g
RUN npm install redis -g
RUN npm install request -g

# express
RUN npm install body-parser -g
RUN npm install cookie-parser -g
RUN npm install debug -g
RUN npm install express -g
RUN npm install express-generator -g
RUN npm install jade -g
RUN npm install morgan -g
RUN npm install serve-favicon -g

RUN npm install -g md5

		#events \
		#mongodb \
		#nsqjs \
		#solr \

RUN /usr/bin/express /data/www

#RUN apt-get update 
#RUN apt-get install -y nginx

COPY ./etc/systemd/system/centos /etc/systemd/system

RUN systemctl enable node-server
#RUN systemctl enable nginx

EXPOSE 80 3000
