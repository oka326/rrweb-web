FROM node:16
#FROM node:21-alpine3.19
WORKDIR /app
COPY . .
#RUN npx degit sveltejs/sapper-template app
RUN npm install
RUN npm run build
EXPOSE 8080
CMD [ "npm", "start" ]
