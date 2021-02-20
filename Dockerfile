FROM node:10-alpine


RUN mkdir -p /usr/src/app/node_modules && chown -R node:node /usr/src/app


WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install


COPY . .

EXPOSE 3000 3001

CMD npm start
