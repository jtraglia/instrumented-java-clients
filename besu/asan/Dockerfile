FROM --platform=linux/amd64 ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

#
# Install dependencies.
#
RUN apt update && apt install -y autoconf build-essential file git libasound2-dev \
      libcups2-dev libfontconfig1-dev libx11-dev libxext-dev libxrender-dev \
      libxrandr-dev libxtst-dev libxt-dev openjdk-18-jdk-headless unzip wget zip

#
# Build OpenJDK with Address Sanitization.
#
RUN git clone --depth 1 --branch jdk-19+22 https://github.com/openjdk/jdk.git
WORKDIR jdk
RUN bash configure --enable-asan
RUN make images

#
# Build Besu.
#
WORKDIR /
RUN git clone https://github.com/hyperledger/besu.git
WORKDIR besu
RUN ./gradlew installDist

#
# Define environment variables.
#
ENV JAVA_HOME=/jdk/build/linux-x86_64-server-release/images/jdk
ENV ASAN_OPTIONS=detect_leaks=0

#
# Create a runner script that can redirect all output to a unique filename.
#
COPY execute.sh /execute.sh
RUN chmod +x /execute.sh
ENTRYPOINT ["bash", "/execute.sh"]
