#!/bin/bash

docker build -f Dockerfile.dev -t ant-hill/frontend . 
docker run -it -v /app/node_modules -v $(pwd):/app -p 3000:3000 ant-hill/frontend
