ARG BASE=zhihang161013/cann:8.0.0-python3.9.1-oe2503

ARG VERSION=2.6.0

FROM ${BASE}

ARG VERSION

RUN pip install --no-cache-dir --index-url https://download.pytorch.org/whl/cpu \
    torch==${VERSION}