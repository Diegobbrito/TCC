FROM python:3.8-alpine

WORKDIR /app

ENV FLASK_APP=rota_vant.py

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "flask", "run" ]