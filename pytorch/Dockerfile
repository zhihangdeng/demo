ARG BASE=zhihang161013/cann:8.0.0.alpha001-python3.9.1-oe2503

FROM ${BASE}

ARG VERSION=2.4.1

RUN yum install -y python3-pip

RUN pip install --no-cache-dir --index-url https://download.pytorch.org/whl/cpu \
    torch==${VERSION}