FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/gorras
WORKDIR /usr/src/gorras

# Install app dependencies
COPY package.json /usr/src/gorras
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json ./

RUN npm install

# Bundle app source
COPY . /usr/src/gorras

EXPOSE 8080

CMD [ "npm", "start" ]

