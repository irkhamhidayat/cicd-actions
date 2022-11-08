FROM node:alpine
RUN mkdir /apps
WORKDIR /apps

LABEL maintainer="Irkham Hidayat <irkhammuh11@gmail.com>"

RUN addgroup allusers && adduser -S -G allusers username

COPY . /apps

WORKDIR /apps


RUN npm install

# mengganti user ke non-root
USER 1000
CMD ["npm" "start"]
