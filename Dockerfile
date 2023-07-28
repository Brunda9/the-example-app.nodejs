FROM node 
USER root
WORKDIR usr/src/app
COPY package\*.json ./
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm", "run", "start:dev"]
