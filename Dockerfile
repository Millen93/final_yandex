FROM alpine:latest
WORKDIR  /app
RUN adduser -D bingo
RUN mkdir -p /opt/bongo/logs/fcdc2958fa && chown bingo:bingo -R /opt/bongo && mkdir -p /opt/bingo && chown bingo:bingo /opt/bingo
COPY --chown=bingo:bingo ./config.yaml /opt/bingo/config.yaml
COPY --chown=bingo:bingo ./bingo /app
USER bingo
RUN chmod +x /app/bingo
EXPOSE 22549
CMD ["./bingo", "run_server"]
