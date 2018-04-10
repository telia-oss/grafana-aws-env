FROM grafana/grafana:latest
RUN apt-get update &&\
    apt-get install -y \
      python-pip \
      jq &&\
    pip install awscli-cwlogs && \
    pip install --upgrade awscli

COPY entrypoint.sh ./

ENTRYPOINT ["./entrypoint.sh"]