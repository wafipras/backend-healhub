FROM node:lts

WORKDIR /app


RUN npm install

COPY . .

CMD ["npm", "start"]