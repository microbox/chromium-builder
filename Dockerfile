FROM microbox/chromium-builder:base

RUN mkdir /root/chromium
WORKDIR /root/chromium
RUN fetch --nohooks chromium

WORKDIR /root/chromium/src
RUN ./build/install-build-deps.sh --no-prompt
