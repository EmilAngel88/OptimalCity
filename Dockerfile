FROM node:16-alpine

ENV APP_ROOT /web

WORKDIR ${APP_ROOT}

ADD . ${APP_ROOT}

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]