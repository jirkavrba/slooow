FROM nginx:alpine

ARG PORT=8080

RUN mkdir -p /var/www/html/media
COPY ./banger.mp4 /var/www/html/media/banger.mp4

COPY ./nginx.conf /etc/nginx/nginx.conf.template
RUN envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
RUN rm /etc/nginx/nginx.conf.template

EXPOSE ${PORT}
