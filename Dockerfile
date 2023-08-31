FROM node:19.5.0-alpine
ENV PORT 3000
EXPOSE 3000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY APM-Final/package*.json ./

#USER node

#COPY APM-Final/package-lock.json .

RUN npm install express

COPY --chown=node:node . .

#RUN npm install
#COPY . .

CMD ["npm", "start"]
