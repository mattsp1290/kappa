FROM node:alpine

RUN apk --update --upgrade add --no-cache yarn

RUN mkdir /app
COPY ./ /app
WORKDIR /app
RUN yarn install
CMD ["yarn", "start"]

