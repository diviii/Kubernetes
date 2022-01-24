From node:16
WORKDIR /opt
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD[“node”. “server.js”]
