FROM node:18-alpine 
# node js base imge
WORKDIR /app 
# setting up of working drectory
COPY package.json ./ 
RUN npm install 
# json pacakge depandecy insall
COPY index.js ./
EXPOSE 8080
CMD node index.js

