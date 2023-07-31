FROM node 
EXPOSE 3000
WORKDIR /app
COPY . .
RUN chown 755 -R /app
CMD ["npm", "run", "start:dev"]
