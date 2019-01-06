FROM frolvlad/alpine-python3
LABEL maintainer="@ph055a"

RUN apk add git exiftool
RUN pip3 install bs4 requests
RUN git clone https://github.com/m8r0wn/pymeta
RUN adduser -D pymeta

USER pymeta
ENTRYPOINT ["pymeta/pymeta.py"]
CMD ["python3"]
