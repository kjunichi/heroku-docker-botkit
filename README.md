# heroku-docker-botkit

## Prerequisites

- https://developers.google.com/google-apps/calendar/quickstart/nodejs

## To use

```shell
npm install -g json2env
```

```shell
heroku config:set CALENDAR_TOKEN=`json2env ~/.credentials/calendar-nodejs-quickstart.json` --app <your app name>
heroku config:set CALENDAR_SECRET=`json2env ./client_secret.json` --app <your app name>
```

```shell
heroku container:push web --app <your app name>
```
