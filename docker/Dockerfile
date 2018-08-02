FROM grafana/grafana:5.2.2
RUN curl -L https://github.com/telia-oss/aws-env/releases/download/v0.3.0/aws-env-linux-amd64 > /tmp/aws-env && \
      echo f80addd4adf9aa8d4ecf1b16de402ba4  /tmp/aws-env | md5sum -c && \
      chmod +x /tmp/aws-env

COPY entrypoint.sh ./
ENTRYPOINT ["./entrypoint.sh"]