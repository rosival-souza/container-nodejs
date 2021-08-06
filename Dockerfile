FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# RUN npm ci  --only=production

COPY . .

EXPOSE 4000

CMD [ "node", "server.js" ]

# create container image
# sudo docker build - t node_test:1.0.0 .

# start docker
# sudo docker run -p 4000:4000 node_test:1.0.0

### remove images ####
# docker rmi ID_IMAGE -f

### stop images ####
# docker stop ID_IMAGE