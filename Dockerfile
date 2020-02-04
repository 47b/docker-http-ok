FROM nginx:stable

RUN apt update

ADD nginx-http.conf /etc/nginx/template/nginx-http.conf
ADD startup.sh startup.sh
RUN chmod -R 755 startup.sh

ENV SERVER_PORT=8080

ENTRYPOINT ["./startup.sh"]
