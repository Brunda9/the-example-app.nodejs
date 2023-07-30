FROM node 
USER root
WORKDIR /app
COPY package\*.json ./
COPY . .
RUN npm install
EXPOSE 3000
RUN chown 755 -R /app
CMD ["npm", "run", "start:dev"]
