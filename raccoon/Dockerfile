FROM frolvlad/alpine-python3

LABEL MAINTAINER="ph055a"

# original Dockerfile: https://github.com/evyatarmeged/Raccoon/blob/master/Dockerfile 
RUN apk update; apk upgrade
RUN apk add --no-cache python3-dev gcc musl-dev libxml2-dev libxslt-dev nmap openssl
RUN pip install raccoon-scanner
RUN adduser -D raccoon
USER raccoon
ENTRYPOINT ["raccoon"]
CMD ["--help"]