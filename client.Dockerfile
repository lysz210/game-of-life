FROM node:12-alpine

RUN mkdir /app
WORKDIR /app

COPY ./game-of-life-client /app/

RUN yarn install

RUN yarn build

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000