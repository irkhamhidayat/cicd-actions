FROM node:alpine

#ENV USER=test
RUN mkdir /apps
WORKDIR /apps

LABEL maintainer="Irkham Hidayat <irkhammuh11@gmail.com>"

RUN addgroup allusers && adduser -S -G allusers username

COPY . /apps

WORKDIR /apps


RUN npm install -g npm@8.19.3

# mengganti user ke non-root
#USER test
CMD ["npm" "start"]
