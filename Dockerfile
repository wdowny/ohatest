FROM python:3.6
# Latest Python:3 doesn't meet requirements for psycopg2==2.7.6.1 - incompatible
# ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
EXPOSE 8000
ENTRYPOINT ["python"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]