ARG BASE=zhihang161013/cann:8.0.RC2.alpha003-python3.9.1-oe2503

FROM ${BASE}

ARG VERSION=2.6.0

RUN yum install -y python3-pip

RUN pip install --no-cache-dir --index-url https://download.pytorch.org/whl/cpu \
    torch==${VERSION}