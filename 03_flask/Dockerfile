FROM python:3.8
RUN apt-get update -y && apt-get install -y net-tools
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD python app.py
