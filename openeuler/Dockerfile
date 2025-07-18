ARG BASE=scratch

ARG VERSION=24.03.LTS

FROM openeuler/openeuler:24.03-lts as builder

ARG VERSION
ARG TARGETARCH

ARG VERSION=24.03.LTS

RUN yum install -y wget xz tar

RUN ARCH=$(case "${TARGETARCH}" in \
        "amd64") echo "x86_64" ;; \
        "arm64") echo "aarch64" ;; \
        *) echo "${TARGETARCH}" ;; \
    esac) && \
    FORMATTED_VERSION=$(echo ${VERSION} | sed 's/\.LTS/-LTS/g; s/\.SP/-SP/g') && \
    wget https://repo.openeuler.org/openEuler-${FORMATTED_VERSION}/docker_img/${ARCH}/openEuler-docker.${ARCH}.tar.xz && \
    tar -xf openEuler-docker.${ARCH}.tar.xz --exclude layer.tar

RUN mv *.tar openEuler-docker-rootfs.${TARGETARCH}.tar

RUN xz -z openEuler-docker-rootfs.${TARGETARCH}.tar

RUN mkdir -p output && \
    tar xvf openEuler-docker-rootfs.${TARGETARCH}.tar.xz -C output

FROM ${BASE} AS official

COPY --from=builder /output /

# See more in https://gitee.com/openeuler/cloudnative/issues/I482Q6
RUN ln -sf /usr/share/zoneinfo/UTC /etc/localtime && \
    sed -i "s/TMOUT=300/TMOUT=0/g" /etc/bashrc
CMD ["bash"]