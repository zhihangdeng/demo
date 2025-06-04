ARG BASE=zhihang161013/python:3.10.1-oe2403sp1

ARG VERSION=2.5.0

FROM ${BASE}

ARG VERSION

RUN pip install --no-cache-dir --index-url https://download.pytorch.org/whl/cpu \
    torch==${VERSION}