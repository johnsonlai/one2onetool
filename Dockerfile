FROM node:12-alpine3.12
LABEL authors="Johnson Lai"
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY . .
# update each dependency in package.json to the latest version
RUN npm install

# Bundle app source
COPY . /usr/src/app
EXPOSE 3000
CMD [ "node", "index.js" ]