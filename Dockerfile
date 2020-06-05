FROM python:3.7.5-slim

COPY entrypoint.sh /entrypoint.sh
COPY executenotebook.sh /executenotebook.sh
COPY installWhlLibrary.sh /installWhlLibrary.sh
COPY evaluatenotebookruns.sh /evaluatenotebookruns.sh


ENTRYPOINT ["/entrypoint.sh"]