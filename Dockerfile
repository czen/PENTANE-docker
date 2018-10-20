FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y python2.7 python-pip && \
    apt-get -y install python-tornado && \
    pip install numpy && \
    apt-get -y install python-tables && \
	pip install setuptools && \
    pip install rpyc && \
    pip install enum && \
    apt-get -y install python-pandas && \
    apt-get -y install python-zmq && \
    pip install h5json && \
    apt-get install -y python-watchdog && \
	pip install virtualenv && \
	apt-get install -y python-future && \ 
	apt-get install -y build-essential libffi-dev python-dev libportaudio2 && \
	pip install expyriment
	
# TODO: apache2, web2py, config, setup web2py to run from project location