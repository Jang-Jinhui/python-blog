FROM python:3

WORKDIR /python-docker
ADD . /python-docker

#RUN apt-get update
#RUN apt-get install -y postgresql postgresql-contrib
#RUN pip3 install -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# ENTRYPOINT ["python"]
# CMD ["app.py"]
#CMD python app.py
CMD ["python", "manage.py", "runserver", "0.0.0.0:9090"]
