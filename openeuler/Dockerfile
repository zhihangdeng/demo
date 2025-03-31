FROM openeuler/openeuler:24.03-lts as builder

ARG TARGETARCH

ARG VERSION=24.03.LTS

RUN yum install -y wget xz tar

RUN wget https://repo.openeuler.org/openEuler-$VERSION-LTS/docker_img/$TARGETARCH/openEuler-docker.$TARGETARCH.tar.xz

RUN tar -xf openEuler-docker.$TARGETARCH.tar.xz --exclude layer.tar

RUN mv *.tar openEuler-docker-rootfs.$TARGETARCH.tar

RUN xz -z openEuler-docker-rootfs.$TARGETARCH.tar

RUN mkdir -p output && \
    tar xvf openEuler-docker-rootfs.$TARGETARCH.tar.xz -C output

ARG BASE=scratch

FROM scratch

COPY --from=builder /output /

# See more in https://gitee.com/openeuler/cloudnative/issues/I482Q6
RUN ln -sf /usr/share/zoneinfo/UTC /etc/localtime && \
    sed -i "s/TMOUT=300/TMOUT=0/g" /etc/bashrc
CMD ["bash"]