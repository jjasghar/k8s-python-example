FROM python:3.7.7-slim

ENV PYTHONUNBUFFERED=1

COPY * /opt/
COPY requirements.txt /opt/
RUN mkdir /opt/templates \
  && mv /opt/index.html /opt/templates/ \
	&& pip install --upgrade pip \
  && pip install --upgrade pipenv\
  && apt-get clean \
  && apt-get update \
  && apt install -y build-essential \
  && pip install --upgrade -r /opt/requirements.txt

USER 1001

EXPOSE 8080
WORKDIR /opt/

CMD ["python", "app.py", "8080"]
