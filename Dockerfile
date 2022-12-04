FROM python:3.9

RUN useradd -r -s /bin/false 10001
COPY . /opt/tutorial
RUN chown -R 10001:10001 /opt/tutorial
WORKDIR /opt/tutorial

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN apt update && apt install -y curl

USER 10001

ENTRYPOINT ["docker-entrypoint.sh"]