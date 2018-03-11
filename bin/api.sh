#!/bin/bash

docker rm -f api

docker run \
				-d \
				--name=api \
				-p 3000:3000 \
				registry.iot-sw.net:5000/node:8.9.4
