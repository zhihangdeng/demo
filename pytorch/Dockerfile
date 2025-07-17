ARG BASE=zhihang161013/python:3.9.1-oe2203sp1

ARG VERSION=2.4.1

FROM ${BASE}

ARG VERSION

RUN pip install --no-cache-dir --index-url https://download.pytorch.org/whl/cpu \
    torch==${VERSION}