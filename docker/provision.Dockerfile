FROM python:3.6

RUN pip install girder-client

WORKDIR /home

COPY docker/provision provision

COPY docker/data /data

ENTRYPOINT ["/home/provision/provision_entrypoint.sh"]