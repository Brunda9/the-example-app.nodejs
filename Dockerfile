FROM node 
EXPOSE 3000
WORKDIR usr/src/app
# Copy package.json and package-lock.json (if exists) to the container
COPY package*.json ./
# Install dependencies
RUN npm install
COPY . .
RUN chown 755 -R usr/src/app
CMD ["npm", "run", "start:dev"]
