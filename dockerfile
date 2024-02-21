FROM python:3.10-alpine

WORKDIR /www/python/sanic

COPY ./src/ .

RUN python -m venv venv; source venv/bin/activate

RUN chmod +x start.sh 
CMD ["sh", "start.sh"]

RUN pip install --upgrade pip \
    && pip install -r internal/env/requirements.txt

EXPOSE 9000