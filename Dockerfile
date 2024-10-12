FROM nginxinc/nginx-unprivileged:alpine

ARG MIME_FILE=/etc/nginx/mime.types

RUN sed -i '/}/ i' ${MIME_FILE}
RUN sed -i '/}/ i text/plain asc keys;' ${MIME_FILE}

COPY public /usr/share/nginx/html
