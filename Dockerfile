FROM python:3.6-slim
RUN apt-get update && apt-get install \
    && apt-get -y install curl python3-pip

COPY ./dependencies/requirements.txt /tmp/dependencies/requirements.txt

RUN pip3 install -r /tmp/dependencies/requirements.txt

COPY ./src /proj

WORKDIR /proj

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
