FROM docker:latest

WORKDIR /usr/src

COPY magic.sh .
RUN chmod a+rx ./magic.sh

# For stupid windows/unix differences
RUN sed -i 's/\r//' ./magic.sh

ENTRYPOINT ["./magic.sh"]
