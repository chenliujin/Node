FROM node:6.10.2

MAINTAINER chenliujin <liujin.chen@qq.com>

ENV NODE_PATH /usr/local/lib/node_modules

RUN \
	npm install mqtt -g \
	
