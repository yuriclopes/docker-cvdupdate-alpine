FROM python:alpine

LABEL maintainer="yuriclopes"

RUN apk upgrade -U -a \
    && apk add \
    python3 \
    py3-pip \
    && rm -rf /var/cache/* \
    && mkdir /var/cache/apk


RUN mkdir -p /cvdupdate \
    && adduser -D clamav \
    && chown -R clamav:clamav /cvdupdate

USER clamav
WORKDIR /cvdupdate

RUN pip install --user cvdupdate

RUN /home/clamav/.local/bin/cvd config set --dbdir /cvdupdate \
    && /home/clamav/.local/bin/cvd update

ENTRYPOINT ["/home/clamav/.local/bin/cvd"]
CMD ["serve"]