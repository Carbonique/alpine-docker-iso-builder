FROM alpine:base-builder
RUN mkdir /home/build/wd
COPY mkimg.k3s.sh /home/build/aports/scripts/

RUN sh ~/aports/scripts/mkimage.sh --tag v3.17 \
    --outdir ~/iso \
    --arch x86_64 \
    --workdir /home/build/wd \
    --repository http://dl-cdn.alpinelinux.org/alpine/v3.17/main \
    --repository http://dl-cdn.alpinelinux.org/alpine/v3.17/community \
    --profile k3s
