#Pull docker image of Python from Docker repo
FROM python:3.10

#To prevent pyhton from creating .pyc files
ENV PYTHONDONTWRITEBYTECODE=1

#Ensures std output are not buffered
ENV PYTHONUNBUFFERED=1

#Mentions the working directory
WORKDIR /app

#Installs dependencies
ADD ./requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt

#Copies the files to workin directory 
COPY . /app

EXPOSE 8000  
# start server  
CMD uvicorn main:app --host 0.0.0.0 --port 8000 --reload 