FROM python:3.7.5-slim

COPY entrypoint.sh /entrypoint.sh
COPY executenotebook.py /executenotebook.py
COPY installWhlLibrary.py /installWhlLibrary.py
COPY evaluatenotebookruns.py /evaluatenotebookruns.py


ENTRYPOINT ["/entrypoint.sh"]