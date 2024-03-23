FROM nginx:alpine

ARG PORT=8080

RUN apk add --no-cache bash
RUN mkdir -p /var/www/html/media
COPY ./banger.mp4 /var/www/html/media/banger.mp4

COPY ./nginx.conf /etc/nginx/nginx.conf.template
COPY ./entrypoint.sh entrypoint.sh

ENTRYPOINT ["bash", "entrypoint.sh"]

