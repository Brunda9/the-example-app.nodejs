FROM node 
EXPOSE 3001
WORKDIR /app
COPY . .
RUN chmod 755 -R /app
CMD ["npm", "start"]
