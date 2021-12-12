FROM python:3.8

WORKDIR /app
COPY ./requirements.txt /app/
COPY ./app /app/
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt
CMD ["python", "setup_database.py"]
CMD ["python", "app.py"]