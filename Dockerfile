FROM ubuntu:latest
MAINTAINER David Widen! "david@boxboat.com"

RUN apt-get update -y \
 && apt-get install -y python-setuptools python-dev build-essential python3-pip 

RUN mkdir -p /root/demo/

COPY demo-app.py /root/demo/demo-app.py
COPY requirements.txt /root/demo/requirements.txt
RUN pip install -r /root/demo/requirements.txt

ENTRYPOINT ["python"]
CMD ["/root/demo/demo-app.py"]
