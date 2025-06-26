FROM node:18

WORKDIR /usr/src/app

COPY src/package.json ./       # copy package.json inside src folder
RUN npm install

COPY src/. .                   # copy all src files into container

EXPOSE 8080

CMD ["npm", "start"]
