FROM debian:jessie

RUN apt-get update \
    && apt-get -y dist-upgrade \
    && apt-get -y install gcc-arm-none-eabi make gcc-arm-none-eabi dfu-util stm32flash

COPY . /app
WORKDIR /app
CMD ["make", "-f", "Makefile.gcc"]
