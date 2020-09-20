FROM pypy:2

RUN apt-get update && \
    apt-get install -y tzdata && \
    apt-get install -y curl
	
RUN	apt-get install -y libhdf5-serial-dev  libsdl2-dev

RUN pip install tables tornado numpy rpyc pandas zmq watchdog future ntplib configparser python-dotenv mock nose nose-exclude XlsxWriter

RUN apt-get install -y gfortran libopenblas-dev liblapack-dev
RUN apt-get install -y libportaudio2

RUN pip install scipy matplotlib mne
RUN pip install enum virtualenv sphinx
RUN pip install h5pyd h5json
    
# RUN pip install expyriment 
