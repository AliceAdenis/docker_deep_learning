FROM ubuntu:18.04

MAINTAINER Alice Adenis "aadenis@dataswati.com"

RUN apt -y update &&\
    apt -y install python3 python3-pip

RUN python3 -m pip install --upgrade pip

RUN pip3 --no-cache-dir install \
    # jupyter notebook and ipython (Python 2)
    ipython \
    ipykernel \
    jupyter \
    jupyter-kernel-gateway \
    jupyter-tensorboard \
    && python3 -m ipykernel.kernelspec

ADD ./requirements.txt /
RUN python3 -m pip install -r requirements.txt

RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.allow_remote_access = True">> /root/.jupyter/jupyter_notebook_config.py

ENTRYPOINT /bin/bash -c 'jupyter notebook --no-browser --allow-root --ip=* --NotebookApp.password="$PASSWD" "$@"'

ENV PYTHONPATH /usr/local/lib/python-dataswati

WORKDIR /srv/

