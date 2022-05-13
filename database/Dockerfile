FROM postgres:latest
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_USER=sammy
ENV POSTGRES_DB=flask_db
COPY create_fixtures.sql /docker-entrypoint-initdb.d/create_fixtures.sql
