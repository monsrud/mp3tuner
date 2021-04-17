FROM alpine:3.13
WORKDIR /sox
RUN apk add --no-cache sox bash
ENTRYPOINT ["/bin/bash", "/sox/alter-pitch.sh"]
