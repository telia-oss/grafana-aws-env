FROM grafana/grafana:latest
RUN curl -L https://github.com/remind101/ssm-env/releases/download/v0.0.2/ssm-env > /usr/local/bin/ssm-env && \
      cd /usr/local/bin && \
      echo ad0f184da3a6536d0614ce4133ceb23b  ssm-env | md5sum -c && \
      chmod +x ssm-env

COPY entrypoint.sh ./
ENTRYPOINT ["./entrypoint.sh"]