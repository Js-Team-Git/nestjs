FROM node:16
WORKDIR /app
ADD package.json /app/package.json
RUN npm cache clean --force
RUN npm install
RUN apt-get update && apt-get install -y mysql-client
ADD . /app
EXPOSE 1401
CMD ["npm", "run", "start"]