FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y tzdata && \
    apt-get install -y curl && \
    apt-get install -y python2.7 python-pip && \
    apt-get -y install python-tornado && \
    pip install numpy && \
    apt-get -y install python-tables && \
	pip install setuptools && \
    pip install rpyc && \
    pip install enum && \
    apt-get -y install python-pandas && \
    apt-get -y install python-zmq

#RUN apt-get install python-h5pyd

RUN pip install --upgrade pip && \
    pip install h5json && \
    pip install h5pyd==0.3.3

RUN  apt-get install -y python-watchdog && \
	pip install virtualenv && \
	apt-get install -y python-future && \ 
	apt-get install -y build-essential libffi-dev python-dev libportaudio2 && \
	pip install expyriment && \
	pip install ntplib && \
	pip install websocket && \
	pip install nose && \
	pip install nose-exclude && \
	pip install sphinx && \
	pip install scipy && \
	pip install mock && \
	pip install coverage && \
	apt-get install -y sshpass && \
    apt-get install wget

RUN apt-get update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt update && \
    apt-get install -y python3.7

RUN  curl https://bootstrap.pypa.io/get-pip.py > get-pip.py && \
    python3 get-pip.py && \
    apt-get install -y python3-dev && \
    python3 -m pip install gevent
        
#   TODO: apache2, web2py, config, setup web2py to run from project location
