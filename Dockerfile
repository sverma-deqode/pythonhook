FROM python:3.7-alpine
WORKDIR /code
COPY requirements.txt /
RUN pip install -r /requirements.txt
RUN apk --no-cache add musl-dev linux-headers g++ postgresql-dev python3-dev openblas-dev
RUN pip install Flask psycopg2-binary
EXPOSE 80
COPY / /code
EXPOSE 5000
CMD flask run --host=0.0.0.0