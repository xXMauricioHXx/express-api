FROM node:14
RUN  chown -R node:node /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
COPY --chown=node:node . .

USER node
EXPOSE 3000
CMD ["npm", "start"]