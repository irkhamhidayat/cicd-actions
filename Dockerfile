FROM node:12.0.1-alpine
RUN mkdir /apps
WORKDIR /apps

LABEL maintainer="Irkham Hidayat <irkhammuh11@gmail.com>"

RUN addgroup allusers && adduser -S -G allusers username

COPY . /apps

FROM gcr.io/distroless/nodejs:12
COPY --from=build /apps /apps

WORKDIR /apps
RUN chown -R $USER:$USER /apps

RUN npm install

# mengganti user ke non-root
USER 1000
CMD ["npm" "start"]
