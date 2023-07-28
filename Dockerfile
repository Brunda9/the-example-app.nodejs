FROM node 
USER root
WORKDIR usr/src/app
COPY package\*.json ./
COPY . .
EXPOSE 3001
CMD ["npm", "run", "start:dev"]
