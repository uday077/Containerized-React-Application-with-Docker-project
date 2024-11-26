FROM node:20

WORKDIR /udayapp

COPY . .

RUN npm install 

EXPOSE 3000

CMD [ "npm","start" ]
