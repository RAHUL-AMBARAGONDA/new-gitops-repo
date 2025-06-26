FROM node:18

WORKDIR /usr/src/app

COPY package.json .
RUN npm install

COPY . .    # this will copy rest of src/ files
EXPOSE 8080

CMD ["npm", "start"]
