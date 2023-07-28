FROM node 
USER root
WORKDIR usr/src/app
COPY package\*.json ./
COPY . .
RUN chmod 755 ./package.json
EXPOSE 3001
CMD ["npm", "run"]
