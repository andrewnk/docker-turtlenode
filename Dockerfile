FROM andrewnk/alpine-nginx-modsec

WORKDIR /usr/share/nginx/html

RUN apk add --no-cache --virtual .build-deps \
    git

RUN rm -fr index.html 50x.html && \
    git clone https://github.com/brandonlehmann/turtlenode.io.git .

COPY ./config/turtlenode/config.js ./config
COPY ./config/nginx/default.conf /etc/nginx/conf.d

RUN apk del .build-deps

CMD ["nginx", "-g", "daemon off;"]