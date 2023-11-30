FROM rocker/tidyverse:4.3.2

LABEL maintainer="Myo Minn Oo <dr.myominnoo@gmail.com>"

RUN install2.r --error \
    --deps TRUE \
    mStats