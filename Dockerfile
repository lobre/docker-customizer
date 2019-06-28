FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    wget \
    qt5-default \
    qt5-qmake \
    git \
    build-essential \
    fakeroot \
    make \
    binutils \
    g++ \
    python \
    python-dev \
    pyqt5-dev-tools \
    squashfs-tools \
    xorriso \
    x11-xserver-utils \
    xserver-xephyr \
    qemu-kvm \
    dpkg-dev \
    debhelper \
    isolinux \
    python3-dev \
    syslinux \
    initramfs-tools \
    policykit-1 \
    hicolor-icon-theme \
    qttools5-dev-tools && \
    # Clean
    rm -rf /var/lib/apt/lists/*

RUN wget -O /tmp/customizer.deb \
        https://github.com/kamilion/customizer/releases/download/4.2.0-0/customizer_4.2.0-0+20180825_all.deb && \
    dpkg --install /tmp/customizer.deb && \
    rm /tmp/customizer.deb
