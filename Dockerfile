FROM python:3.10-slim-bullseye

WORKDIR /main

COPY app.py .
COPY model.pkl .
COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 5050

CMD ["python", "app.py"]