FROM python:2.7

RUN apt-get update && \
    apt-get install less

COPY . /app
RUN cd /app && pip install -e .

CMD pgcli
