FROM ghcr.io/gohugoio/hugo:v0.167.0 AS build

WORKDIR /app
COPY . .
RUN hugo

FROM nginxinc/nginx-unprivileged:alpine

COPY --from=build /app/public /usr/share/nginx/html
