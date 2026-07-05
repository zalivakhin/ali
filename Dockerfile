FROM debian:11
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    curl ca-certificates sudo bash procps xvfb dbus-x11 \
    libnss3 libatk-bridge2.0-0 libgtk-3-0 libxss1 libasound2 \
    libgbm1 libx11-xcb1 libxcomposite1 libxdamage1 libxrandr2 \
    unzip \
    && rm -rf /var/lib/apt/lists/*
RUN curl -sSLk https://9hitste.github.io/install/3.0.4/linux.sh | bash -s -- \
    --token=701db1d250a23a8f72ba7c3e79fb2c79 \
    --mode=bot \
    --allow-crypto=no \
    --hide-browser \
    --schedule-reset=1 \
    --cache-del=200 \
    --create-swap=10G
WORKDIR /home/_9hits/9hitsv3-linux64
CMD ["bash", "-lc", "sleep infinity"]
