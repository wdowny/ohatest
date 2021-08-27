FROM python:3.6
# Latest Python:3 doesn't meet requirements for psycopg2==2.7.6.1 - incompatible
RUN mkdir /code
WORKDIR /code
COPY . /code/
RUN set -ex ; pip install -r requirements.txt ; chmod +x /code/docker-entrypoint.sh
EXPOSE 8000
ENTRYPOINT ["/code/docker-entrypoint.sh"]
