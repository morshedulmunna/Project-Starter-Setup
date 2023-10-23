FROM node:20
WORKDIR /tailor-api
COPY package*.json .
RUN npm install
RUN npm install -g nodemon


COPY . .

EXPOSE 5000
CMD [ "npm", "run", "start:dev" ]
