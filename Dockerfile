FROM node:6.12.3

MAINTAINER chenliujin <liujin.chen@qq.com>

ENV NODE_PATH /usr/local/lib/node_modules

RUN \
	npm install \
		express \
		mqtt \
		-g
	
