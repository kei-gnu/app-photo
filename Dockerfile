FROM python:3.8

WORKDIR /app
COPY ./requirements.txt /app/
COPY ./setup.sh /app/
COPY ./app /app/
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt
CMD ["./setup.sh"]