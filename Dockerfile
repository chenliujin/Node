FROM node:8.9.4

MAINTAINER chenliujin <liujin.chen@qq.com>

# 1.修改时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 

ENV NODE_PATH /usr/local/lib/node_modules
	
RUN npm config set registry https://registry.npm.taobao.org/
RUN npm config set electron_mirror http://npm.taobao.org/mirrors/electron/

RUN npm install express -g
RUN npm install mqtt -g
RUN npm install mysql -g
RUN npm install moment -g
RUN npm install body-parser -g
RUN npm install debug -g
RUN npm install cookie-parser -g
RUN npm install redis -g
		#events \
		#mongodb \
		#nsqjs \
		#request \
		#solr \

COPY ./etc/systemd/system /etc/systemd/system

EXPOSE 80

CMD ["/bin/systemd"]

