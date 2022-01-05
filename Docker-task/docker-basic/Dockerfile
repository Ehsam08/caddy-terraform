FROM scratch
LABEL caddy_version="2.4.6"
COPY workdir /
USER 65534:65534
EXPOSE 3001
WORKDIR /var/www/html
ENTRYPOINT ["/bin/caddy"]
CMD ["run"]
