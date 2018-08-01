FROM grafana/grafana:latest
RUN curl -L https://github.com/telia-oss/aws-env/releases/download/v0.3.0/aws-env-linux-amd64 > /usr/local/bin/aws-env && \
      cd /usr/local/bin && \
      echo f80addd4adf9aa8d4ecf1b16de402ba4  aws-env | md5sum -c && \
      chmod +x aws-env

COPY entrypoint.sh ./
ENTRYPOINT ["./entrypoint.sh"]