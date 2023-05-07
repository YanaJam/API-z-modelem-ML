FROM docker.io/library/python:3.11.0-slim-buster

WORKDIR /app

COPY app.py .
COPY requirements.txt .
COPY model.pkl .

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["app.py"]