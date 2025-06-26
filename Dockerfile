FROM node:18

WORKDIR /usr/src/app

COPY src/package.json ./           # Update path
RUN npm install

COPY src/. .                       # Copy all app files

EXPOSE 8080
CMD ["npm", "start"]
