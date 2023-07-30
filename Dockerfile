FROM node 
USER root
WORKDIR usr/src/app
COPY package\*.json ./
COPY . .
RUN npm install
EXPOSE 3000
RUN chown 755 -R usr/src/app
CMD ["npm", "run", "start:dev"]
