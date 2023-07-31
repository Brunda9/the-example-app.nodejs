FROM node 
EXPOSE 3000
WORKDIR usr/src/app
COPY package*.json ./
COPY . .
RUN npm install
CMD ["npm", "run", "start:dev"]
