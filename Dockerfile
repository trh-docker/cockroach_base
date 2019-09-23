FROM quay.io/spivegin/cockroachdb_only

WORKDIR /opt/data/

CMD ["cockroach", "start-single-node", "--insecure", "--listen-addr=0.0.0.0", "--http-addr=0.0.0.0"]

EXPOSE 8080 26257
