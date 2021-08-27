FROM python:3.6
RUN mkdir /code
WORKDIR /code
COPY . /code/
RUN set -ex ; pip install -r requirements.txt ; chmod +x /code/docker-entrypoint.sh
EXPOSE 8000
ENTRYPOINT ["/code/docker-entrypoint.sh"]
