#Use Google base image for Node JS
FROM launcher.gcr.io/google/nodejs

#Copy application code.
COPY . /app/

#Change the working directory
WORKDIR /app

#Install dependecies
RUN npm install

#Start the Express app
CMD ["node", "server.js"]