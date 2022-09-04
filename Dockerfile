FROM python:latest

WORKDIR /home/app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY app.py /home/app

CMD ["python", "app.py"]
