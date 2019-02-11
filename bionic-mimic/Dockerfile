FROM ubuntu:bionic
RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list
RUN apt update
RUN apt install -y python3

RUN apt install -y python3 sudo wget gnupg2 lsb-release software-properties-common vim less

RUN wget -q -O- 'https://download.ceph.com/keys/release.asc' | apt-key add -
RUN apt-add-repository 'https://mirrors.tuna.tsinghua.edu.cn/ceph/debian-mimic/ bionic main'

RUN apt install -y python3-flask python3-redis
RUN apt install -y python3-rados python3-cephfs python3-ceph-argparse python3-rbd python3-rgw

RUN apt install -y python3-pip

WORKDIR /app
COPY app /app

RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80
ENV NAME World
CMD ["python3", "app.py"]
