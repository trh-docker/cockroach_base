FROM quay.io/spivegin/cockroachdb_only as cockroach-img

FROM quay.io/spivegin/tlmbasedebian
WORKDIR /opt/data/
COPY --from=cockroach-img /opt/bin/cockroach /opt/bin/cockroach
RUN chmod +x /opt/bin/cockroach && ln -s /opt/bin/cockroach /bin/cockroach
CMD ["cockroach", "start-single-node", "--insecure", "--listen-addr=0.0.0.0", "--http-addr=0.0.0.0"]

EXPOSE 8080 26257
