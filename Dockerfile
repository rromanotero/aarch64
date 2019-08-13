FROM debian:jessie-slim

# Install wget and Bzip2
RUN apt-get update \
    && apt-get -y install wget \
    && apt-get -y install xz-utils

#Install GNU ARM toolchain
RUN wget -O gcc-arm-8.3-2019.03-x86_64-aarch64-elf.tar.xz https://developer.arm.com/-/media/Files/downloads/gnu-a/8.3-2019.03/binrel/gcc-arm-8.3-2019.03-x86_64-aarch64-elf.tar.xz
RUN tar -xf gcc-arm-8.3-2019.03-x86_64-aarch64-elf.tar.xz
RUN rm gcc-arm-8.3-2019.03-x86_64-aarch64-elf.tar.xz \
    && mv gcc-arm-8.3-2019.03-x86_64-aarch64-elf gnu_toolchain
ENV PATH "$PATH:/gnu_toolchain/bin"

#Install make
RUN apt-get -y install build-essential

RUN mkdir src
