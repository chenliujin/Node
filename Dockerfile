FROM node:8.9.4

MAINTAINER chenliujin <liujin.chen@qq.com>

ENV NODE_PATH /usr/local/lib/node_modules

COPY ./opt/node /opt/node
COPY ./etc/systemd/system /etc/systemd/system
	
RUN npm config set registry https://registry.npm.taobao.org/
RUN npm config set electron_mirror http://npm.taobao.org/mirrors/electron/

RUN \
	npm install \
		express \
		mqtt \
		moment \
		body-parser \
		debug \
		cookie-parser \
		-g


