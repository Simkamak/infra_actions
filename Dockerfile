FROM python:3.8
COPY ./ /app
RUN pip3 install --upgrade pip && pip3 install -r /app/requirements.txt
WORKDIR /app/infra_project/
CMD python manage.py runserver 0:5000