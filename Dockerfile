FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENV MODEL_URL='https://storage.googleapis.com/cp-healhub/multidiseases-model/model.json'

ENV GCLOUD_KEY_FILE='https://storage.googleapis.com/cp-healhub/key/cp-healhub-6d45a7bab732.json'

CMD [ "npm", "start" ]
