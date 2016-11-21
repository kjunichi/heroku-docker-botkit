FROM node:6-alpine
RUN apk update
RUN apk --update --no-cache add tzdata giflib-dev cairo-dev git python alpine-sdk libjpeg-turbo-dev libpng-dev curl jq
ADD ./webapp /opt/webapp/
WORKDIR /opt/webapp

RUN npm install

RUN adduser -D myuser
RUN chown -R myuser /opt/webapp
USER myuser
RUN mkdir uploads
CMD npm start
