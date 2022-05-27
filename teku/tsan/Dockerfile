FROM --platform=linux/amd64 ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

#
# Install dependencies.
#
RUN apt update && apt install -y autoconf build-essential file git libasound2-dev \
  libcups2-dev libfontconfig1-dev libx11-dev libxext-dev libxrender-dev \
  libxrandr-dev libxtst-dev libxt-dev openjdk-13-jdk-headless unzip wget zip

#
# Build OpenJDK with Thread Sanitization.
#
RUN git clone --branch tsan https://github.com/openjdk/tsan.git jdk-tsan
WORKDIR jdk-tsan
RUN bash configure
RUN make images

#
# Build Teku.
#
WORKDIR /
RUN git clone https://github.com/ConsenSys/teku.git
WORKDIR teku
RUN ./gradlew installDist

#
# Define environment variables.
#
ENV JAVA_HOME=/jdk-tsan/build/linux-x86_64-server-release/images/jdk

#
# Create a runner script that can redirect all output to a unique filename.
#
COPY execute.sh /execute.sh
RUN chmod +x /execute.sh
ENTRYPOINT ["bash", "/execute.sh"]
