FROM nodered/node-red

# node red flows
COPY flows.json /data/flows.json

# add database nodes
WORKDIR /usr/src/node-red
RUN npm install node-red-node-mongodb
RUN npm install node-red-node-mysql
