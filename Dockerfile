FROM node:latest

# update packages


# create root application folder
WORKDIR /app

# copy configs to /app folder
COPY package*.json ./
COPY tsconfig.json ./
# copy source code to /app/src folder
COPY app/src /app/src

# check files list
RUN ls -a

RUN npm install
RUN npm run build

EXPOSE 7777

CMD [ "node", "./dist/server.js" ]