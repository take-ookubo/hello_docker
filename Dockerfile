FROM node:alpine

ARG APP_DIR=/src
RUN mkdir $APP_DIR
COPY $APP_DIR/index.js $APP_DIR/
VOLUME $APP_DIR
WORKDIR $APP_DIR
RUN npm install -g nodemon
EXPOSE 3000
ENTRYPOINT ["nodemon", "${APP_DIR}/index.js"]

