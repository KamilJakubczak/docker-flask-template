FROM python:3.7

WORKDIR app

RUN pip install Flask Flask-RESTful flask-restplus gunicorn psycopg2 Werkzeug==0.16.1

COPY ./gunicorn.sh .

# WORKDIR backend

COPY ./app/backend ./backend/

ENTRYPOINT ["./gunicorn.sh"]
