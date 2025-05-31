FROM python:3.13.1

WORKDIR /service

RUN apt clean && apt-get update

COPY . .

COPY .env.example .env

RUN ls /service

RUN mkdir -p data

# Add additional dependencies below ...
RUN pip install -r /service/requirements.txt

ENTRYPOINT [ "python3.13", "/service/main.py" ]
