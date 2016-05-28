FROM quay.io/deis/base:0.2.0

ENV PYTHONDONTWRITEBYTECODE=1
ENV PIP_DISABLE_PIP_VERSION_CHECK=1

RUN apt-get update && \
    apt-get install -y --no-install-recommends python2.7 libpython2.7 gettext build-essential     python-dev python-pip python-setuptools git

RUN pip install --no-cache-dir -r requirements.txt
