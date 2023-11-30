FROM myominnoo/test:rstudio-4.3.2-mac

LABEL maintainer="Myo Minn Oo <dr.myominnoo@gmail.com>"

RUN install2.r --error \
    --deps TRUE