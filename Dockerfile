FROM python:3.8
ENV PYTHONUNBUFFERED 1
WORKDIR /Portfolio_oddam_w_dobre_rece

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY / .

RUN mkdir -p /vol/web/
RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/database


# RUN adduser -D -G user
# RUN chown -R user  /vol
# RUN chmod -R 755 /vol/web
# USER user

# CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8080

# EXPOSE 8080

FROM nginx:1.22.0-alpine

WORKDIR /

COPY ./config /
COPY ./src/nxconf.sh /

RUN chmod +x /nxconf.sh && /nxconf.sh

RUN mkdir -p /var/log/nginx /var/cache/nginx /var/run/nginx && \
    chown -R nginx:nginx /var/log/nginx /var/run/nginx /var/cache/nginx /etc/nginx && \
    sed -e 's#/var/run/nginx.pid#/var/run/nginx/nginx.pid#' -e '/user  nginx;/d'  -i /etc/nginx/nginx.conf

RUN echo "server_names_hash_bucket_size 128;" >/etc/nginx/conf.d/_server_name_hash.conf

RUN echo "client_max_body_size 1g;" >/etc/nginx/conf.d/my_proxy.conf
RUN echo -e "map \$http_upgrade \$connection_upgrade {\n default upgrade;\n '' close;\n}" >/etc/nginx/conf.d/_websocks.conf

EXPOSE 80

USER nginx

CMD ["nginx", "-g", "daemon off;"]