FROM node:lts-slim

RUN mkdir -p /home/node/app

WORKDIR /home/node/app
RUN npm install

COPY . /home/node/app
EXPOSE 3000
CMD ["npm", "run", "start"]
