FROM python:3.7.3

RUN mkdir /mlflow/

RUN pip install mlflow

EXPOSE 5000

CMD mlflow server \
    --file-store /mlflow \
    --host 0.0.0.0