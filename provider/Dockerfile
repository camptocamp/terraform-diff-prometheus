FROM python:3

RUN apt update && apt install unzip
ADD terraform-plan-formatter/terraform-plan-formatter.py /usr/local/bin/
COPY ./ /
ENTRYPOINT /docker-entrypoint.sh
CMD ["/provider-loop.sh"]

