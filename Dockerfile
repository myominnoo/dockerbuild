FROM edgyr/internal-ubuntu-builder:latest AS builder

FROM ubuntu:18.04

COPY --from=builder /usr/local/lib/rstudio-server /usr/local/lib/rstudio-server
COPY --from=builder /usr/local/bin/pandoc /usr/local/bin/pandoc
COPY --from=builder /usr/local/lib/R /usr/local/lib/R
COPY --from=builder /usr/local/bin/R* /usr/local/bin/
COPY --from=builder /usr/local/lib/libRmath.so /usr/local/lib/libRmath.so
COPY --from=builder /usr/local/lib/libRmath.a /usr/local/lib/libRmath.a
COPY --from=builder /usr/local/include /usr/local/include

ENV S6_VERSION=${S6_VERSION:-v1.21.7.0}
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2
ENV PATH=/usr/local/lib/rstudio-server/bin:$PATH

ENV DEBIAN_FRONTEND=noninteractive

COPY userconf.sh /etc/cont-init.d/userconf
COPY disable_auth_rserver.conf /etc/rstudio/disable_auth_rserver.conf
COPY pam-helper.sh /usr/local/lib/rstudio-server/bin/pam-helper

RUN apt-get update \
  && apt-get install -qqy --no-install-recommends \
    cmake \
    curl \
    default-jdk \
    file \
    fonts-roboto \
    fonts-texgyre \
    g++ \
    gdal-bin \
    gfortran \
    ghostscript \
    git \
    gsfonts \
    hugo \
    lbzip2 \
    less \
    libapparmor1 \
    libbz2-*\
    libbz2-dev \
    libclang-dev \
    libcurl4 \
    libcurl4-openssl-dev \
    libedit2 \
    libfftw3-dev \
    libfribidi-dev \
    libgc1c2 \
    libgdal-dev \
    libgeos-dev \
    libgl1-mesa-dev \
    libglpk-dev \
    libglu1-mesa-dev \
    libgmp3-dev \
    libgsl0-dev \
    libharfbuzz-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    libhunspell-dev \
    libicu-dev \
    libjq-dev \
    liblzma-dev \
    libmagick++-dev \
    libnetcdf-dev \
    libobjc4 \
    libopenmpi-dev \
    libpangocairo-* \
    libpcre2-dev \
    libpng16* \
    libpq-dev \
    libpq5 \
    libproj-dev \
    libprotobuf-dev \
    libreadline-dev \
    libreadline7 \
    libsqlite3-dev \
    libssl-dev \
    libssl-dev \
    libudunits2-dev \
    libxml2-dev \
    libxslt1-dev \
    libzmq3-dev \
    lsb-release \
    netcdf-bin \
    postgis \
    procps \
    protobuf-compiler \
    psmisc \
    python-setuptools \
    qpdf \
    software-properties-common \
    sqlite3 \
    sudo \
    texinfo \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    tk-dev \
    unixodbc-dev \
    wget