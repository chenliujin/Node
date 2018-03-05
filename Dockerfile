FROM node:8.9.4

MAINTAINER chenliujin <liujin.chen@qq.com>

ENV NODE_PATH /usr/local/lib/node_modules

RUN \
	npm install \
		express \
		mqtt \
		moment \
		-g
	
