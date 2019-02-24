FROM python:2.7 as base_pgcli

COPY . /app
RUN cd /app && pip install -e .

CMD pgcli


FROM base_pgcli as with_extra

RUN apt-get update && \
    apt-get -y install less && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD pgcli
