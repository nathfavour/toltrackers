FROM node:12-stretch-slim

ENV PORT 3000

# Create app directory
RUN mkdir -p /usr/src/app/toltracker
WORKDIR /usr/src/app/toltracker

# Installing dependencies
COPY package.json /usr/src/app/toltracker
COPY yarn.lock /usr/src/app/toltracker

RUN yarn install

# Copying source files
COPY . /usr/src/app/toltracker

CMD ["yarn", "dev"]

EXPOSE 3000
