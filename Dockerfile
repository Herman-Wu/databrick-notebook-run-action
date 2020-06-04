FROM python:3.7-alpine

copy entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]