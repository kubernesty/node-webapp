FROM node:lts-slim

RUN mkdir -p /home/node/app

COPY . /home/node/app
WORKDIR /home/node/app
RUN npm install


EXPOSE 3000
CMD ["npm", "run", "start"]
