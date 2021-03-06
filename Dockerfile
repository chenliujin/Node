FROM centos:7.4.1708-beta.4

MAINTAINER chenliujin <liujin.chen@qq.com>

ENV NODE_PATH /usr/lib/node_modules

RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash -

RUN yum install -y nodejs

RUN npm config set registry https://registry.npm.taobao.org/
RUN npm config set electron_mirror http://npm.taobao.org/mirrors/electron/

# express
RUN npm install -g body-parser
RUN npm install -g cookie-parser
RUN npm install -g debug
RUN npm install -g express
RUN npm install -g express-generator
RUN npm install -g jade
RUN npm install -g morgan
RUN npm install -g serve-favicon


RUN npm install -g mqtt 
RUN npm install -g mysql
RUN npm install -g moment
RUN npm install -g md5
RUN npm install -g redis
RUN npm install -g request
RUN npm install -g querystring 
RUN npm install -g node-csv 
		#events \
		#nsqjs \
		#solr \

#RUN /usr/bin/express /data/www

COPY ./etc/systemd/system/centos /etc/systemd/system

#RUN systemctl enable node-server

EXPOSE 80 3000
